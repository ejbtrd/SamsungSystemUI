.class public Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.super Lcom/android/systemui/statusbar/phone/PanelViewController;
.source "NotificationPanelViewController.java"

# interfaces
.implements Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;
.implements Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;
.implements Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;
.implements Lcom/android/systemui/qs/bar/QSMediaPlayerBar$MediaPanelVisibilityListener;
.implements Lcom/android/systemui/util/PanelScreenShotLogger$LogProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnAttachStateChangeListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$SettingsChangeObserver;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$DynamicPrivacyControlListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;,
        Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;
    }
.end annotation


# static fields
.field private static final EMPTY_RECT:Landroid/graphics/Rect;

.field private static final KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;


# instance fields
.field private final KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

.field private mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

.field private final mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private final mActivityManager:Landroid/app/ActivityManager;

.field private mAffordanceHasPreview:Z

.field private mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

.field private mAllowExpandForSmallExpansion:Z

.field private mAmbientIndicationBottomPadding:I

.field private final mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

.field private final mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

.field private mAnimateNextNotificationBounds:Z

.field private mAnimateNextPositionUpdate:Z

.field private mAnimatingQS:Z

.field private final mAuthController:Lcom/android/systemui/biometrics/AuthController;

.field private mBarController:Lcom/android/systemui/qs/bar/BarController;

.field private mBarState:I

.field private mBigClockContainer:Landroid/view/ViewGroup;

.field private final mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field private mBlockTouches:Z

.field private mBlockingExpansionForCurrentTouch:Z

.field public mBlurredCapture:Landroid/view/View;

.field mBlurredCaptureAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

.field private mBlurredCaptureStorage:Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;

.field private mBottomAreaShadeAlpha:F

.field private final mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

.field private final mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

.field private mClosingWithAlphaFadeOut:Z

.field private mCollapsedOnDown:Z

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

.field private mConflictingQsExpansionGesture:Z

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mControlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

.field private final mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

.field private mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

.field private mDarkIconSize:I

.field private mDelayShowingKeyguardStatusBar:Z

.field private mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field private mDisplayId:I

.field private mDisplayRightInset:I

.field private mDisplayTopInset:I

.field private mDistanceForQSFullShadeTransition:I

.field private mDownX:F

.field private mDownY:F

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozing:Z

.field private mDozingOnDown:Z

.field private final mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

.field private mExpandQSAtOnceController:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;

.field private mExpandingFromHeadsUp:Z

.field private mExpectingSynthesizedDown:Z

.field private final mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

.field private final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field private final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field private final mFalsingTapListener:Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;

.field private final mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

.field private mFingerprintGuidePopup:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

.field private mFirstBypassAttempt:Z

.field private mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

.field private final mFlingAnimationUtilsBuilder:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

.field private final mFragmentService:Lcom/android/systemui/fragments/FragmentService;

.field private mFullScreenModeEnabled:Z

.field private mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

.field private mHeadsUpAnimatingAway:Z

.field private mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

.field private mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

.field private mHeadsUpInset:I

.field private mHeadsUpPinnedMode:Z

.field private mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

.field private final mHeightListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

.field private mHideIconsDuringLaunchAnimation:Z

.field private mHomeLauncherTouch:Z

.field private mIndicationBottomPadding:I

.field private mInitialHeightOnTouch:F

.field private mInitialTouchX:F

.field private mInitialTouchY:F

.field private mInterpolatedDarkAmount:F

.field private mIsClockViewOnTouchDown:Z

.field private mIsExpanding:Z

.field private mIsFaceWidgetOnTouchDown:Z

.field private mIsFullWidth:Z

.field private mIsGestureNavigation:Z

.field private mIsKeyguardSupportLandscapePhone:Z

.field private mIsLaunchTransitionFinished:Z

.field private mIsLaunchTransitionRunning:Z

.field private mIsPanelCollapseOnQQS:Z

.field private mIsPulseExpansionResetAnimator:Z

.field private mIsQsTranslationResetAnimator:Z

.field private mKeyguarStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

.field private final mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

.field private final mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private mKeyguardHeadsUpShowingAmount:F

.field private mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

.field private mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

.field private mKeyguardOnlyContentAlpha:F

.field private mKeyguardPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

.field private final mKeyguardQsUserSwitchComponentFactory:Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

.field private mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

.field private mKeyguardQsUserSwitchEnabled:Z

.field private mKeyguardShowing:Z

.field private final mKeyguardStatusAreaClipBounds:Landroid/graphics/Rect;

.field private mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

.field private mKeyguardStatusBarAnimateAlpha:F

.field private final mKeyguardStatusBarViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;

.field private final mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

.field private mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

.field private final mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

.field final mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mKeyguardUserSwitcherComponentFactory:Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

.field private mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

.field private mKeyguardUserSwitcherEnabled:Z

.field private mLastCameraLaunchSource:Ljava/lang/String;

.field private mLastDisplayTopInset:I

.field private mLastEventSynthesizedDown:Z

.field private mLastNavigationBarBottomHeight:I

.field private mLastOrientation:I

.field private mLastOverscroll:F

.field private mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

.field private mLaunchingAffordance:Z

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mLinearDarkAmount:F

.field private mListenForHeadsUp:Z

.field private final mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

.field private mLockStarEnabled:Z

.field private mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

.field private mLockscreenNotificationIconsOnlyComponentBuilder:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;

.field private mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

.field private final mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

.field private mLockscreenNotificationQSPadding:I

.field private final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

.field private mMaxAllowedKeyguardNotifications:I

.field private final mMaxKeyguardNotifications:I

.field private mMaxOverscrollAmountForPulse:I

.field private final mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

.field private mMediaDraggedHeight:F

.field private final mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

.field private mMediaPlayerExpanding:Z

.field private mMediaPlayerScrolling:Z

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

.field mNavBarKeyboardButtonShowing:Z

.field private mNavigationBarBottomHeight:I

.field private mNotiCardCount:I

.field private mNotificationBoundsAnimationDelay:J

.field private mNotificationBoundsAnimationDuration:J

.field private mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

.field private final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field private mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

.field private final mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field private mNotificationsHeaderCollideDistance:I

.field private mOldLayoutDirection:I

.field private final mOnClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

.field private final mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;

.field private final mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

.field private final mOnHeightChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

.field private final mOnOverscrollTopChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;

.field private mOnlyAffordanceInThisMotion:Z

.field private mOverStretchAmount:F

.field private mPanelAlpha:I

.field private final mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

.field private mPanelAlphaEndAction:Ljava/lang/Runnable;

.field private final mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private final mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private mPanelCarrierLabelManager:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

.field protected mPanelCarrierLabelParent:Landroid/view/ViewGroup;

.field private mPanelExpanded:Z

.field private mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

.field private mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

.field private mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private mPluginLockStarContainer:Landroid/view/View;

.field private mPluginLockViewMode:I

.field private mPositionMinSideMargin:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mPreviewContainer:Landroid/view/ViewGroup;

.field private final mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

.field private final mPrivacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

.field private final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field private mPulsing:Z

.field private final mPunchHoleVICallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

.field private mQSAnimatingHiddenFromCollapsed:Z

.field private final mQSDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

.field mQs:Lcom/android/systemui/plugins/qs/QS;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mQsAnimatorExpand:Z

.field private mQsClipBottom:I

.field private mQsClipTop:I

.field private mQsClippingAnimation:Landroid/animation/ValueAnimator;

.field private final mQsClippingAnimationEndBounds:Landroid/graphics/Rect;

.field private mQsExpandImmediate:Z

.field private mQsExpanded:Z

.field private mQsExpandedOnTouchDown:Z

.field private mQsExpandedWhenExpandingStarted:Z

.field private mQsExpansionAnimator:Landroid/animation/ValueAnimator;

.field private mQsExpansionEnabledAmbient:Z

.field private mQsExpansionEnabledPolicy:Z

.field private mQsExpansionFromOverscroll:Z

.field private mQsExpansionHeight:F

.field private mQsFalsingThreshold:I

.field private mQsFrame:Landroid/widget/FrameLayout;

.field protected mQsFullyExpanded:Z

.field private final mQsInterceptRegion:Landroid/graphics/Region;

.field private mQsMaxExpansionHeight:I

.field private mQsMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

.field private mQsMinExpansionHeight:I

.field private mQsPeekHeight:I

.field private mQsScrimEnabled:Z

.field private mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

.field private mQsStatusEventLog:Lcom/android/systemui/util/QsStatusEventLog;

.field private mQsTouchAboveFalsingThreshold:Z

.field private mQsTracking:Z

.field private mQsTranslationForFullShadeTransition:F

.field private mQsVelocityTracker:Landroid/view/VelocityTracker;

.field private mQsVisible:Z

.field private final mQuickAccessWalletController:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

.field private mQuickQsOffsetHeight:F

.field private final mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private mScreenCornerRadius:I

.field private final mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

.field private mScrimCornerRadius:I

.field public final mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

.field private mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

.field private final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field private final mSettingsChangeObserver:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$SettingsChangeObserver;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShelfHeight:I

.field private mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

.field private mShortcut:I

.field private mShouldUseSplitNotificationShade:Z

.field private mShowIconsWhenExpanded:Z

.field private mShowingKeyguardHeadsUp:Z

.field private mSplitShadeNotificationsTopPadding:I

.field private mStackScrollerMeasuringPass:I

.field private mStackScrollerOverscrolling:Z

.field private final mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private mStatusBarHeaderHeightKeyguard:I

.field private mStatusBarHeight:I

.field private final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private mStatusBarMinHeight:I

.field final mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

.field private final mSystemUIWidgetCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

.field private final mTapAgainViewController:Lcom/android/systemui/statusbar/phone/TapAgainViewController;

.field private mThemeResId:I

.field private mTouchIsClick:Z

.field private mTrackingHeadsUpListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;>;"
        }
    .end annotation
.end field

.field private mTrackingPointer:I

.field private mTransitionToFullShadeQSPosition:I

.field private mTransitioningToFullShadeProgress:F

.field private mTwoFingerQsExpandPossible:Z

.field private final mUiExecutor:Ljava/util/concurrent/Executor;

.field private mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field private mUpdateHorizontalPositionRunnable:Ljava/lang/Runnable;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mUserManager:Landroid/os/UserManager;

.field private mUserSetupComplete:Z

.field private mVerticalTranslationListener:Ljava/lang/Runnable;

.field private final mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

.field private final mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field private final mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;


# direct methods
.method public static synthetic $r8$lambda$0qsCCqT7PA5CVmZh2f84WSC1N54(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$onFinishInflate$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4YGMilNfskTpGgutzBiuCaqTjx8(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$5(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$59Vp6zCFo7CrpFyQrRvLkNtDYos(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onNotificationScrolled(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CIEHUoihUaG327M4TeUiEVfl2EM(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Float;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Uct-XdykZ119SJmNRmDzcBiZ1Rs(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$XCDDR6ArlUzy08pCx0r2y365uFg(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Float;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$dxznFRtJ16hs8mFYnfEIIsaP6OY(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getFaceWidgetAlpha()F

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$flTy8ZA0fw1Jd_6KoyzNzfLHgc8(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$10(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$jNN0eCmTJlfdR9GPevxhCIHr4oM(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onStackYChanged(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$jfMVIySFqsCLsMwGMA3qedbEGO8(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;IIIIZLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$applyQSClippingBounds$8(IIIIZLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kayjlS5TR2QzlIDsaKEBvE-8UQs(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/util/Property;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$3(Landroid/util/Property;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qLMq6QteYhlrGJofm1Y_1eJw5U4(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$flingSettings$9(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tRhqXt9S5VlR73HOn-t2a2W9KCs(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$zo98q1KVSzi_TN9IAUt1lARnBWw(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->lambda$new$4()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 340
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    .line 341
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 351
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    .line 352
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Landroid/content/res/Resources;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/internal/util/LatencyTracker;Landroid/os/PowerManager;Landroid/view/accessibility/AccessibilityManager;ILcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/internal/logging/MetricsLogger;Landroid/app/ActivityManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Ljavax/inject/Provider;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;Lcom/android/systemui/media/MediaHierarchyManager;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/qs/QSDetailDisplayer;Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/phone/ScrimController;Landroid/os/UserManager;Lcom/android/systemui/media/MediaDataManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/notification/stack/AmbientState;Lcom/android/keyguard/SecLockIconViewController;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/media/KeyguardMediaController;Lcom/android/systemui/statusbar/events/PrivacyDotViewController;Lcom/android/systemui/statusbar/phone/TapAgainViewController;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/fragments/FragmentService;Landroid/content/ContentResolver;Lcom/android/systemui/wallet/controller/QuickAccessWalletController;Lcom/android/systemui/screenrecord/RecordingController;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/controls/dagger/ControlsComponent;Lcom/android/systemui/qs/logging/PanelLogger;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;Lcom/android/systemui/pluginlock/PluginLockMediator;Lcom/android/systemui/pluginlock/PluginLockData;Lcom/android/keyguard/EmergencyButtonController$Factory;Lcom/android/systemui/statusbar/LockscreenNotificationManager;Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;Lcom/android/systemui/statusbar/NotificationShelfManager;Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;Lcom/android/systemui/subscreen/SubScreenManager;Lcom/android/systemui/cover/CoverScreenManager;Lcom/android/systemui/privacy/PrivacyDialogController;Lcom/android/systemui/util/QsStatusEventLog;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/phone/NotificationPanelView;",
            "Landroid/content/res/Resources;",
            "Landroid/os/Handler;",
            "Landroid/view/LayoutInflater;",
            "Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;",
            "Lcom/android/systemui/statusbar/PulseExpansionHandler;",
            "Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;",
            "Lcom/android/systemui/statusbar/phone/KeyguardBypassController;",
            "Lcom/android/systemui/plugins/FalsingManager;",
            "Lcom/android/systemui/classifier/FalsingCollector;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Lcom/android/systemui/doze/DozeLog;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/VibratorHelper;",
            "Lcom/android/internal/util/LatencyTracker;",
            "Landroid/os/PowerManager;",
            "Landroid/view/accessibility/AccessibilityManager;",
            "I",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/internal/logging/MetricsLogger;",
            "Landroid/app/ActivityManager;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Ljavax/inject/Provider<",
            "Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;",
            "Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;",
            "Lcom/android/systemui/media/MediaHierarchyManager;",
            "Lcom/android/systemui/statusbar/phone/BiometricUnlockController;",
            "Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;",
            "Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;",
            "Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;",
            "Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;",
            "Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;",
            "Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;",
            "Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;",
            "Lcom/android/systemui/qs/QSDetailDisplayer;",
            "Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;",
            "Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;",
            "Lcom/android/systemui/biometrics/AuthController;",
            "Lcom/android/systemui/statusbar/phone/ScrimController;",
            "Landroid/os/UserManager;",
            "Lcom/android/systemui/media/MediaDataManager;",
            "Lcom/android/systemui/statusbar/NotificationShadeDepthController;",
            "Lcom/android/systemui/statusbar/notification/stack/AmbientState;",
            "Lcom/android/keyguard/SecLockIconViewController;",
            "Lcom/android/systemui/statusbar/FeatureFlags;",
            "Lcom/android/systemui/media/KeyguardMediaController;",
            "Lcom/android/systemui/statusbar/events/PrivacyDotViewController;",
            "Lcom/android/systemui/statusbar/phone/TapAgainViewController;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/fragments/FragmentService;",
            "Landroid/content/ContentResolver;",
            "Lcom/android/systemui/wallet/controller/QuickAccessWalletController;",
            "Lcom/android/systemui/screenrecord/RecordingController;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/android/systemui/util/settings/SecureSettings;",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            "Lcom/android/systemui/statusbar/NotificationRemoteInputManager;",
            "Lcom/android/systemui/controls/dagger/ControlsComponent;",
            "Lcom/android/systemui/qs/logging/PanelLogger;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;",
            "Lcom/android/systemui/pluginlock/PluginLockMediator;",
            "Lcom/android/systemui/pluginlock/PluginLockData;",
            "Lcom/android/keyguard/EmergencyButtonController$Factory;",
            "Lcom/android/systemui/statusbar/LockscreenNotificationManager;",
            "Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;",
            "Lcom/android/systemui/statusbar/NotificationShelfManager;",
            "Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;",
            "Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;",
            "Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;",
            "Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;",
            "Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;",
            "Lcom/android/systemui/subscreen/SubScreenManager;",
            "Lcom/android/systemui/cover/CoverScreenManager;",
            "Lcom/android/systemui/privacy/PrivacyDialogController;",
            "Lcom/android/systemui/util/QsStatusEventLog;",
            ")V"
        }
    .end annotation

    move-object/from16 v12, p0

    move-object/from16 v13, p1

    move-object/from16 v14, p6

    move-object/from16 v15, p38

    move-object/from16 v11, p43

    move-object/from16 v10, p49

    move-object/from16 v9, p63

    move-object/from16 v8, p65

    move-object/from16 v7, p66

    move-object/from16 v6, p71

    move-object/from16 v5, p74

    .line 977
    move-object/from16 v16, p14

    check-cast v16, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 979
    invoke-interface/range {p27 .. p27}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p9

    move-object/from16 v3, p15

    move-object/from16 v4, p13

    move-object/from16 v5, v16

    move-object/from16 v6, p18

    move-object/from16 v7, p32

    move-object/from16 v8, p19

    move-object/from16 v9, v17

    move-object v15, v10

    move-object/from16 v10, p28

    move-object/from16 v11, p47

    .line 977
    invoke-direct/range {v0 .. v11}, Lcom/android/systemui/statusbar/phone/PanelViewController;-><init>(Lcom/android/systemui/statusbar/phone/PanelView;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/VibratorHelper;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/internal/util/LatencyTracker;Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;Lcom/android/systemui/statusbar/notification/stack/AmbientState;)V

    .line 295
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

    .line 296
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

    .line 297
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnOverscrollTopChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;

    .line 300
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    .line 303
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;

    .line 306
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

    .line 309
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeightListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

    .line 310
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

    .line 313
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

    .line 343
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda8;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    new-instance v4, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda14;

    invoke-direct {v4, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    sget v5, Lcom/android/systemui/R$id;->keyguard_hun_animator_tag:I

    sget v6, Lcom/android/systemui/R$id;->keyguard_hun_animator_end_tag:I

    sget v7, Lcom/android/systemui/R$id;->keyguard_hun_animator_start_tag:I

    const-string v2, "KEYGUARD_HEADS_UP_SHOWING_AMOUNT"

    invoke-static/range {v2 .. v7}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v0

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 353
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;

    invoke-direct {v0, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const/4 v0, 0x0

    .line 434
    iput-boolean v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsFaceWidgetOnTouchDown:Z

    .line 436
    iput-boolean v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFullScreenModeEnabled:Z

    const/4 v2, 0x1

    .line 480
    iput-boolean v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabledPolicy:Z

    .line 481
    iput-boolean v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabledAmbient:Z

    .line 490
    iput v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayTopInset:I

    .line 491
    iput v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayRightInset:I

    .line 498
    new-instance v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-direct {v3}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;-><init>()V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    .line 520
    iput-boolean v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsScrimEnabled:Z

    const/high16 v3, 0x3f800000    # 1.0f

    .line 524
    iput v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBarAnimateAlpha:F

    const/4 v4, -0x1

    .line 531
    iput v4, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    const-string v5, "lockscreen_affordance"

    .line 538
    iput-object v5, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 540
    new-instance v5, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda6;

    invoke-direct {v5, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v5, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    .line 570
    new-instance v5, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    invoke-direct {v5}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;-><init>()V

    iput-object v5, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    .line 573
    iput-boolean v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHideIconsDuringLaunchAnimation:Z

    .line 575
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    .line 585
    sget-object v7, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda9;->INSTANCE:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda9;

    sget-object v8, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda15;->INSTANCE:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda15;

    sget v9, Lcom/android/systemui/R$id;->panel_alpha_animator_tag:I

    sget v10, Lcom/android/systemui/R$id;->panel_alpha_animator_start_tag:I

    sget v11, Lcom/android/systemui/R$id;->panel_alpha_animator_end_tag:I

    const-string/jumbo v6, "panelAlpha"

    invoke-static/range {v6 .. v11}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->from(Ljava/lang/String;Ljava/util/function/BiConsumer;Ljava/util/function/Function;III)Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    move-result-object v5

    iput-object v5, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    .line 590
    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v7, 0x96

    .line 591
    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v6

    .line 592
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v7

    sget-object v8, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 591
    invoke-virtual {v6, v7, v8}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v6

    iput-object v6, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 593
    new-instance v6, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v6}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v9, 0xc8

    .line 594
    invoke-virtual {v6, v9, v10}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v6

    new-instance v7, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda11;

    invoke-direct {v7, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setAnimationEndAction(Ljava/util/function/Consumer;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v6

    .line 599
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->getProperty()Landroid/util/Property;

    move-result-object v5

    sget-object v7, Lcom/android/systemui/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 598
    invoke-virtual {v6, v5, v7}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setCustomInterpolator(Landroid/util/Property;Landroid/view/animation/Interpolator;)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v5

    iput-object v5, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    const/4 v5, 0x0

    .line 621
    iput v5, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardHeadsUpShowingAmount:F

    .line 697
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimationEndBounds:Landroid/graphics/Rect;

    .line 702
    iput-object v1, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimation:Landroid/animation/ValueAnimator;

    .line 713
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    iput-object v6, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusAreaClipBounds:Landroid/graphics/Rect;

    .line 714
    new-instance v6, Landroid/graphics/Region;

    invoke-direct {v6}, Landroid/graphics/Region;-><init>()V

    iput-object v6, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsInterceptRegion:Landroid/graphics/Region;

    .line 719
    iput v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardOnlyContentAlpha:F

    .line 742
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$2;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    .line 762
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$3;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingTapListener:Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;

    .line 786
    iput-boolean v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsKeyguardSupportLandscapePhone:Z

    .line 793
    iput v4, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotiCardCount:I

    .line 822
    iput-boolean v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsClockViewOnTouchDown:Z

    .line 847
    iput-boolean v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaPlayerExpanding:Z

    .line 850
    iput-boolean v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaPlayerScrolling:Z

    .line 853
    iput v5, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaDraggedHeight:F

    .line 864
    iput v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastDisplayTopInset:I

    .line 866
    iput v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastNavigationBarBottomHeight:I

    .line 3319
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$12;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 3352
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$14;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$14;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 3372
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$15;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 5194
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda4;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

    .line 5202
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$20;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    .line 7386
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$22;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$22;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSystemUIWidgetCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    .line 7467
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$23;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$23;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPunchHoleVICallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    .line 981
    iput-object v13, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v3, p18

    .line 982
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    move-object/from16 v3, p50

    .line 983
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    move-object/from16 v3, p51

    .line 984
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPrivacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    move-object/from16 v3, p56

    .line 985
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQuickAccessWalletController:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    move-object/from16 v3, p62

    .line 986
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mControlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    move-object/from16 v3, p24

    .line 987
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    move-object/from16 v3, p25

    .line 988
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mActivityManager:Landroid/app/ActivityManager;

    move-object/from16 v3, p26

    .line 989
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object/from16 v3, p27

    .line 990
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtilsBuilder:Ljavax/inject/Provider;

    move-object/from16 v3, p30

    .line 991
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    move-object/from16 v3, p32

    .line 992
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object/from16 v3, p33

    .line 993
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-object/from16 v3, p40

    .line 994
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    move-object/from16 v3, p41

    .line 995
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    move-object/from16 v3, p34

    .line 996
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    move-object/from16 v3, p37

    .line 997
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBarViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;

    move-object/from16 v3, p46

    .line 998
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 999
    iput-object v15, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    move-object/from16 v3, p55

    .line 1000
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mContentResolver:Landroid/content/ContentResolver;

    move-object/from16 v3, p35

    .line 1001
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchComponentFactory:Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

    move-object/from16 v3, p36

    .line 1002
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherComponentFactory:Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

    move-object/from16 v3, p39

    .line 1003
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQSDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    move-object/from16 v3, p54

    .line 1004
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    .line 1005
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$SettingsChangeObserver;

    move-object/from16 v4, p3

    invoke-direct {v3, v12, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$SettingsChangeObserver;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/os/Handler;)V

    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSettingsChangeObserver:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$SettingsChangeObserver;

    .line 1006
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    .line 1007
    invoke-static {v15, v3}, Lcom/android/systemui/util/Utils;->shouldUseSplitNotificationShade(Lcom/android/systemui/statusbar/FeatureFlags;Landroid/content/res/Resources;)Z

    move-result v3

    iput-boolean v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    .line 1008
    invoke-virtual {v13, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    move-object/from16 v3, p4

    .line 1009
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    move-object/from16 v3, p9

    .line 1010
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    move-object/from16 v3, p10

    .line 1011
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v3, p20

    .line 1012
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPowerManager:Landroid/os/PowerManager;

    move-object/from16 v3, p5

    .line 1013
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-object/from16 v3, p21

    .line 1014
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 1015
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    const/16 v3, 0xff

    .line 1016
    invoke-virtual {v12, v3, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setPanelAlpha(IZ)V

    move-object/from16 v3, p17

    .line 1017
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    move-object/from16 v3, p57

    .line 1018
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

    move/from16 v3, p22

    .line 1019
    iput v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayId:I

    .line 1020
    iput-object v14, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-object/from16 v3, p16

    .line 1021
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v3, p31

    .line 1022
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    move-object/from16 v3, p43

    .line 1023
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    .line 1024
    iget-boolean v4, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    xor-int/2addr v2, v4

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setClipsQsScrim(Z)V

    move-object/from16 v2, p44

    .line 1025
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUserManager:Landroid/os/UserManager;

    move-object/from16 v2, p45

    .line 1026
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    move-object/from16 v2, p52

    .line 1027
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTapAgainViewController:Lcom/android/systemui/statusbar/phone/TapAgainViewController;

    move-object/from16 v2, p58

    .line 1028
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUiExecutor:Ljava/util/concurrent/Executor;

    move-object/from16 v2, p59

    .line 1029
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    move-object/from16 v2, p79

    .line 1031
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    .line 1033
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda7;

    invoke-direct {v2, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v14, v2}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setPulseExpandAbortListener(Ljava/lang/Runnable;)V

    .line 1038
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I

    move-result v2

    iput v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mThemeResId:I

    move-object/from16 v2, p8

    .line 1039
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object/from16 v3, p23

    .line 1040
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1041
    invoke-virtual/range {p8 .. p8}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v2

    iput-boolean v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFirstBypassAttempt:Z

    .line 1043
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$4;

    invoke-direct {v2, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$4;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    move-object/from16 v3, p38

    .line 1053
    iput-object v3, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 1054
    invoke-virtual {v3, v12}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setNotificationPanelController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 1055
    iget-object v3, v12, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v3, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 1057
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$DynamicPrivacyControlListener;

    invoke-direct {v2, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$DynamicPrivacyControlListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    move-object/from16 v3, p7

    .line 1059
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;->addListener(Lcom/android/systemui/statusbar/notification/DynamicPrivacyController$Listener;)V

    const/4 v2, 0x2

    new-array v2, v2, [F

    .line 1061
    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 1062
    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda0;

    invoke-direct {v3, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v3, 0xa0

    .line 1066
    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1067
    invoke-virtual {v2, v8}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    move-object/from16 v2, p11

    .line 1068
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v2, p12

    .line 1069
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-object/from16 v2, p29

    .line 1070
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    move-object/from16 v2, p42

    .line 1071
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    move-object/from16 v2, p48

    .line 1072
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    move-object/from16 v2, p60

    .line 1073
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    move-object/from16 v2, p61

    .line 1074
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 1076
    new-instance v2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda3;

    invoke-direct {v2, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    move-object/from16 v3, p53

    invoke-virtual {v3, v2}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v2

    .line 1078
    invoke-static {v2}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result v2

    iput-boolean v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsGestureNavigation:Z

    move-object/from16 v2, p64

    .line 1079
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    move-object/from16 v2, p69

    .line 1080
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    move-object/from16 v2, p70

    .line 1081
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyComponentBuilder:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;

    move-object/from16 v2, p68

    .line 1082
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

    move-object/from16 v2, p75

    .line 1085
    iput-object v2, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandQSAtOnceController:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;

    .line 1089
    sget-object v2, Lcom/android/systemui/util/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/util/PanelScreenShotLogger;

    sget-object v3, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3, v12}, Lcom/android/systemui/util/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/util/PanelScreenShotLogger$LogProvider;)V

    .line 1092
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 1093
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnAttachStateChangeListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnAttachStateChangeListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    .line 1094
    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 1095
    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1096
    invoke-virtual {v0, v13}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnAttachStateChangeListener;->onViewAttachedToWindow(Landroid/view/View;)V

    .line 1099
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnApplyWindowInsetsListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    invoke-virtual {v13, v0}, Landroid/widget/FrameLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 1105
    sget v0, Lcom/android/systemui/R$integer;->keyguard_max_notification_count:I

    move-object/from16 v1, p2

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMaxKeyguardNotifications:I

    .line 1106
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateUserSwitcherFlags()V

    move-object/from16 v0, p67

    .line 1109
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    move-object/from16 v0, p72

    .line 1113
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 1114
    const-class v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    if-eqz v0, :cond_1

    .line 1116
    invoke-virtual {v0, v12}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->setNPVController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 1122
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v0, :cond_2

    move-object/from16 v0, p73

    .line 1123
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 1126
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onFinishInflate()V

    .line 1129
    new-instance v0, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    iget-object v1, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {v0, v12, v1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;-><init>(Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager$PanelCarrierLabelParent;Lcom/android/systemui/util/SettingsHelper;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelCarrierLabelManager:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    move-object/from16 v0, p65

    .line 1133
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    .line 1134
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$5;

    invoke-direct {v1, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v12, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->initialize(Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;)V

    move-object/from16 v0, p63

    .line 1164
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPanelLogger:Lcom/android/systemui/qs/logging/PanelLogger;

    .line 1165
    invoke-virtual {v13, v0}, Lcom/android/systemui/statusbar/phone/PanelView;->setPanelLogger(Lcom/android/systemui/qs/logging/PanelLogger;)V

    move-object/from16 v0, p66

    .line 1169
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 1170
    invoke-interface {v0, v12}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    move-object/from16 v0, p71

    .line 1174
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    .line 1175
    invoke-virtual {v0, v12}, Lcom/android/systemui/statusbar/NotificationShelfManager;->setNotificationPanelController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    move-object/from16 v0, p74

    .line 1179
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    .line 1180
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$6;

    invoke-direct {v1, v12}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$6;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v12, v1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->initialize(Lcom/android/systemui/keyguard/animator/KeyguardTouchViewInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;)V

    move-object/from16 v0, p80

    .line 1194
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsStatusEventLog:Lcom/android/systemui/util/QsStatusEventLog;

    .line 1199
    new-instance v0, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    .line 1203
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_PANEL_BLUR_FOR_MASSIVE:Z

    if-eqz v0, :cond_3

    move-object/from16 v0, p76

    .line 1204
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlurredCaptureStorage:Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;

    .line 1208
    :cond_3
    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    invoke-virtual/range {p1 .. p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v12}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/PanelViewController;->mOneClickJumpCallScreenManager:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    .line 1211
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v0, :cond_4

    move-object/from16 v0, p77

    .line 1212
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    .line 1215
    :cond_4
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_5

    move-object/from16 v0, p78

    .line 1216
    iput-object v0, v12, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    :cond_5
    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$10100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    return p0
.end method

.method static synthetic access$10102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 262
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    return p1
.end method

.method static synthetic access$10202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    return p1
.end method

.method static synthetic access$10300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    return-void
.end method

.method static synthetic access$10400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    return-object p0
.end method

.method static synthetic access$10500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelQsAnimation()V

    return-void
.end method

.method static synthetic access$10600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setOverScrolling(Z)V

    return-void
.end method

.method static synthetic access$10702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionFromOverscroll:Z

    return p1
.end method

.method static synthetic access$10800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOverscroll:F

    return p0
.end method

.method static synthetic access$10802(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 262
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOverscroll:F

    return p1
.end method

.method static synthetic access$10900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsState()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDelayShowingKeyguardStatusBar:Z

    return p0
.end method

.method static synthetic access$11000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    return p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDelayShowingKeyguardStatusBar:Z

    return p1
.end method

.method static synthetic access$11100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    return-void
.end method

.method static synthetic access$11200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/widget/FrameLayout;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$11300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    return p0
.end method

.method static synthetic access$11302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 262
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    return p1
.end method

.method static synthetic access$11400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLinearDarkAmount:F

    return p0
.end method

.method static synthetic access$11402(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 262
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLinearDarkAmount:F

    return p1
.end method

.method static synthetic access$11502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    return p1
.end method

.method static synthetic access$11600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$11602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchAnimationEndRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$11700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/classifier/FalsingCollector;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    return-object p0
.end method

.method static synthetic access$11800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/String;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$11900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShortcut:I

    return p0
.end method

.method static synthetic access$11902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 262
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShortcut:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    return p0
.end method

.method static synthetic access$12002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    return p1
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 262
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    return p1
.end method

.method static synthetic access$12100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/view/View;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$12200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpExistenceChangedRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$12300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateNotificationTranslucency()V

    return-void
.end method

.method static synthetic access$12400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateGestureExclusionRect()V

    return-void
.end method

.method static synthetic access$12502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpPinnedMode:Z

    return p1
.end method

.method static synthetic access$12600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeadsUpVisibility()V

    return-void
.end method

.method static synthetic access$12700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$12800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    return p0
.end method

.method static synthetic access$12802(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 262
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    return p1
.end method

.method static synthetic access$12900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/view/accessibility/AccessibilityManager;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    return p0
.end method

.method static synthetic access$13000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/String;
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$13100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mThemeResId:I

    return p0
.end method

.method static synthetic access$13102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 262
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mThemeResId:I

    return p1
.end method

.method static synthetic access$13200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->reInflateViews()V

    return-void
.end method

.method static synthetic access$13300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    return-object p0
.end method

.method static synthetic access$13400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/pluginlock/PluginLockMediator;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    return-object p0
.end method

.method static synthetic access$13500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object p0
.end method

.method static synthetic access$13600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    return-object p0
.end method

.method static synthetic access$13700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;IZ)V
    .locals 0

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardBottomAreaVisibility(IZ)V

    return-void
.end method

.method static synthetic access$13800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateKeyguardStatusBarOut()V

    return-void
.end method

.method static synthetic access$13900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateDozingVisibilities(Z)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    return-object p0
.end method

.method static synthetic access$14000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    return-void
.end method

.method static synthetic access$14100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->maybeAnimateBottomAreaAlpha()V

    return-void
.end method

.method static synthetic access$14200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetHorizontalPanelPosition()V

    return-void
.end method

.method static synthetic access$14300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockViewMode:I

    return p0
.end method

.method static synthetic access$14400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFragmentListener:Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;

    return-object p0
.end method

.method static synthetic access$14500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/fragments/FragmentService;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFragmentService:Lcom/android/systemui/fragments/FragmentService;

    return-object p0
.end method

.method static synthetic access$14600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

    return-object p0
.end method

.method static synthetic access$14700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-object p0
.end method

.method static synthetic access$14800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelCarrierLabelManager:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    return-object p0
.end method

.method static synthetic access$14900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingTapListener:Lcom/android/systemui/plugins/FalsingManager$FalsingTapListener;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;J)V
    .locals 0

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateKeyguardStatusBarIn(J)V

    return-void
.end method

.method static synthetic access$15000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/plugins/FalsingManager;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    return-object p0
.end method

.method static synthetic access$15100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->registerSettingsChangeListener()V

    return-void
.end method

.method static synthetic access$15200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/widget/SystemUIWidgetCallback;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPunchHoleVICallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    return-object p0
.end method

.method static synthetic access$15300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandQSAtOnceController:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;

    return-object p0
.end method

.method static synthetic access$15400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->unregisterSettingsChangeListener()V

    return-void
.end method

.method static synthetic access$15500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setIsFullWidth(Z)V

    return-void
.end method

.method static synthetic access$15600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQSMinHeight()V

    return-void
.end method

.method static synthetic access$15700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;II)V
    .locals 0

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->startQsSizeChangeAnimation(II)V

    return-void
.end method

.method static synthetic access$15800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeader()V

    return-void
.end method

.method static synthetic access$15900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateMaxHeadsUpTranslation()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    return-object p0
.end method

.method static synthetic access$16000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$16002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandAfterLayoutRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$16500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    return p0
.end method

.method static synthetic access$16502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 262
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    return p1
.end method

.method static synthetic access$16600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayTopInset:I

    return p0
.end method

.method static synthetic access$16602(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 262
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayTopInset:I

    return p1
.end method

.method static synthetic access$16700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQuickQsOffsetHeight:F

    return p0
.end method

.method static synthetic access$16702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 262
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQuickQsOffsetHeight:F

    return p1
.end method

.method static synthetic access$16800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarHeight:I

    return p0
.end method

.method static synthetic access$16902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 262
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayRightInset:I

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$17000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    return p0
.end method

.method static synthetic access$17002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 262
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    return p1
.end method

.method static synthetic access$17100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastDisplayTopInset:I

    return p0
.end method

.method static synthetic access$17102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 262
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastDisplayTopInset:I

    return p1
.end method

.method static synthetic access$17200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)I
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastNavigationBarBottomHeight:I

    return p0
.end method

.method static synthetic access$17202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I
    .locals 0

    .line 262
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastNavigationBarBottomHeight:I

    return p1
.end method

.method static synthetic access$17300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/TapAgainViewController;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTapAgainViewController:Lcom/android/systemui/statusbar/phone/TapAgainViewController;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    return-object p0
.end method

.method static synthetic access$2000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/VibratorHelper;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVibratorHelper:Lcom/android/systemui/statusbar/VibratorHelper;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    return-object p0
.end method

.method static synthetic access$2500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/KeyguardStatusViewController;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateKeyguardStatusBarForHeadsUp()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications()V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isDlsViewEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$2900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    return-object p0
.end method

.method static synthetic access$3000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    return p0
.end method

.method static synthetic access$3002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    return-object p0
.end method

.method static synthetic access$3202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$3302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object p0
.end method

.method static synthetic access$3502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)F
    .locals 0

    .line 262
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBarAnimateAlpha:F

    return p1
.end method

.method static synthetic access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Ljava/lang/Runnable;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeaderKeyguardAlpha()V

    return-void
.end method

.method static synthetic access$3802(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimation:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$3902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsQsTranslationResetAnimator:Z

    return p1
.end method

.method static synthetic access$4002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsPulseExpansionResetAnimator:Z

    return p1
.end method

.method static synthetic access$4102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQSAnimatingHiddenFromCollapsed:Z

    return p1
.end method

.method static synthetic access$4202(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimatingQS:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    return-object p0
.end method

.method static synthetic access$4302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;ZZ)V
    .locals 0

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object p0
.end method

.method static synthetic access$4700()Landroid/graphics/Rect;
    .locals 1

    .line 262
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->M_DUMMY_DIRTY_RECT:Landroid/graphics/Rect;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    return p0
.end method

.method static synthetic access$5000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeightListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$HeightListener;

    return-object p0
.end method

.method static synthetic access$5100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnClickListener;

    return-object p0
.end method

.method static synthetic access$5200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpansionEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$5300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    return p0
.end method

.method static synthetic access$5400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    return p0
.end method

.method static synthetic access$5500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    return-object p0
.end method

.method static synthetic access$5600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/qs/bar/BarController;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    return-object p0
.end method

.method static synthetic access$5702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/qs/bar/BarController;)Lcom/android/systemui/qs/bar/BarController;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/qs/bar/QSMediaPlayerBar;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    return-object p0
.end method

.method static synthetic access$5802(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/qs/bar/QSMediaPlayerBar;)Lcom/android/systemui/qs/bar/QSMediaPlayerBar;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    return-object p1
.end method

.method static synthetic access$5900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    return-object p0
.end method

.method static synthetic access$5902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;)Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;
    .locals 0

    .line 262
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    return-object p1
.end method

.method static synthetic access$6000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    return-object p0
.end method

.method static synthetic access$6100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;JJ)V
    .locals 0

    .line 262
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateNextNotificationBounds(JJ)V

    return-void
.end method

.method static synthetic access$6300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockTouches:Z

    return p0
.end method

.method static synthetic access$6302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockTouches:Z

    return p1
.end method

.method static synthetic access$6400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    return-object p0
.end method

.method static synthetic access$6500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initDownStates(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/internal/logging/MetricsLogger;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-object p0
.end method

.method static synthetic access$6700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaPlayerExpanding:Z

    return p0
.end method

.method static synthetic access$6702(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaPlayerExpanding:Z

    return p1
.end method

.method static synthetic access$6800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getCurrentQSVelocity()F

    move-result p0

    return p0
.end method

.method static synthetic access$6900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaPlayerScrolling:Z

    return p0
.end method

.method static synthetic access$6902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaPlayerScrolling:Z

    return p1
.end method

.method static synthetic access$7000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;FF)Z
    .locals 0

    .line 262
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInMediaPlayer(FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onMediaPlayerIntercept(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownX:F

    return p0
.end method

.method static synthetic access$7300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownY:F

    return p0
.end method

.method static synthetic access$7400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;FFF)Z
    .locals 0

    .line 262
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/PulseExpansionHandler;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    return-object p0
.end method

.method static synthetic access$7600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsIntercept(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInClockView(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$7800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    return-object p0
.end method

.method static synthetic access$7902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsClockViewOnTouchDown:Z

    return p1
.end method

.method static synthetic access$8000(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInFaceWidgetContainer(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$8100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/systemui/splugins/pluginlock/PluginLock;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    return-object p0
.end method

.method static synthetic access$8200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isDlsViewDisabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$8300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedOnTouchDown:Z

    return p0
.end method

.method static synthetic access$8302(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedOnTouchDown:Z

    return p1
.end method

.method static synthetic access$8400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    return p0
.end method

.method static synthetic access$8500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)F
    .locals 0

    .line 262
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    return p0
.end method

.method static synthetic access$8600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    return-object p0
.end method

.method static synthetic access$8700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHomeLauncherTouch:Z

    return p0
.end method

.method static synthetic access$8800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onMediaPlayerTouch(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$8900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMultiWindowEdgeDetector:Lcom/samsung/android/multiwindow/MultiWindowEdgeDetector;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFirstBypassAttempt:Z

    return p0
.end method

.method static synthetic access$9002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFirstBypassAttempt:Z

    return p1
.end method

.method static synthetic access$9100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    return p0
.end method

.method static synthetic access$9200(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    return p0
.end method

.method static synthetic access$9300(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mListenForHeadsUp:Z

    return p0
.end method

.method static synthetic access$9400(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    return-object p0
.end method

.method static synthetic access$9500(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    return p0
.end method

.method static synthetic access$9502(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    return p1
.end method

.method static synthetic access$9600(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->handleQsTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$9700(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/keyguard/SecLockIconViewController;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    return-object p0
.end method

.method static synthetic access$9800(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/view/MotionEvent;)V
    .locals 0

    .line 262
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->handleKeyguardEmptySpaceClick(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$9900(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Z
    .locals 0

    .line 262
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulsing:Z

    return p0
.end method

.method private animateKeyguardStatusBarIn(J)V
    .locals 2

    .line 3363
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 3364
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3365
    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3366
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3367
    invoke-virtual {v0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3368
    sget-object p0, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3369
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private animateKeyguardStatusBarOut()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 3329
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getAlpha()F

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v2, 0x0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 3330
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarAnimateAlphaListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3331
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3332
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide v1

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0x0

    .line 3331
    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 3335
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardFadingAway()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3336
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getShortenedFadingAwayDuration()J

    move-result-wide v1

    goto :goto_1

    :cond_1
    const-wide/16 v1, 0x168

    .line 3340
    :goto_1
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3342
    sget-object v1, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3343
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$13;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3349
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private animateNextNotificationBounds(JJ)V
    .locals 1

    const/4 v0, 0x1

    .line 5269
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextNotificationBounds:Z

    .line 5270
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationBoundsAnimationDuration:J

    .line 5271
    iput-wide p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationBoundsAnimationDelay:J

    return-void
.end method

.method private applyQSClippingBounds(IIIIZ)V
    .locals 7

    .line 3636
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextNotificationBounds:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusAreaClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3644
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimationEndBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3645
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusAreaClipBounds:Landroid/graphics/Rect;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    .line 3646
    iget v3, p1, Landroid/graphics/Rect;->top:I

    .line 3647
    iget v4, p1, Landroid/graphics/Rect;->right:I

    .line 3648
    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    .line 3649
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimation:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_1

    .line 3650
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 3652
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimation:Landroid/animation/ValueAnimator;

    .line 3653
    sget-object p2, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 3654
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimation:Landroid/animation/ValueAnimator;

    iget-wide p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationBoundsAnimationDuration:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 3655
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimation:Landroid/animation/ValueAnimator;

    iget-wide p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationBoundsAnimationDelay:J

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 3656
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimation:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda2;

    move-object v0, p2

    move-object v1, p0

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;IIIIZ)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 3669
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimation:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$16;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 3677
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_1

    .line 3637
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_3

    .line 3639
    iget-object p5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimationEndBounds:Landroid/graphics/Rect;

    invoke-virtual {p5, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_1

    .line 3641
    :cond_3
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->applyQSClippingImmediately(IIIIZ)V

    :goto_1
    const/4 p1, 0x0

    .line 3679
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextNotificationBounds:Z

    const-wide/16 p1, 0x0

    .line 3680
    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationBoundsAnimationDelay:J

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private applyQSClippingImmediately(IIIIZ)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    .line 3686
    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimCornerRadius:I

    .line 3690
    iget-boolean v7, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-nez v7, :cond_1

    .line 3692
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusAreaClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v6, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3694
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mRecordingController:Lcom/android/systemui/screenrecord/RecordingController;

    invoke-virtual {v6}, Lcom/android/systemui/screenrecord/RecordingController;->isRecording()Z

    move-result v6

    if-eqz v6, :cond_0

    move v6, v9

    goto :goto_0

    :cond_0
    iget v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScreenCornerRadius:I

    int-to-float v6, v6

    .line 3695
    :goto_0
    iget v7, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimCornerRadius:I

    int-to-float v10, v7

    int-to-float v11, v2

    int-to-float v7, v7

    div-float/2addr v11, v7

    const/high16 v7, 0x3f800000    # 1.0f

    .line 3696
    invoke-static {v11, v7}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 3695
    invoke-static {v6, v10, v7}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result v6

    float-to-int v6, v6

    .line 3697
    iget-object v7, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v7}, Landroid/widget/RelativeLayout;->getTop()I

    move-result v7

    sub-int v7, v2, v7

    move v15, v6

    move v6, v5

    goto :goto_1

    :cond_1
    move v15, v6

    move v6, v8

    move v7, v6

    .line 3699
    :goto_1
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v10, :cond_8

    .line 3701
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->isExpanding()Z

    move-result v10

    .line 3702
    iget v11, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTransitioningToFullShadeProgress:F

    cmpl-float v11, v11, v9

    if-gtz v11, :cond_3

    if-nez v10, :cond_3

    iget-object v11, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimation:Landroid/animation/ValueAnimator;

    if-eqz v11, :cond_2

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsQsTranslationResetAnimator:Z

    if-nez v11, :cond_3

    iget-boolean v11, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsPulseExpansionResetAnimator:Z

    if-eqz v11, :cond_2

    goto :goto_2

    :cond_2
    move v10, v9

    goto :goto_4

    :cond_3
    :goto_2
    if-nez v10, :cond_5

    .line 3705
    iget-boolean v10, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsPulseExpansionResetAnimator:Z

    if-eqz v10, :cond_4

    goto :goto_3

    .line 3710
    :cond_4
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v10}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int v10, v2, v10

    int-to-float v10, v10

    const v11, 0x3e333333    # 0.175f

    mul-float/2addr v10, v11

    goto :goto_4

    .line 3708
    :cond_5
    :goto_3
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v10}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    sub-int v10, v2, v10

    int-to-float v10, v10

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v10, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    .line 3713
    :goto_4
    iput v10, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTranslationForFullShadeTransition:F

    .line 3714
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsFrameTranslation()V

    .line 3715
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v10}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v10

    .line 3716
    sget-boolean v11, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET_BG:Z

    if-eqz v11, :cond_6

    int-to-float v11, v2

    sub-float/2addr v11, v10

    float-to-double v11, v11

    .line 3717
    invoke-static {v11, v12}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v11

    double-to-int v11, v11

    iput v11, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClipTop:I

    int-to-float v11, v4

    sub-float/2addr v11, v10

    float-to-double v10, v11

    .line 3718
    invoke-static {v10, v11}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    double-to-int v10, v10

    iput v10, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClipBottom:I

    goto :goto_5

    :cond_6
    int-to-float v11, v2

    sub-float/2addr v11, v10

    float-to-int v11, v11

    .line 3720
    iput v11, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClipTop:I

    int-to-float v11, v4

    sub-float/2addr v11, v10

    float-to-int v10, v11

    .line 3721
    iput v10, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClipBottom:I

    .line 3723
    :goto_5
    iput-boolean v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVisible:Z

    .line 3724
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    iget v11, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClipTop:I

    iget v12, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClipBottom:I

    if-eqz v5, :cond_7

    iget-boolean v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-nez v13, :cond_7

    const/4 v13, 0x1

    goto :goto_6

    :cond_7
    move v13, v8

    :goto_6
    invoke-interface {v10, v11, v12, v15, v13}, Lcom/android/systemui/plugins/qs/QS;->setFancyClipping(IIIZ)V

    .line 3730
    :cond_8
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    if-eqz v6, :cond_9

    .line 3731
    iget-object v6, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusAreaClipBounds:Landroid/graphics/Rect;

    goto :goto_7

    :cond_9
    const/4 v6, 0x0

    .line 3730
    :goto_7
    invoke-virtual {v10, v6}, Lcom/android/keyguard/KeyguardStatusViewController;->setClipBounds(Landroid/graphics/Rect;)V

    if-nez v5, :cond_a

    .line 3732
    iget-boolean v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-eqz v5, :cond_a

    .line 3735
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v5, v9, v9, v9, v9}, Lcom/android/systemui/statusbar/phone/ScrimController;->setNotificationsBounds(FFFF)V

    goto :goto_8

    .line 3737
    :cond_a
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    int-to-float v6, v1

    int-to-float v9, v2

    int-to-float v10, v3

    int-to-float v11, v4

    invoke-virtual {v5, v6, v9, v10, v11}, Lcom/android/systemui/statusbar/phone/ScrimController;->setNotificationsBounds(FFFF)V

    .line 3740
    :goto_8
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v5, v15}, Lcom/android/systemui/statusbar/phone/ScrimController;->setScrimCornerRadius(I)V

    .line 3741
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v5, v7}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setTopClipping(I)V

    .line 3742
    iget-object v5, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getLeft()I

    move-result v5

    sub-int v11, v1, v5

    .line 3743
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getLeft()I

    move-result v1

    sub-int v13, v3, v1

    .line 3744
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getTop()I

    move-result v1

    sub-int v12, v2, v1

    .line 3745
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getTop()I

    move-result v1

    sub-int v14, v4, v1

    .line 3746
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-eqz v1, :cond_b

    move/from16 v16, v15

    goto :goto_9

    :cond_b
    move/from16 v16, v8

    .line 3747
    :goto_9
    iget-object v10, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual/range {v10 .. v16}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setRoundedClippingBounds(IIIIII)V

    return-void
.end method

.method private calculateGestureExclusionRect()Landroid/graphics/Rect;
    .locals 1

    .line 1849
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->calculateTouchableRegion()Landroid/graphics/Region;

    move-result-object v0

    .line 1850
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    .line 1852
    invoke-virtual {v0}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    .line 1854
    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->EMPTY_RECT:Landroid/graphics/Rect;

    :goto_1
    return-object p0
.end method

.method private calculateNotificationsTopPadding()F
    .locals 4

    .line 3789
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    .line 3790
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSplitShadeNotificationsTopPadding:I

    int-to-float p0, p0

    return p0

    .line 3792
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v0, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v1, :cond_3

    .line 3800
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    move-result v0

    .line 3801
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    .line 3802
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 3804
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    int-to-float v1, v1

    .line 3805
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result p0

    .line 3804
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    int-to-float p0, p0

    return p0

    .line 3806
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_4

    .line 3808
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 3809
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    move-result p0

    .line 3807
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-float p0, p0

    return p0

    :cond_4
    if-eqz v0, :cond_5

    .line 3813
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    int-to-float v1, v1

    .line 3815
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeQsExpansionFraction()F

    move-result p0

    .line 3813
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    return p0

    .line 3817
    :cond_5
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    return p0
.end method

.method private calculatePanelHeightQsExpanded()I
    .locals 2

    .line 4283
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getDisplayHeight(Landroid/content/Context;)I

    move-result v0

    .line 4284
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET_BG:Z

    if-eqz v1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    :goto_0
    sub-int/2addr v0, p0

    return v0
.end method

.method private calculatePanelHeightShade()I
    .locals 3

    .line 4269
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getEmptyBottomMargin()I

    move-result v0

    .line 4270
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    move-result v1

    sub-int/2addr v1, v0

    .line 4272
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 4273
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getLockscreenStatusViewHeight()I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 4274
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getIntrinsicContentHeight()I

    move-result p0

    add-int/2addr v0, p0

    .line 4275
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_0
    return v1
.end method

.method private calculateQsBottomPosition(F)I
    .locals 5

    .line 3758
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTransitioningToFullShadeProgress:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 3759
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTransitionToFullShadeQSPosition:I

    return p0

    .line 3761
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getHeaderTranslation()F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v1}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v1

    add-int/2addr v0, v1

    float-to-double v1, p1

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-eqz v1, :cond_1

    int-to-float v0, v0

    .line 3763
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 3764
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result p0

    int-to-float p0, p0

    .line 3763
    invoke-static {v0, p0, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int v0, p0

    :cond_1
    return v0
.end method

.method private canPanelCollapseOnQQS(FF)Z
    .locals 3

    .line 2842
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCollapsedOnDown:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2845
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    .line 2846
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getX()F

    move-result v2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v2, p0

    cmpg-float p0, p1, v2

    if-gtz p0, :cond_2

    .line 2847
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, p2, p0

    if-gtz p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    return v1
.end method

.method private canShowRowOnLockscreen(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 4

    .line 2358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2360
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 2359
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    return v2

    .line 2364
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldShowOnKeyguard(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    .line 2367
    :cond_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result p0

    if-eqz p0, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method private canShowViewOnLockscreen(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z
    .locals 2

    .line 2336
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->hasNoContentHeight()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2339
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2340
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->canShowRowOnLockscreen(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p0

    if-nez p0, :cond_1

    return v1

    .line 2342
    :cond_1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-ne p0, p1, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private cancelQsAnimation()V
    .locals 0

    .line 3956
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    .line 3957
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private computeMaxKeyguardNotifications()I
    .locals 15

    .line 2199
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_margin_between_noti_indication:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 2200
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 2201
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->close_handle_underlap:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 2203
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIndicationBottomPadding:I

    .line 2205
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockData;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2206
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockData;->getCount(I)I

    move-result p0

    return p0

    .line 2209
    :cond_1
    const-class v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 2210
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotiCardCount:I

    if-eq v0, v1, :cond_2

    return v0

    .line 2215
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->getMascotTotalHeight()I

    move-result v3

    goto :goto_1

    :cond_3
    move v3, v2

    .line 2225
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getMinStackScrollerPadding()F

    move-result v4

    .line 2226
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v6, Lcom/android/systemui/R$dimen;->notification_divider_height:I

    .line 2227
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x1

    .line 2226
    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 2230
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    instance-of v8, v7, Lcom/android/systemui/facewidget/plugin/FaceWidgetPositionAlgorithmWrapper;

    if-eqz v8, :cond_4

    .line 2231
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getBottomMarginY()I

    move-result v7

    goto :goto_2

    .line 2233
    :cond_4
    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIndicationBottomPadding:I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAmbientIndicationBottomPadding:I

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 2235
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getHeight()I

    move-result v8

    .line 2243
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationShelfController;->getVisibility()I

    move-result v9

    const/16 v10, 0x8

    const/4 v11, 0x0

    if-ne v9, v10, :cond_5

    move v9, v11

    goto :goto_3

    .line 2245
    :cond_5
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/NotificationShelfController;->getIntrinsicHeight()I

    move-result v9

    add-int/2addr v9, v5

    int-to-float v9, v9

    .line 2248
    :goto_3
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    invoke-virtual {v12}, Lcom/android/keyguard/LockIconViewController;->getTop()F

    move-result v12

    cmpl-float v12, v12, v11

    if-eqz v12, :cond_6

    .line 2249
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v12}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayHeight()F

    move-result v12

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    invoke-virtual {v13}, Lcom/android/keyguard/LockIconViewController;->getTop()F

    move-result v13

    sub-float/2addr v12, v13

    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v14, Lcom/android/systemui/R$dimen;->min_lock_icon_padding:I

    .line 2250
    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v12, v13

    goto :goto_4

    :cond_6
    move v12, v11

    .line 2253
    :goto_4
    iget v13, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIndicationBottomPadding:I

    iget v14, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAmbientIndicationBottomPadding:I

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v13

    int-to-float v13, v13

    .line 2254
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    .line 2256
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2257
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    int-to-float v8, v8

    sub-float/2addr v8, v4

    sub-float/2addr v8, v9

    int-to-float v4, v7

    sub-float/2addr v8, v4

    int-to-float v4, v2

    sub-float/2addr v8, v4

    if-eqz v0, :cond_7

    int-to-float v0, v3

    sub-float/2addr v8, v0

    :cond_7
    cmpg-float v0, v8, v11

    if-gez v0, :cond_8

    return v1

    :cond_8
    const/4 v0, 0x0

    move v3, v2

    move v4, v3

    .line 2276
    :goto_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result v7

    if-ge v3, v7, :cond_16

    .line 2277
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v7, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildAt(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v7

    .line 2278
    instance-of v12, v7, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v12, :cond_c

    .line 2279
    move-object v12, v7

    check-cast v12, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 2280
    iget-object v13, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    if-eqz v13, :cond_9

    .line 2281
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isSummaryOfSuppressedGroup(Landroid/service/notification/StatusBarNotification;)Z

    move-result v13

    if-eqz v13, :cond_9

    move v13, v6

    goto :goto_6

    :cond_9
    move v13, v2

    :goto_6
    if-eqz v13, :cond_a

    goto/16 :goto_9

    .line 2285
    :cond_a
    invoke-direct {p0, v7}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->canShowViewOnLockscreen(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v13

    if-nez v13, :cond_b

    goto :goto_9

    .line 2288
    :cond_b
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isRemoved()Z

    move-result v12

    if-eqz v12, :cond_e

    goto :goto_9

    .line 2291
    :cond_c
    instance-of v12, v7, Lcom/android/systemui/statusbar/notification/stack/MediaHeaderView;

    if-eqz v12, :cond_15

    .line 2292
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v12

    if-ne v12, v10, :cond_d

    goto :goto_9

    .line 2295
    :cond_d
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getIntrinsicHeight()I

    move-result v12

    if-nez v12, :cond_e

    goto :goto_9

    .line 2301
    :cond_e
    invoke-virtual {v7, v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getMinHeight(Z)I

    move-result v12

    int-to-float v12, v12

    sub-float/2addr v8, v12

    if-nez v4, :cond_f

    move v12, v11

    goto :goto_7

    :cond_f
    int-to-float v12, v5

    :goto_7
    sub-float/2addr v8, v12

    .line 2303
    iget-object v12, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2304
    invoke-virtual {v12, v0, v7, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->calculateGapHeight(Lcom/android/systemui/statusbar/notification/row/ExpandableView;Lcom/android/systemui/statusbar/notification/row/ExpandableView;I)F

    move-result v0

    sub-float/2addr v8, v0

    cmpl-float v0, v8, v11

    if-ltz v0, :cond_11

    .line 2306
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMaxKeyguardNotifications:I

    if-eq v0, v1, :cond_10

    if-ge v4, v0, :cond_11

    :cond_10
    add-int/lit8 v4, v4, 0x1

    move-object v0, v7

    goto :goto_9

    :cond_11
    neg-float v0, v9

    cmpl-float v0, v8, v0

    if-lez v0, :cond_14

    .line 2311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result v0

    add-int/2addr v3, v6

    :goto_8
    if-ge v3, v0, :cond_13

    .line 2313
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildAt(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v1

    .line 2314
    instance-of v2, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v2, :cond_12

    .line 2315
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->canShowViewOnLockscreen(Lcom/android/systemui/statusbar/notification/row/ExpandableView;)Z

    move-result v1

    if-eqz v1, :cond_12

    return v4

    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_13
    add-int/2addr v4, v6

    :cond_14
    return v4

    :cond_15
    :goto_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_5

    :cond_16
    return v4
.end method

.method private computeQsExpansionFraction()F
    .locals 4

    .line 2898
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQSAnimatingHiddenFromCollapsed:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2903
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v3, v2

    sub-float/2addr v1, v3

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    sub-int/2addr p0, v2

    int-to-float p0, p0

    div-float/2addr v1, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private createVisibleEntriesList()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/ListEntry;",
            ">;"
        }
    .end annotation

    .line 5478
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 5479
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    .line 5480
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 5481
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getChildAt(I)Lcom/android/systemui/statusbar/notification/row/ExpandableView;

    move-result-object v2

    .line 5482
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    if-eqz v3, :cond_0

    .line 5483
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private determineAccessibilityPaneTitle()Ljava/lang/String;
    .locals 2

    .line 3771
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->isCustomizing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3772
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_quick_settings_edit:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3773
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz v0, :cond_1

    .line 3776
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_quick_settings:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3777
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 3778
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string p0, ""

    return-object p0

    .line 3781
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_lock_screen:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 3784
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$string;->accessibility_desc_notification_shade:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static ensureAllViewsHaveIds(Landroid/view/ViewGroup;)V
    .locals 4

    const/4 v0, 0x0

    .line 1625
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1626
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 1627
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 1628
    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setId(I)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private flingExpandsQs(F)Z
    .locals 3

    .line 2880
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    invoke-virtual {v1}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->getMinVelocityPxPerSecond()F

    move-result v1

    cmpg-float v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_1

    .line 2881
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeQsExpansionFraction()F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    cmpl-float p0, p0, p1

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 p0, 0x0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private flingQsWithCurrentVelocity(FZ)V
    .locals 4

    .line 2853
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getCurrentQSVelocity()F

    move-result v0

    .line 2854
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingExpandsQs(F)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 2856
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v3}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isFalseTouch(I)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2859
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->logQsSwipeDown(F)V

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    cmpg-float p1, v0, p1

    if-gez p1, :cond_3

    .line 2862
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    const/16 v3, 0xc

    invoke-interface {p1, v3}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    :cond_3
    :goto_1
    if-eqz v1, :cond_4

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x1

    .line 2865
    :goto_2
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    return-void
.end method

.method private getCurrentQSVelocity()F
    .locals 2

    .line 3948
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/16 v1, 0x3e8

    .line 3951
    invoke-virtual {v0, v1}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 3952
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {p0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result p0

    return p0
.end method

.method private getCutoutHeight()I
    .locals 1

    .line 7407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7408
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 7410
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getBoundingRects()Ljava/util/List;

    move-result-object p0

    .line 7411
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Rect;

    .line 7412
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private getFaceWidgetAlpha()F
    .locals 6

    .line 2078
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 2080
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->isPanelExpanded()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2081
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_3

    .line 2082
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeQsExpansionFraction()F

    move-result p0

    float-to-double v2, p0

    const-wide v4, 0x3fd3333333333333L    # 0.3

    cmpl-double v0, v2, v4

    if-lez v0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x40400000    # 3.0f

    mul-float/2addr p0, v0

    :goto_0
    const/4 v0, 0x0

    .line 2084
    invoke-static {v1, v0, p0}, Lcom/android/systemui/statusbar/notification/NotificationUtils;->interpolate(FFF)F

    move-result v1

    goto :goto_2

    :cond_2
    :goto_1
    const/high16 v1, -0x40800000    # -1.0f

    :cond_3
    :goto_2
    return v1
.end method

.method private getFadeoutAlpha()F
    .locals 4

    .line 4350
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    return v1

    .line 4353
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/4 p0, 0x0

    .line 4354
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 4355
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private getFalsingThreshold()I
    .locals 1

    .line 3231
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isWakeUpComingFromTouch()Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3fc00000    # 1.5f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3232
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFalsingThreshold:I

    int-to-float p0, p0

    mul-float/2addr p0, v0

    float-to-int p0, p0

    return p0
.end method

.method private getKeyguardContentsAlpha()F
    .locals 4

    .line 4413
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4418
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationsHeaderCollideDistance:I

    add-int/2addr v1, p0

    int-to-float p0, v1

    goto :goto_0

    .line 4424
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result p0

    int-to-float p0, p0

    :goto_0
    div-float/2addr v0, p0

    .line 4426
    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    move-result p0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    .line 4427
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p0, v0

    return p0
.end method

.method private getKeyguardHeadsUpShowingAmount()F
    .locals 0

    .line 4939
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardHeadsUpShowingAmount:F

    return p0
.end method

.method private getKeyguardNotificationStaticPadding()I
    .locals 2

    .line 3826
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3829
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3830
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v0, :cond_2

    .line 3832
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz v0, :cond_1

    .line 3833
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getNotificationIconsOnlyContainerHeight()I

    move-result v1

    .line 3835
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updatePosition(II)I

    move-result p0

    add-int/2addr v0, p0

    return v0

    .line 3837
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    return p0

    .line 3839
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpInset:I

    .line 3840
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isPulseExpanding()Z

    move-result v1

    if-nez v1, :cond_4

    return v0

    .line 3843
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    int-to-float v0, v0

    int-to-float v1, v1

    .line 3844
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 3845
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->calculateAppearFractionBypass()F

    move-result p0

    .line 3844
    invoke-static {v0, v1, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private getMaxPanelHeightBypass()I
    .locals 3

    .line 4157
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    .line 4158
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->getLockscreenStatusViewHeight()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 4159
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardStatusViewController;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 4160
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getVisibleNotificationCount()I

    move-result v1

    if-eqz v1, :cond_0

    int-to-float v0, v0

    .line 4161
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShelfHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDarkIconSize:I

    int-to-float p0, p0

    div-float/2addr p0, v2

    add-float/2addr v1, p0

    add-float/2addr v0, v1

    float-to-int v0, v0

    :cond_0
    return v0
.end method

.method private getMaxPanelHeightNonBypass()I
    .locals 4

    .line 4132
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    .line 4133
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 4134
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotGoneChildCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 4135
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    .line 4136
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 4139
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedWhenExpandingStarted:Z

    if-nez v1, :cond_3

    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulsing:Z

    if-eqz v1, :cond_2

    goto :goto_0

    .line 4143
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightShade()I

    move-result v1

    goto :goto_1

    .line 4141
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightQsExpanded()I

    move-result v1

    .line 4145
    :goto_1
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eqz v0, :cond_4

    int-to-float v1, v0

    .line 4146
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 4147
    :cond_4
    sget-object v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "maxPanelHeight is invalid. mOverExpansion: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mOverExpansion:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", calculatePanelHeightQsExpanded: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4149
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightQsExpanded()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", calculatePanelHeightShade: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4150
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightShade()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mStatusBarMinHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mQsMinExpansionHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4147
    invoke-static {v1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0
.end method

.method private getNotificationHeight(Z)I
    .locals 0

    if-eqz p1, :cond_0

    .line 7421
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/systemui/R$dimen;->keyguard_indication_dls_default_notification_height_land:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 7422
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/systemui/R$dimen;->keyguard_indication_dls_default_notification_height:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getNotificationTopMargin(Z)I
    .locals 1

    .line 7395
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 7396
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/systemui/R$dimen;->keyguard_indication_dls_default_notification_top_margin_land_tablet:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_0

    .line 7397
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getCutoutHeight()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$dimen;->keyguard_indication_dls_default_notification_top_margin_tablet:I

    .line 7398
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, p1

    :goto_0
    return p0

    :cond_1
    if-eqz p1, :cond_2

    .line 7400
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget p1, Lcom/android/systemui/R$dimen;->keyguard_indication_dls_default_notification_top_margin_land:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    .line 7401
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getCutoutHeight()I

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$dimen;->keyguard_indication_dls_default_notification_top_margin:I

    .line 7402
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    add-int/2addr p0, p1

    :goto_1
    return p0
.end method

.method private getQSEdgePosition()F
    .locals 2

    .line 3753
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQuickQsOffsetHeight:F

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpansionFraction()F

    move-result v1

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    .line 3754
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getStackY()F

    move-result v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr v1, p0

    .line 3753
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method private getUnlockedStackScrollerPadding()I
    .locals 1

    .line 2186
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2189
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    .line 2191
    :goto_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsPeekHeight:I

    add-int/2addr v0, p0

    return v0
.end method

.method private handleKeyguardEmptySpaceClick(Landroid/view/MotionEvent;)V
    .locals 3

    .line 4361
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4363
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result v0

    .line 4364
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTouchIsClick:Z

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v0

    if-gtz v1, :cond_1

    .line 4365
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    sub-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    :cond_1
    const/4 p1, 0x0

    .line 4366
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTouchIsClick:Z

    goto :goto_0

    .line 4370
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTouchIsClick:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 4371
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isBelowLastNotification(FF)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez p0, :cond_3

    .line 4372
    const-class p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->closeDetailNotification()V

    :cond_3
    :goto_0
    return-void
.end method

.method private handleQsDown(Landroid/view/MotionEvent;)V
    .locals 3

    .line 3029
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    if-nez v0, :cond_0

    .line 3030
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    .line 3029
    invoke-direct {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3031
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0}, Lcom/android/systemui/classifier/FalsingCollector;->onQsDown()V

    const/4 v0, 0x1

    .line 3032
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 3033
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 3034
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 3035
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 3036
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 3039
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    :cond_0
    return-void
.end method

.method private handleQsTouch(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 2929
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2930
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    if-nez v3, :cond_0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq v3, v2, :cond_0

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v3, :cond_0

    .line 2931
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpansionEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 2933
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 2934
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    .line 2935
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    .line 2936
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 2937
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 2938
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 2939
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 2941
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2942
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->handleQsDown(Landroid/view/MotionEvent;)V

    .line 2944
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mOneClickJumpCallScreenManager:Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;

    if-eqz v3, :cond_2

    .line 2945
    invoke-virtual {v3, p1}, Lcom/android/systemui/statusbar/phone/StatusBarOneClickJumpCallScreenManager;->handleQsTouch(Landroid/view/MotionEvent;)V

    .line 2947
    :cond_2
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v3, :cond_3

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    if-eqz v3, :cond_3

    .line 2948
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsTouch(Landroid/view/MotionEvent;)V

    .line 2949
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    if-nez v3, :cond_3

    return v2

    :cond_3
    const/4 v3, 0x3

    if-eq v0, v3, :cond_4

    if-ne v0, v2, :cond_5

    .line 2954
    :cond_4
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    :cond_5
    if-nez v0, :cond_6

    .line 2956
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpansionEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 2958
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getPhoneState()I

    move-result v0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_6

    .line 2959
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTwoFingerQsExpandPossible:Z

    .line 2961
    :cond_6
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTwoFingerQsExpandPossible:Z

    if-eqz v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOpenQsEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_7

    .line 2963
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const-string/jumbo v0, "panel_open_qs"

    invoke-virtual {p1, v0, v2}, Lcom/android/internal/logging/MetricsLogger;->count(Ljava/lang/String;I)V

    .line 2965
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpandImmediate(Z)V

    .line 2969
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setShouldShowShelfOnly(Z)V

    .line 2970
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 2974
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    :cond_7
    return v1
.end method

.method private initBottomArea()V
    .locals 4

    .line 1794
    new-instance v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomHelper;-><init>(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper$Callback;Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 1799
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAffordanceHelper(Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;)V

    .line 1800
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 1801
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUserSetupComplete:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    .line 1802
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setFalsingManager(Lcom/android/systemui/plugins/FalsingManager;)V

    .line 1803
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQuickAccessWalletController:Lcom/android/systemui/wallet/controller/QuickAccessWalletController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initWallet(Lcom/android/systemui/wallet/controller/QuickAccessWalletController;)V

    .line 1804
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mControlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initControls(Lcom/android/systemui/controls/dagger/ControlsComponent;)V

    return-void
.end method

.method private initDownStates(Landroid/view/MotionEvent;)V
    .locals 4

    .line 2799
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    const/4 v0, 0x1

    .line 2801
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTouchIsClick:Z

    .line 2803
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnlyAffordanceInThisMotion:Z

    .line 2805
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setShortcutPreviewSwipingInProgress(Z)V

    .line 2807
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTouchAboveFalsingThreshold:Z

    .line 2808
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isDozing()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozingOnDown:Z

    .line 2809
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownX:F

    .line 2810
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownY:F

    .line 2811
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCollapsedOnDown:Z

    .line 2812
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2813
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getScrollOwnY()I

    move-result p1

    int-to-float p1, p1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQuickQsOffsetHeight:F

    sub-float/2addr v2, v3

    cmpl-float p1, p1, v2

    if-ltz p1, :cond_0

    .line 2814
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    goto :goto_0

    .line 2816
    :cond_0
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownX:F

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDownY:F

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->canPanelCollapseOnQQS(FF)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    .line 2818
    :goto_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCollapsedOnDown:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p1

    if-eqz p1, :cond_1

    move p1, v0

    goto :goto_1

    :cond_1
    move p1, v1

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mListenForHeadsUp:Z

    .line 2819
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAllowExpandForSmallExpansion:Z

    .line 2820
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTouchSlopExceededBeforeDown:Z

    if-eqz p1, :cond_2

    .line 2822
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    goto :goto_2

    .line 2825
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    goto :goto_2

    .line 2829
    :cond_3
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastEventSynthesizedDown:Z

    :goto_2
    return-void
.end method

.method private initVelocityTracker()V
    .locals 1

    .line 3941
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 3942
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 3944
    :cond_0
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    return-void
.end method

.method private isDlsViewDisabled()Z
    .locals 0

    .line 7323
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockViewMode:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDlsViewEnabled()Z
    .locals 1

    .line 7327
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockViewMode:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isFalseTouch(I)Z
    .locals 1

    .line 2888
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->needsAntiFalsing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2891
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {v0}, Lcom/android/systemui/plugins/FalsingManager;->isClassifierEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2892
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTouch(I)Z

    move-result p0

    return p0

    .line 2894
    :cond_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTouchAboveFalsingThreshold:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private isInClockView(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 7514
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->getClockView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 7518
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    .line 7519
    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v3

    .line 7520
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    if-nez v4, :cond_2

    .line 7521
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_1

    .line 7522
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    cmpg-float v4, v2, v4

    if-gez v4, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    add-float/2addr v2, v5

    cmpg-float v2, v4, v2

    if-gez v2, :cond_1

    .line 7523
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    cmpg-float v2, v3, v2

    if-gez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    add-float/2addr v3, v0

    cmpg-float p1, p1, v3

    if-gez p1, :cond_1

    const/4 p1, 0x1

    .line 7524
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsClockViewOnTouchDown:Z

    goto :goto_0

    .line 7526
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsClockViewOnTouchDown:Z

    .line 7530
    :cond_2
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsClockViewOnTouchDown:Z

    return p0
.end method

.method private isInFaceWidgetContainer(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 2093
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 2096
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsFaceWidgetOnTouchDown:Z

    .line 2097
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsFaceWidgetOnTouchDown:Z

    return p1

    :cond_0
    if-nez v0, :cond_2

    .line 2100
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardStatusViewController;->isInContentBounds(F)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 2101
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsFaceWidgetOnTouchDown:Z

    goto :goto_0

    .line 2103
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsFaceWidgetOnTouchDown:Z

    .line 2107
    :cond_2
    :goto_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsFaceWidgetOnTouchDown:Z

    return p0
.end method

.method private isInMediaPlayer(FF)Z
    .locals 6

    .line 2993
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2995
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-virtual {v2}, Lcom/android/systemui/qs/bar/BarItemImpl;->getBarView()Landroid/view/View;

    move-result-object v2

    .line 2996
    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 2997
    aget v3, v0, v1

    int-to-float v3, v3

    const/4 v4, 0x1

    .line 2998
    aget v0, v0, v4

    int-to-float v0, v0

    .line 2999
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isUpwardScrolling()Z

    move-result v5

    if-nez v5, :cond_1

    cmpl-float v5, p1, v3

    if-ltz v5, :cond_1

    .line 3000
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    cmpg-float p1, p1, v3

    if-gtz p1, :cond_1

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    .line 3001
    invoke-virtual {p0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->getBarHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr v0, p0

    cmpg-float p0, p2, v0

    if-gtz p0, :cond_1

    move v1, v4

    :cond_1
    return v1
.end method

.method private isInQsArea(FF)Z
    .locals 3

    .line 2980
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    cmpg-float v0, p1, v0

    const/4 v1, 0x0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v0, v2

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    goto :goto_0

    .line 2984
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsGestureNavigation:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    sub-int/2addr p1, v0

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_1

    return v1

    .line 2987
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getBottomMostNotificationBottom()F

    move-result p1

    cmpg-float p1, p2, p1

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 2988
    invoke-interface {p1}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    add-float/2addr p1, p0

    cmpg-float p0, p2, p1

    if-gtz p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    :goto_0
    return v1
.end method

.method private isLandscapeNotificationOnKeyguard()Z
    .locals 3

    .line 7441
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsKeyguardSupportLandscapePhone:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isOnKeyguard()Z
    .locals 1

    .line 5085
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isOpenQsEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 3005
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 3006
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x5

    if-ne v1, v5, :cond_0

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v4

    :goto_0
    if-nez v1, :cond_2

    const/16 v5, 0x20

    .line 3014
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v5

    if-nez v5, :cond_1

    const/16 v5, 0x40

    .line 3015
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    move v5, v3

    goto :goto_1

    :cond_2
    move v5, v4

    :goto_1
    if-nez v1, :cond_4

    .line 3020
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v2, 0x4

    .line 3021
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move v2, v3

    goto :goto_2

    :cond_4
    move v2, v4

    :goto_2
    if-nez v0, :cond_6

    if-nez v5, :cond_6

    if-nez v2, :cond_6

    .line 3024
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandQSAtOnceController:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;

    .line 3025
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->isOpenQsEvent(IF)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_3

    :cond_5
    move v3, v4

    :cond_6
    :goto_3
    return v3
.end method

.method private isQsExpansionEnabled()Z
    .locals 1

    .line 2501
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabledPolicy:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabledAmbient:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 2502
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$applyQSClippingBounds$8(IIIIZLandroid/animation/ValueAnimator;)V
    .locals 6

    .line 3657
    invoke-virtual {p6}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p6

    int-to-float p1, p1

    .line 3658
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimationEndBounds:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-static {p1, v0, p6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    float-to-int v1, p1

    int-to-float p1, p2

    .line 3660
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimationEndBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    invoke-static {p1, p2, p6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    float-to-int v2, p1

    int-to-float p1, p3

    .line 3662
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimationEndBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    invoke-static {p1, p2, p6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    float-to-int v3, p1

    int-to-float p1, p4

    .line 3664
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimationEndBounds:Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    invoke-static {p1, p2, p6}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    float-to-int v4, p1

    move-object v0, p0

    move v5, p5

    .line 3666
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->applyQSClippingImmediately(IIIIZ)V

    return-void
.end method

.method private synthetic lambda$flingSettings$9(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 4024
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    return-void
.end method

.method private synthetic lambda$new$0(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Ljava/lang/Float;)V
    .locals 0

    .line 345
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardHeadsUpShowingAmount(F)V

    return-void
.end method

.method private synthetic lambda$new$1(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Float;
    .locals 0

    .line 347
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardHeadsUpShowingAmount()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$new$10(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 5195
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-nez p1, :cond_0

    .line 5198
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expandWithQs()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 1

    const/4 v0, 0x0

    .line 541
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setHeadsUpAnimatingAway(Z)V

    .line 542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyBarPanelExpansionChanged()V

    return-void
.end method

.method private synthetic lambda$new$3(Landroid/util/Property;)V
    .locals 0

    .line 595
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 596
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$4()V
    .locals 0

    .line 1034
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p0, :cond_0

    .line 1035
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->animateHeaderSlidingOut()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$5(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 1063
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    .line 1064
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    return-void
.end method

.method private synthetic lambda$new$6(I)V
    .locals 0

    .line 1077
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsGestureNavigation:Z

    return-void
.end method

.method private synthetic lambda$onFinishInflate$7(I)V
    .locals 1

    .line 1318
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOldLayoutDirection:I

    if-eq p1, v0, :cond_0

    .line 1319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->onRtlPropertiesChanged()V

    .line 1320
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOldLayoutDirection:I

    :cond_0
    return-void
.end method

.method private logQsSwipeDown(F)V
    .locals 4

    .line 2869
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getCurrentQSVelocity()F

    move-result v0

    .line 2872
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/16 v1, 0xc1

    goto :goto_0

    :cond_0
    const/16 v1, 0xc2

    .line 2874
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    sub-float/2addr p1, v3

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 2875
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result v3

    div-float/2addr p1, v3

    float-to-int p1, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 2876
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayDensity()F

    move-result p0

    div-float/2addr v0, p0

    float-to-int p0, v0

    .line 2874
    invoke-virtual {v2, v1, p1, p0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    return-void
.end method

.method private maybeAnimateBottomAreaAlpha()V
    .locals 4

    .line 3310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 3311
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3312
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    aput v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 3313
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 3315
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    :goto_0
    return-void
.end method

.method private notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 2

    const/4 v0, 0x0

    .line 4649
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 4650
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Consumer;

    .line 4651
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onFinishInflate()V
    .locals 5

    .line 1225
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->loadDimens()V

    .line 1226
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_header:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 1227
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->big_clock_container:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBigClockContainer:Landroid/view/ViewGroup;

    .line 1232
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherEnabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1233
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchEnabled:Z

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v2, Lcom/android/systemui/R$id;->keyguard_qs_user_switch_stub:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1235
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_0

    .line 1237
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v2, Lcom/android/systemui/R$id;->keyguard_user_switcher_stub:I

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1238
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    goto :goto_0

    :cond_1
    move-object v0, v1

    .line 1242
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v3, Lcom/android/systemui/R$id;->keyguard_status_view:I

    .line 1243
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/keyguard/KeyguardStatusView;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 1242
    invoke-direct {p0, v2, v1, v3, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateViewControllers(Lcom/android/keyguard/KeyguardStatusView;Lcom/android/systemui/statusbar/phone/UserAvatarView;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V

    .line 1247
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->notification_container_parent:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    .line 1248
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 1250
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->attach(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    .line 1251
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeightChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnHeightChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOnHeightChangedListener(Lcom/android/systemui/statusbar/notification/row/ExpandableView$OnHeightChangedListener;)V

    .line 1253
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnOverscrollTopChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnOverscrollTopChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOverscrollTopChangedListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnOverscrollTopChangedListener;)V

    .line 1255
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOnScrollListener(Ljava/util/function/Consumer;)V

    .line 1256
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOnStackYChanged(Ljava/util/function/Consumer;)V

    .line 1257
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnEmptySpaceClickListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnEmptySpaceClickListener;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOnEmptySpaceClickListener(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout$OnEmptySpaceClickListener;)V

    .line 1259
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda10;

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V

    .line 1262
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_bottom_area_switcher:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1263
    sget v1, Lcom/android/systemui/R$layout;->keyguard_bottom_shortcut_area:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 1265
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 1266
    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz v1, :cond_2

    .line 1267
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mEmergencyButtonControllerFactory:Lcom/android/keyguard/EmergencyButtonController$Factory;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->initEmergencyButton(Lcom/android/keyguard/EmergencyButtonController$Factory;)V

    .line 1269
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 1272
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->setPluginLockData(Lcom/android/systemui/pluginlock/PluginLockData;)V

    .line 1279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->preview_container:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPreviewContainer:Landroid/view/ViewGroup;

    .line 1280
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setPreviewContainer(Landroid/view/ViewGroup;)V

    .line 1283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getView()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->setStackScroller(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;)V

    .line 1286
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    .line 1288
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initBottomArea()V

    .line 1290
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_GUIDE_POPUP:Z

    if-eqz v0, :cond_3

    .line 1291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_biometric_fingerprint_guide_popup_stub:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1292
    sget v1, Lcom/android/systemui/R$layout;->keyguard_biometric_fingerprint_guide_popup:I

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setLayoutResource(I)V

    .line 1293
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFingerprintGuidePopup:Lcom/android/keyguard/biometrics/KeyguardBiometricFingerprintGuidePopup;

    if-eqz v0, :cond_3

    .line 1295
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->bringToFront()V

    .line 1299
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->setStackScroller(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    .line 1300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->qs_frame:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 1301
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setUp(Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;)V

    .line 1302
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mWakeUpCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$7;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$7;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;->addListener(Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator$WakeUpListener;)V

    .line 1317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setRtlChangeListener(Lcom/android/systemui/statusbar/phone/NotificationPanelView$RtlChangeListener;)V

    .line 1324
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityDelegate:Landroid/view/View$AccessibilityDelegate;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 1326
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v0, :cond_4

    .line 1327
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$8;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$8;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->init(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$Injector;)V

    .line 1352
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateResources()V

    .line 1355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTapAgainViewController:Lcom/android/systemui/statusbar/phone/TapAgainViewController;

    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 1357
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->notification_icons_only_layout_stub:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 1358
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    if-eqz v0, :cond_5

    .line 1360
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyComponentBuilder:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;->nioView(Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;)Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent$Builder;->build()Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent;

    move-result-object v0

    .line 1361
    invoke-interface {v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyComponent;->getNIOController()Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    .line 1362
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 1363
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getCallbockInLockscreenNotificationManager()Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->addCallback(Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;)V

    .line 1365
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsKeyguardSupportLandscapePhone:Z

    return-void
.end method

.method private onMediaPlayerIntercept(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 2673
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2675
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_1

    .line 2678
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    move v0, v1

    .line 2680
    :cond_1
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 2681
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 2682
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 2684
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_6

    if-eq v3, v4, :cond_5

    const/4 v5, 0x2

    if-eq v3, v5, :cond_4

    const/4 v0, 0x3

    if-eq v3, v0, :cond_5

    const/4 v0, 0x6

    if-eq v3, v0, :cond_2

    goto/16 :goto_0

    .line 2692
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 2693
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    if-ne v2, v0, :cond_7

    .line 2695
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_3

    move v4, v1

    .line 2696
    :cond_3
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 2697
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    goto :goto_0

    .line 2702
    :cond_4
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    sub-float v3, v0, v3

    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaDraggedHeight:F

    .line 2703
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaDraggedHeight:F

    .line 2704
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v3, v3, v5

    if-lez v3, :cond_7

    .line 2705
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2706
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 2707
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 2708
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->cancelLongPress()V

    .line 2710
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldMediaPlayerIntercept(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    .line 2716
    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaPlayerExpanding:Z

    .line 2717
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaPlayerScrolling:Z

    .line 2718
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getCurrentQSVelocity()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setTracking(ZF)V

    .line 2719
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_7

    .line 2720
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 2721
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_0

    .line 2686
    :cond_6
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 2687
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 2688
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getCurrentQSVelocity()F

    move-result v0

    invoke-virtual {p1, v4, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setTracking(ZF)V

    .line 2689
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initVelocityTracker()V

    :cond_7
    :goto_0
    return v1
.end method

.method private onMediaPlayerTouch(Landroid/view/MotionEvent;)V
    .locals 6

    .line 3178
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 3181
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    move v0, v1

    .line 3183
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 3184
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 3185
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    sub-float v3, v2, v3

    .line 3186
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 3188
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    if-eq v4, v5, :cond_4

    const/4 v0, 0x2

    if-eq v4, v0, :cond_3

    const/4 v0, 0x3

    if-eq v4, v0, :cond_4

    const/4 v0, 0x6

    if-eq v4, v0, :cond_1

    goto :goto_1

    .line 3197
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 3198
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    if-ne v2, v0, :cond_6

    .line 3200
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v5

    .line 3201
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 3202
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 3203
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    .line 3204
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 3205
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    goto :goto_1

    .line 3211
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-virtual {p1, v3}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->onMediaPlayerTouch(F)V

    .line 3213
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getFalsingThreshold()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, v3, p1

    if-ltz p1, :cond_6

    .line 3214
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTouchAboveFalsingThreshold:Z

    goto :goto_1

    :cond_4
    const/4 p1, -0x1

    .line 3220
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    .line 3221
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getCurrentQSVelocity()F

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setTracking(ZF)V

    .line 3222
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_6

    .line 3223
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 3224
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 3190
    :cond_5
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 3191
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 3192
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getCurrentQSVelocity()F

    move-result v0

    invoke-virtual {p1, v5, v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->setTracking(ZF)V

    .line 3193
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initVelocityTracker()V

    :cond_6
    :goto_1
    return-void
.end method

.method private onNotificationScrolled(I)V
    .locals 0

    .line 3558
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQSExpansionEnabledAmbient()V

    return-void
.end method

.method private onQsExpansionStarted()V
    .locals 1

    const/4 v0, 0x0

    .line 3245
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted(I)V

    return-void
.end method

.method private onQsIntercept(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 2592
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2595
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    move v0, v1

    .line 2597
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 2598
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 2600
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    if-eq v3, v4, :cond_6

    const/4 v5, 0x2

    if-eq v3, v5, :cond_3

    const/4 v0, 0x3

    if-eq v3, v0, :cond_6

    const/4 v0, 0x6

    if-eq v3, v0, :cond_1

    goto/16 :goto_0

    .line 2624
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 2625
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    if-ne v2, v0, :cond_9

    .line 2627
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_2

    move v4, v1

    .line 2628
    :cond_2
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    .line 2629
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 2630
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    goto/16 :goto_0

    .line 2635
    :cond_3
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    sub-float v3, v0, v3

    .line 2636
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 2637
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    if-eqz v5, :cond_4

    .line 2642
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    add-float/2addr v3, v0

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    .line 2643
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    return v4

    .line 2646
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result v5

    cmpl-float v5, v3, v5

    if-gtz v5, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getTouchSlop(Landroid/view/MotionEvent;)F

    move-result p1

    neg-float p1, p1

    cmpg-float p1, v3, p1

    if-gez p1, :cond_9

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz p1, :cond_9

    .line 2647
    :cond_5
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    sub-float v5, v2, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float p1, p1, v5

    if-lez p1, :cond_9

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 2648
    invoke-direct {p0, p1, v5, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 2649
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2650
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 2651
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    .line 2652
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 2653
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 2654
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 2655
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 2656
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 2657
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->cancelLongPress()V

    return v4

    .line 2664
    :cond_6
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 2665
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    goto :goto_0

    .line 2602
    :cond_7
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 2603
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 2604
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initVelocityTracker()V

    .line 2605
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 2606
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz p1, :cond_8

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    const/4 v2, 0x0

    .line 2607
    invoke-direct {p0, p1, v0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->shouldQuickSettingsIntercept(FFF)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 2611
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2613
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_9

    .line 2615
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 2617
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 2618
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 2619
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    .line 2620
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->cancelLongPress()V

    :cond_9
    :goto_0
    return v1
.end method

.method private onQsTouch(Landroid/view/MotionEvent;)V
    .locals 7

    .line 3111
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 3114
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    move v0, v1

    .line 3116
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 3117
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    .line 3118
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    sub-float v3, v2, v3

    .line 3120
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_a

    const/4 v0, 0x3

    if-eq v4, v5, :cond_5

    const/4 v6, 0x2

    if-eq v4, v6, :cond_3

    if-eq v4, v0, :cond_5

    const/4 v0, 0x6

    if-eq v4, v0, :cond_1

    goto/16 :goto_4

    .line 3133
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    .line 3134
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    if-ne v2, v0, :cond_b

    .line 3136
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-eq v2, v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v5

    .line 3137
    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 3138
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 3139
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    .line 3140
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 3141
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 3142
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    goto :goto_4

    .line 3147
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    add-float/2addr v0, v3

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    .line 3148
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getFalsingThreshold()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_4

    .line 3149
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTouchAboveFalsingThreshold:Z

    .line 3151
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    goto :goto_4

    .line 3156
    :cond_5
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    const/4 v3, -0x1

    .line 3157
    iput v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    .line 3158
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    .line 3159
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeQsExpansionFraction()F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_8

    .line 3160
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_6

    goto :goto_2

    .line 3166
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_7

    goto :goto_1

    :cond_7
    move v5, v1

    .line 3165
    :goto_1
    invoke-direct {p0, v1, v5}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    goto :goto_3

    .line 3161
    :cond_8
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelQsAnimation()V

    .line 3163
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    if-ne p1, v0, :cond_9

    move v1, v5

    .line 3162
    :cond_9
    invoke-direct {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingQsWithCurrentVelocity(FZ)V

    .line 3168
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p1, :cond_b

    .line 3169
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->recycle()V

    const/4 p1, 0x0

    .line 3170
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_4

    .line 3122
    :cond_a
    iput-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 3123
    invoke-direct {p0, v5, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    .line 3124
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 3125
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 3126
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 3127
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 3128
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initVelocityTracker()V

    .line 3129
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->trackMovement(Landroid/view/MotionEvent;)V

    :cond_b
    :goto_4
    return-void
.end method

.method private onStackYChanged(Z)V
    .locals 4

    .line 3547
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x168

    const-wide/16 v2, 0x0

    .line 3549
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateNextNotificationBounds(JJ)V

    .line 3551
    iput-wide v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationBoundsAnimationDelay:J

    .line 3553
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQSClippingBounds()V

    :cond_1
    return-void
.end method

.method private positionClockAndNotifications()V
    .locals 1

    const/4 v0, 0x0

    .line 1893
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    return-void
.end method

.method private positionClockAndNotifications(Z)V
    .locals 4

    .line 1903
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isAddOrRemoveAnimationPending()Z

    move-result v0

    .line 1905
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_1

    .line 1907
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateClockAppearance()V

    :cond_1
    const/4 p1, 0x0

    if-nez v1, :cond_2

    .line 1910
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getUnlockedStackScrollerPadding()I

    move-result v1

    goto :goto_2

    .line 1912
    :cond_2
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v1, :cond_3

    .line 1913
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    goto :goto_0

    .line 1915
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPaddingExpanded:I

    :goto_0
    if-eqz v1, :cond_5

    .line 1920
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz v1, :cond_4

    .line 1921
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getNotificationIconsOnlyContainerHeight()I

    move-result v1

    goto :goto_1

    :cond_4
    move v1, p1

    .line 1923
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v3, v2, v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updatePosition(II)I

    move-result v1

    add-int/2addr v1, v2

    goto :goto_2

    :cond_5
    move v1, v2

    .line 1927
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setIntrinsicPadding(I)V

    .line 1928
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAntiBurnInOffsetX(I)V

    .line 1930
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    .line 1931
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 1932
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    .line 1933
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    .line 1935
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 1936
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->isNotificationIconsOnlyShowing()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->isDetailNotiShowingWhenNIO()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 1937
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateNotificationIconsOnlyPosition(ILcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;)V

    .line 1941
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->getNotiAnimRunning()Z

    move-result p1

    if-nez p1, :cond_8

    .line 1942
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->iconTypeTranslationY:F

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->updateNotiIconPivot(F)V

    goto :goto_3

    .line 1943
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->isBeingDragged()Z

    move-result p1

    if-nez p1, :cond_9

    .line 1944
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->iconTypeTranslationY:F

    invoke-virtual {p1, p0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->updateNotiIconY(F)V

    :cond_9
    :goto_3
    return-void
.end method

.method private reInflateStub(IIIZ)Landroid/view/View;
    .locals 2

    .line 1634
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1636
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1637
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    if-eqz p4, :cond_0

    .line 1639
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    const/4 p4, 0x0

    invoke-virtual {p1, p3, p2, p4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1640
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    goto :goto_0

    .line 1643
    :cond_0
    new-instance p1, Landroid/view/ViewStub;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-direct {p1, p4, p3}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;I)V

    .line 1644
    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setId(I)V

    .line 1645
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    const/4 p0, 0x0

    move-object p1, p0

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 1650
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewStub;

    .line 1651
    invoke-virtual {p0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p1

    :cond_2
    :goto_0
    return-object p1
.end method

.method private reInflateViews()V
    .locals 6

    .line 1723
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1724
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-nez v0, :cond_2

    .line 1725
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateUserSwitcherFlags()V

    .line 1726
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserSwitcherEnabled()Z

    move-result v0

    .line 1727
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchEnabled:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    if-nez v2, :cond_1

    .line 1728
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherEnabled:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v1

    .line 1732
    :goto_1
    sget v0, Lcom/android/systemui/R$id;->keyguard_qs_user_switch_view:I

    sget v2, Lcom/android/systemui/R$id;->keyguard_qs_user_switch_stub:I

    sget v5, Lcom/android/systemui/R$layout;->keyguard_qs_user_switch:I

    invoke-direct {p0, v0, v2, v5, v4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->reInflateStub(IIIZ)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/UserAvatarView;

    .line 1737
    sget v2, Lcom/android/systemui/R$id;->keyguard_user_switcher_view:I

    sget v4, Lcom/android/systemui/R$id;->keyguard_user_switcher_stub:I

    sget v5, Lcom/android/systemui/R$layout;->keyguard_user_switcher:I

    .line 1738
    invoke-direct {p0, v2, v4, v5, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->reInflateStub(IIIZ)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;

    .line 1743
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v4, Lcom/android/systemui/R$id;->keyguard_status_view:I

    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/keyguard/KeyguardStatusView;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-direct {p0, v3, v0, v4, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateViewControllers(Lcom/android/keyguard/KeyguardStatusView;Lcom/android/systemui/statusbar/phone/UserAvatarView;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V

    .line 1746
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v0, :cond_3

    .line 1747
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->updatevisibility()V

    .line 1750
    :cond_3
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->initBottomArea()V

    .line 1753
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    sget v3, Lcom/android/systemui/R$id;->keyguard_indication_area:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    .line 1754
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    sget v3, Lcom/android/systemui/R$id;->keyguard_upper_fingerprint_indication:I

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setUpperTextView(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    .line 1759
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 1760
    invoke-interface {v3}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->getInterpolatedDozeAmount()F

    move-result v3

    .line 1759
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->onDozeAmountChanged(FF)V

    .line 1762
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_4

    .line 1763
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->onThemeChanged()V

    .line 1766
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v0, v2, v1, v1, v2}, Lcom/android/keyguard/KeyguardStatusViewController;->setKeyguardStatusViewVisibility(IZZI)V

    .line 1771
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz v0, :cond_5

    .line 1772
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v0, v2, v1, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->setKeyguardQsUserSwitchVisibility(IZZI)V

    .line 1778
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v0, :cond_6

    .line 1779
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v0, v2, v1, v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setKeyguardUserSwitcherVisibility(IZZI)V

    .line 1785
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setKeyguardBottomAreaVisibility(IZ)V

    return-void
.end method

.method private registerSettingsChangeListener()V
    .locals 3

    .line 6011
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "user_switcher_enabled"

    .line 6012
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSettingsChangeObserver:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$SettingsChangeObserver;

    const/4 v2, 0x0

    .line 6011
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method private replaceToFaceWidget()Lcom/android/systemui/facewidget/KeyguardStatusBase;
    .locals 2

    .line 1423
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_status_view:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1425
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1427
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_clock_container:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1429
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 1431
    :cond_1
    const-class v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    if-nez v0, :cond_2

    .line 1434
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string v0, "Failed to get PluginFaceWidgetManager"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 1438
    :cond_2
    invoke-virtual {v0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->getFaceWidgetContainerWrapper()Lcom/android/systemui/facewidget/KeyguardStatusBase;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1440
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$9;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->setStatusCallback(Lcom/android/systemui/facewidget/KeyguardStatusCallback;)V

    :cond_3
    return-object v0
.end method

.method private resetHorizontalPanelPosition()V
    .locals 1

    const/4 v0, 0x0

    .line 5026
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setHorizontalPanelTranslation(F)V

    return-void
.end method

.method private setClosingWithAlphaFadeout(Z)V
    .locals 0

    .line 4993
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClosingWithAlphaFadeOut:Z

    .line 4994
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->forceNoOverlappingRendering(Z)V

    return-void
.end method

.method private setExpandSettingsPanel(Z)V
    .locals 1

    .line 2507
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    .line 2508
    check-cast v0, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->getQSPanelController()Lcom/android/systemui/qs/QSPanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    check-cast v0, Lcom/android/systemui/qs/QSFragment;

    .line 2509
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->getQSPanelController()Lcom/android/systemui/qs/QSPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->isSettingsPanelExpanding()Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 2510
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    check-cast v0, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->getQSPanelController()Lcom/android/systemui/qs/QSPanelController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setExpandSettingsPanel(Z)V

    .line 2513
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    check-cast v0, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->getQuickQSPanelController()Lcom/android/systemui/qs/QuickQSPanelController;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    check-cast v0, Lcom/android/systemui/qs/QSFragment;

    .line 2514
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->getQuickQSPanelController()Lcom/android/systemui/qs/QuickQSPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->isSettingsPanelExpanding()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 2515
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    check-cast p0, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSFragment;->getQuickQSPanelController()Lcom/android/systemui/qs/QuickQSPanelController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSPanelControllerBase;->setExpandSettingsPanel(Z)V

    :cond_1
    return-void
.end method

.method private setIsFullWidth(Z)V
    .locals 0

    .line 1858
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsFullWidth:Z

    .line 1859
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setIsFullWidth(Z)V

    return-void
.end method

.method private setKeyguardBottomAreaVisibility(IZ)V
    .locals 2

    .line 3380
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    if-eqz p2, :cond_0

    .line 3382
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 3383
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getKeyguardFadingAwayDelay()J

    move-result-wide v0

    .line 3382
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 3384
    invoke-interface {p2}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->getShortenedFadingAwayDuration()J

    move-result-wide v0

    .line 3383
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 3384
    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardBottomAreaInvisibleEndRunnable:Ljava/lang/Runnable;

    .line 3385
    invoke-virtual {p1, p0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 3386
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    .line 3396
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3398
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 3390
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 3392
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3393
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method private setKeyguardHeadsUpShowingAmount(F)V
    .locals 0

    .line 4934
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardHeadsUpShowingAmount:F

    .line 4935
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeaderKeyguardAlpha()V

    return-void
.end method

.method private setLaunchingAffordance(Z)V
    .locals 1

    .line 5141
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchingAffordance:Z

    .line 5142
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->getLeftIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    .line 5143
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardAffordanceHelperCallback:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$KeyguardAffordanceHelperCallback;->getRightIcon()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/KeyguardAffordanceView;->setLaunchingAffordance(Z)V

    .line 5145
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setLaunchingAffordance(Z)V

    return-void
.end method

.method private setListening(Z)V
    .locals 1

    .line 4656
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setListening(Z)V

    .line 4657
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_0

    return-void

    .line 4658
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/qs/QS;->setListening(Z)V

    return-void
.end method

.method private setOverScrolling(Z)V
    .locals 1

    .line 3236
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    .line 3237
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    .line 3238
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/qs/QS;->setOverscrolling(Z)V

    .line 3240
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setOverscrolling(Z)V

    return-void
.end method

.method private setQSClippingBounds()V
    .locals 10

    .line 3583
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeQsExpansionFraction()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculateQsBottomPosition(F)I

    move-result v0

    .line 3584
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeQsExpansionFraction()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    const/4 v3, 0x0

    if-gtz v1, :cond_1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    move v9, v3

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    move v9, v1

    .line 3586
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-nez v1, :cond_7

    .line 3587
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTransitioningToFullShadeProgress:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2

    .line 3590
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTransitionToFullShadeQSPosition:I

    goto :goto_2

    .line 3592
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQSEdgePosition()F

    move-result v1

    .line 3593
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v2, :cond_3

    .line 3594
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQSEdgePosition()F

    move-result v1

    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShelfHeight:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 3596
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setNotificationScrimTop(F)V

    .line 3597
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 3598
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    int-to-float v0, v0

    .line 3604
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-int v0, v0

    goto :goto_2

    .line 3607
    :cond_5
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET_BG:Z

    if-eqz v0, :cond_6

    .line 3609
    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    goto :goto_2

    :cond_6
    float-to-int v0, v1

    :goto_2
    int-to-float v0, v0

    .line 3615
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOverStretchAmount:F

    add-float/2addr v0, v1

    float-to-int v0, v0

    .line 3616
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getBottom()I

    move-result v1

    .line 3619
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getRight()I

    move-result v2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayRightInset:I

    add-int/2addr v2, v4

    goto :goto_3

    :cond_7
    if-lez v0, :cond_8

    .line 3622
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSplitShadeNotificationsTopPadding:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setNotificationScrimTop(F)V

    .line 3624
    :cond_8
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSplitShadeNotificationsTopPadding:I

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 3625
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeight()I

    move-result v1

    .line 3626
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getLeft()I

    move-result v3

    .line 3627
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getRight()I

    move-result v2

    :goto_3
    move v8, v1

    move v7, v2

    move v5, v3

    .line 3630
    invoke-static {v0, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    move-object v4, p0

    .line 3631
    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->applyQSClippingBounds(IIIIZ)V

    return-void
.end method

.method private setQsExpandImmediate(Z)V
    .locals 1

    .line 7649
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    .line 7650
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    .line 7651
    check-cast v0, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSFragment;->setQsExpandImmediate(Z)V

    .line 7652
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    if-eqz p0, :cond_1

    .line 7653
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setQsExpandImmediate(Z)V

    :cond_1
    return-void
.end method

.method private setQsExpansion(F)V
    .locals 11

    .line 3428
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3429
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQSMinHeight()V

    .line 3431
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    int-to-float v0, v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 3432
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    .line 3433
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v1, v0

    cmpl-float v1, p1, v1

    const-string v4, "101"

    if-lez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-nez v1, :cond_3

    .line 3435
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpanded(Z)V

    .line 3437
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "1006"

    .line 3438
    invoke-static {v4, v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v0, "QPP101"

    .line 3440
    invoke-static {v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_5

    .line 3442
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_5

    .line 3443
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpanded(Z)V

    .line 3445
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-ne v0, v3, :cond_4

    .line 3446
    invoke-static {v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v0, "QPN001"

    .line 3448
    invoke-static {v0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    .line 3453
    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-nez v0, :cond_6

    cmpl-float v0, p1, v1

    if-nez v0, :cond_6

    .line 3454
    invoke-static {}, Lcom/android/systemui/util/SystemUIAnalytics;->getCurrentScreenID()Ljava/lang/String;

    move-result-object v0

    if-eq v0, v4, :cond_6

    .line 3455
    invoke-static {v4}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    .line 3459
    :cond_6
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v4, 0x2

    if-eq v0, v3, :cond_7

    if-ne v0, v4, :cond_9

    .line 3461
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 3462
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    if-eqz v5, :cond_8

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v8, v7

    sub-float/2addr v6, v8

    sub-int/2addr v5, v7

    int-to-float v5, v5

    div-float/2addr v6, v5

    goto :goto_2

    :cond_8
    move v6, v1

    .line 3461
    :goto_2
    invoke-interface {v0, v6}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setQsExpansion(F)V

    .line 3466
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->isNotificationIconsOnlyShowing()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3467
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    if-eqz v0, :cond_a

    .line 3468
    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    move-result v0

    if-nez v0, :cond_a

    .line 3469
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isDlsViewEnabled()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 3470
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isShortcutPreviewSwipingInProgress()Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz v0, :cond_a

    .line 3472
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    invoke-virtual {v0, p1, v5, v6, v7}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->calculateAlphaByQsExpansion(FZII)V

    .line 3475
    :cond_a
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    .line 3476
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    .line 3477
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->requestScrollerTopPaddingUpdate(Z)V

    .line 3478
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeaderKeyguardAlpha()V

    .line 3479
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq p1, v4, :cond_b

    if-ne p1, v3, :cond_c

    .line 3480
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    .line 3481
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications()V

    .line 3482
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateBigClockAlpha()V

    .line 3485
    :cond_c
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 3486
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    .line 3489
    :cond_d
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isUnlockingDisabled()Z

    move-result p1

    if-nez p1, :cond_e

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 3490
    invoke-interface {p1}, Lcom/android/systemui/classifier/FalsingCollector;->shouldEnforceBouncer()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 3491
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Lcom/android/systemui/statusbar/phone/StatusBar;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    :cond_e
    move p1, v2

    .line 3494
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_10

    .line 3495
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpansionListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;

    .line 3498
    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    if-eqz v5, :cond_f

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iget v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v8, v7

    sub-float/2addr v6, v8

    sub-int/2addr v5, v7

    int-to-float v5, v5

    div-float/2addr v6, v5

    goto :goto_4

    :cond_f
    move v6, v1

    .line 3495
    :goto_4
    invoke-interface {v0, v6}, Lcom/android/systemui/statusbar/phone/PanelExpansionListener;->onQsExpansionChanged(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 3506
    :cond_10
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz p1, :cond_11

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz p1, :cond_11

    .line 3507
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/android/systemui/statusbar/PanelStateNotifier;->setQsExpanded(Landroid/content/Context;Z)V

    .line 3509
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchStatusBarState(Z)V

    goto :goto_5

    .line 3512
    :cond_11
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/android/systemui/statusbar/PanelStateNotifier;->setQsExpanded(Landroid/content/Context;Z)V

    .line 3514
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result p1

    if-eq p1, v4, :cond_12

    .line 3515
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->dispatchStatusBarState(Z)V

    .line 3522
    :cond_12
    :goto_5
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelCarrierLabelManager:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateLabelVisibility()V

    .line 3525
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz p1, :cond_13

    .line 3526
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateCapturedBlurRadius()V

    :cond_13
    return-void
.end method

.method private setQsExpansionEnabled()V
    .locals 1

    .line 2402
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    .line 2403
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpansionEnabled()Z

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setHeaderClickable(Z)V

    return-void
.end method

.method private setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    .line 1560
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 1561
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    return-void
.end method

.method private shouldMediaPlayerIntercept(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 2730
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2733
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingPointer:I

    move v0, v1

    .line 2735
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 2736
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    .line 2738
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMediaPlayerBar:Lcom/android/systemui/qs/bar/QSMediaPlayerBar;

    invoke-virtual {v0}, Lcom/android/systemui/qs/bar/QSMediaPlayerBar;->isPlayerExpanded()Z

    move-result v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_2

    .line 2739
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaDraggedHeight:F

    cmpl-float v0, v0, v3

    if-lez v0, :cond_1

    .line 2742
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 2743
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    .line 2744
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    .line 2745
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 2746
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->notifyExpandingFinished()V

    .line 2747
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialHeightOnTouch:F

    .line 2748
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchY:F

    .line 2749
    iput v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInitialTouchX:F

    .line 2750
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->cancelLongPress()V

    return v1

    .line 2755
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaPlayerExpanding:Z

    goto :goto_0

    .line 2758
    :cond_2
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaDraggedHeight:F

    cmpl-float p1, p1, v3

    if-lez p1, :cond_3

    .line 2759
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaPlayerExpanding:Z

    goto :goto_0

    .line 2761
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isOverScrollEnable()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 2762
    iput-boolean v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaPlayerScrolling:Z

    .line 2763
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onMediaPlayerScrollStarted()V

    :goto_0
    return v4

    :cond_4
    return v1
.end method

.method private shouldQuickSettingsIntercept(FFF)Z
    .locals 8

    .line 4064
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpansionEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCollapsedOnDown:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 4066
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 4067
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isUpwardScrolling()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_2

    .line 4071
    :cond_1
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 4072
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0}, Lcom/android/systemui/knox/KnoxStateMonitor;->isPanelExpandEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 4076
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->disableExpandOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 4080
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object v0

    goto :goto_1

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 4084
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 4085
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v2

    .line 4084
    invoke-static {v2}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v2

    .line 4086
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v4, 0x1

    .line 4089
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsInterceptRegion:Landroid/graphics/Region;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 4090
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getX()F

    move-result v3

    float-to-int v3, v3

    .line 4091
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 4092
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getX()F

    move-result v6

    float-to-int v6, v6

    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v7

    add-int/2addr v6, v7

    .line 4093
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    .line 4089
    invoke-virtual {v2, v3, v5, v6, v0}, Landroid/graphics/Region;->set(IIII)Z

    .line 4095
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsInterceptRegion:Landroid/graphics/Region;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->updateRegionForNotch(Landroid/graphics/Region;)V

    .line 4096
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsInterceptRegion:Landroid/graphics/Region;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Region;->contains(II)Z

    move-result v0

    .line 4098
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v2, :cond_8

    if-nez v0, :cond_6

    const/4 v0, 0x0

    cmpg-float p3, p3, v0

    if-gez p3, :cond_7

    .line 4099
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInQsArea(FF)Z

    move-result p0

    if-eqz p0, :cond_7

    :cond_6
    move v1, v4

    :cond_7
    return v1

    :cond_8
    return v0

    :cond_9
    :goto_2
    return v1
.end method

.method private startQsSizeChangeAnimation(II)V
    .locals 2

    .line 1863
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 1864
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1865
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    .line 1867
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x12c

    .line 1868
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 1869
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1870
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$10;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$10;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1879
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$11;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$11;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1885
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsSizeChangeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private traceQsJank(ZZ)V
    .locals 2

    .line 2786
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    move-result-object v0

    const/4 v1, 0x5

    if-eqz p1, :cond_0

    .line 2788
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 2791
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    goto :goto_0

    .line 2793
    :cond_1
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    :goto_0
    return-void
.end method

.method private trackMovement(Landroid/view/MotionEvent;)V
    .locals 0

    .line 3937
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method private unregisterSettingsChangeListener()V
    .locals 1

    .line 6019
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSettingsChangeObserver:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$SettingsChangeObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method private updateBigClockAlpha()V
    .locals 0

    return-void
.end method

.method private updateCapturedBlurAnimator()V
    .locals 4

    .line 4238
    new-instance v0, Lcom/android/systemui/qs/TouchAnimator$Builder;

    invoke-direct {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlurredCapture:Landroid/view/View;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const-string v3, "alpha"

    .line 4239
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/qs/TouchAnimator$Builder;->addFloat(Ljava/lang/Object;Ljava/lang/String;[F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    const/high16 v1, 0x3f400000    # 0.75f

    .line 4240
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/TouchAnimator$Builder;->setStartDelay(F)Lcom/android/systemui/qs/TouchAnimator$Builder;

    move-result-object v0

    .line 4241
    invoke-virtual {v0}, Lcom/android/systemui/qs/TouchAnimator$Builder;->build()Lcom/android/systemui/qs/TouchAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlurredCaptureAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private updateCapturedBlurRadius()V
    .locals 2

    .line 1372
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeQsExpansionFraction()F

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result v0

    .line 1374
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlurredCaptureAlphaAnimator:Lcom/android/systemui/qs/TouchAnimator;

    if-eqz v1, :cond_1

    .line 1375
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/TouchAnimator;->setPosition(F)V

    .line 1376
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CaptureBlurView alpha : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlurredCapture:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "BlurredCaptureStorage"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private updateClock()V
    .locals 3

    .line 2374
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isShortcutPreviewSwipingInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2378
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardOnlyContentAlpha:F

    mul-float/2addr v0, v1

    .line 2380
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    const/4 v2, 0x0

    cmpl-float v2, v1, v2

    if-ltz v2, :cond_1

    .line 2381
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardStatusViewController;->setAlpha(F)V

    .line 2387
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz v1, :cond_2

    .line 2388
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->setAlpha(F)V

    .line 2390
    :cond_2
    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz p0, :cond_3

    .line 2391
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setAlpha(F)V

    :cond_3
    return-void
.end method

.method private updateClockAppearance()V
    .locals 25

    move-object/from16 v0, p0

    .line 1970
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v7

    .line 1971
    iget v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIndicationBottomPadding:I

    iget v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAmbientIndicationBottomPadding:I

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 1972
    iget v10, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarHeaderHeightKeyguard:I

    .line 1973
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v15

    .line 1974
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 1975
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getVisibleNotificationCount()I

    move-result v1

    const/16 v23, 0x1

    const/16 v24, 0x0

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaDataManager;->hasActiveMedia()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move/from16 v1, v24

    goto :goto_1

    :cond_1
    :goto_0
    move/from16 v1, v23

    .line 1976
    :goto_1
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v2, v1}, Lcom/android/keyguard/KeyguardStatusViewController;->setHasVisibleNotifications(Z)V

    .line 1978
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUnlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isScreenOffAnimationPlaying()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 1979
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    .line 1984
    :goto_2
    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    .line 1985
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1987
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isNotificationIconsOnlyOn()Z

    move-result v2

    if-nez v2, :cond_6

    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isLandscapeNotificationOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_5

    .line 1993
    :cond_3
    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->isTypoNotificationOn()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, 0x2

    goto :goto_3

    :cond_4
    move/from16 v1, v24

    .line 1995
    :goto_3
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotGoneChildCount()I

    move-result v2

    if-lez v2, :cond_5

    .line 1996
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getIntrinsicContentHeight()I

    move-result v2

    goto :goto_4

    :cond_5
    move/from16 v2, v24

    :goto_4
    move/from16 v20, v1

    move v5, v2

    goto :goto_6

    .line 1989
    :cond_6
    :goto_5
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz v1, :cond_7

    .line 1990
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getNotificationIconsOnlyContainerHeight()I

    move-result v1

    move v5, v1

    move/from16 v20, v23

    goto :goto_6

    :cond_7
    move/from16 v20, v23

    move/from16 v5, v24

    goto :goto_6

    :cond_8
    move/from16 v5, v24

    move/from16 v20, v5

    .line 2000
    :goto_6
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    .line 2002
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculateNotificationsTopPadding()F

    move-result v1

    float-to-int v4, v1

    .line 2004
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeQsExpansionFraction()F

    move-result v6

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 2006
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardStatusViewController;->getHeight()I

    move-result v8

    const/4 v9, 0x0

    .line 2009
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->hasCustomClock()Z

    move-result v11

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2010
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getVisibleNotificationCount()I

    move-result v1

    if-eqz v1, :cond_9

    move/from16 v12, v23

    goto :goto_7

    :cond_9
    move/from16 v12, v24

    :goto_7
    iget v13, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    iget v14, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOverStretchAmount:F

    .line 2013
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getUnlockedStackScrollerPadding()I

    move-result v16

    .line 2014
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeQsExpansionFraction()F

    move-result v17

    iget v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayTopInset:I

    move/from16 v18, v1

    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    move/from16 v19, v1

    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 2018
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardStatusViewController;->getCurrentClockType()I

    move-result v21

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda16;

    move-object/from16 v22, v1

    invoke-direct {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda16;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 2000
    invoke-virtual/range {v2 .. v22}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->setup(IIIFIIIIZZFFZIFIZIILjava/util/function/Supplier;)V

    .line 2044
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->run(Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;)V

    .line 2046
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    invoke-interface {v1}, Lcom/android/systemui/pluginlock/PluginLockData;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2047
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const/4 v3, 0x3

    invoke-interface {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockData;->getTop(I)I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 2048
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const/4 v3, 0x4

    invoke-interface {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockData;->getTop(I)I

    move-result v2

    int-to-float v2, v2

    iput v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->iconTypeTranslationY:F

    .line 2049
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    invoke-interface {v2, v3}, Lcom/android/systemui/pluginlock/PluginLockData;->getPaddingStart(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setTranslationX(F)V

    .line 2051
    :cond_a
    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-eqz v1, :cond_b

    .line 2052
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarHeight()I

    move-result v2

    iput v2, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->userSwitchY:I

    .line 2054
    :cond_b
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isAddOrRemoveAnimationPending()Z

    move-result v1

    if-nez v1, :cond_d

    .line 2055
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    if-eqz v1, :cond_c

    goto :goto_8

    :cond_c
    move/from16 v1, v24

    goto :goto_9

    :cond_d
    :goto_8
    move/from16 v1, v23

    .line 2056
    :goto_9
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    iget v5, v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    iget v6, v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockScale:F

    iget-object v7, v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->contentsContainerPosition:Ljava/util/List;

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v1

    invoke-virtual/range {v2 .. v7}, Lcom/android/keyguard/KeyguardStatusViewController;->updatePosition(IIFZLjava/util/List;)V

    .line 2059
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    if-eqz v2, :cond_e

    .line 2060
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    iget v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->userSwitchY:I

    invoke-virtual {v2, v4, v3, v1}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->updatePosition(IIZ)V

    .line 2065
    :cond_e
    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v2, :cond_f

    .line 2066
    iget-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v4, v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockX:I

    iget v3, v3, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->userSwitchY:I

    invoke-virtual {v2, v4, v3, v1}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->updatePosition(IIZ)V

    .line 2071
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateNotificationTranslucency()V

    .line 2072
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateClock()V

    return-void
.end method

.method private updateDozingVisibilities(Z)V
    .locals 4

    .line 4810
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4817
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    const-wide/16 v2, 0x168

    .line 4818
    invoke-direct {p0, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateKeyguardStatusBarIn(J)V

    .line 4820
    :cond_0
    sget-boolean p1, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz p1, :cond_2

    .line 4821
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-eqz p0, :cond_1

    const/16 v1, 0x8

    :cond_1
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    :cond_2
    return-void
.end method

.method private updateGestureExclusionRect()V
    .locals 2

    .line 1842
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculateGestureExclusionRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 1843
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_0

    .line 1844
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 1843
    :goto_0
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setSystemGestureExclusionRects(Ljava/util/List;)V

    return-void
.end method

.method private updateHeader()V
    .locals 2

    .line 4382
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4383
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeaderKeyguardAlpha()V

    .line 4385
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    return-void
.end method

.method private updateHeaderKeyguardAlpha()V
    .locals 5

    .line 4432
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 4437
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_1

    return-void

    .line 4442
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeQsExpansionFraction()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    sub-float v0, v1, v0

    .line 4443
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    .line 4447
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardContentsAlpha()F

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBarAnimateAlpha:F

    mul-float/2addr v0, v2

    .line 4449
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardHeadsUpShowingAmount:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    .line 4450
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 4452
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFirstBypassAttempt:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4453
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->shouldListenForFace()Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDelayShowingKeyguardStatusBar:Z

    if-eqz v1, :cond_5

    :cond_4
    const/4 v1, 0x1

    goto :goto_0

    :cond_5
    move v1, v2

    .line 4455
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-eqz v0, :cond_6

    .line 4456
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-nez p0, :cond_6

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x4

    .line 4455
    :goto_1
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    return-void
.end method

.method private updateHeadsUpVisibility()V
    .locals 2

    .line 4949
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    if-nez v1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpPinnedMode:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->setHeadsUpVisible(Z)V

    return-void
.end method

.method private updateKeyguardBottomAreaAlpha()V
    .locals 5

    .line 4460
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4464
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 4465
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isShortcutPreviewSwipingInProgress()Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4466
    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardGoingAway()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 4477
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isUnlockHintRunning()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const v0, 0x3f733333    # 0.95f

    .line 4478
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 4476
    invoke-static {v0, v3, v1, v3, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    .line 4479
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeQsExpansionFraction()F

    move-result v2

    sub-float/2addr v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    .line 4483
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getFaceWidgetAlpha()F

    move-result v0

    cmpg-float v2, v0, v1

    if-gez v2, :cond_3

    return-void

    .line 4489
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isShortcutPreviewAnimationPlaying()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 4490
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isShortcutDCAnimationPlaying()Z

    move-result v2

    if-nez v2, :cond_4

    .line 4494
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v4

    invoke-virtual {v2, v4, v0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    .line 4495
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object v4

    invoke-virtual {v2, v4, v0, v3}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->updateIconAlpha(Lcom/android/systemui/statusbar/KeyguardAffordanceView;FZ)V

    .line 4496
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAffordanceAlpha(F)V

    goto :goto_1

    .line 4498
    :cond_4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setAffordanceAlpha(F)V

    .line 4501
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    cmpl-float v4, v0, v1

    if-nez v4, :cond_5

    const/4 v3, 0x4

    :cond_5
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 4504
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getAmbientIndicationContainer()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 4506
    invoke-virtual {v2, v0}, Landroid/view/View;->setAlpha(F)V

    .line 4508
    :cond_6
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    invoke-virtual {v2, v0}, Lcom/android/keyguard/LockIconViewController;->setAlpha(F)V

    .line 4509
    sget-boolean v2, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v2, :cond_7

    .line 4510
    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setAlpha(F)V

    .line 4514
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    if-eqz v2, :cond_9

    .line 4515
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    move v1, v0

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_9
    :goto_3
    return-void
.end method

.method private updateKeyguardStatusBarForHeadsUp()V
    .locals 4

    .line 4919
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    .line 4920
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4921
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowingKeyguardHeadsUp:Z

    if-eq v2, v0, :cond_3

    .line 4922
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowingKeyguardHeadsUp:Z

    .line 4923
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 4924
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    if-eqz v0, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    .line 4925
    :cond_1
    sget-object v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HUN_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 4924
    invoke-static {v2, p0, v3, v0, v1}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    goto :goto_1

    .line 4928
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->KEYGUARD_HEADS_UP_SHOWING_AMOUNT:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    invoke-static {v0, p0, v3}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->applyImmediately(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;F)V

    :cond_3
    :goto_1
    return-void
.end method

.method private updateMaxDisplayedNotifications(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1816
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeMaxKeyguardNotifications()I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 1818
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMaxAllowedKeyguardNotifications:I

    .line 1822
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    .line 1823
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMaxAllowedKeyguardNotifications:I

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setMaxDisplayedNotifications(I)V

    goto :goto_0

    .line 1827
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setMaxDisplayedNotifications(I)V

    :goto_0
    return-void
.end method

.method private updateMaxHeadsUpTranslation()V
    .locals 2

    .line 4743
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 4744
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getHeight()I

    move-result v1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNavigationBarBottomHeight:I

    .line 4743
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setHeadsUpBoundaries(II)V

    return-void
.end method

.method private updateNotificationTranslucency()V
    .locals 3

    .line 4319
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4323
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isShortcutPreviewSwipingInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 4327
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpanded()Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 4331
    :cond_2
    const-class v0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    .line 4332
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/iconsOnly/NotificationIconTransitionController;->isTransformAnimating()Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    .line 4337
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClosingWithAlphaFadeOut:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    .line 4338
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v1

    if-nez v1, :cond_4

    .line 4339
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getFadeoutAlpha()F

    move-result v0

    .line 4341
    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 4342
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-nez v1, :cond_5

    .line 4343
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v1, v1, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockAlpha:F

    mul-float/2addr v0, v1

    .line 4345
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setAlpha(F)V

    return-void
.end method

.method private updatePanelExpanded()V
    .locals 3

    .line 4245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 4246
    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelExpanded:Z

    if-eq v1, v0, :cond_2

    .line 4247
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->setIsPanelExpanded(Z)V

    .line 4248
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarTouchableRegionManager:Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBarTouchableRegionManager;->setPanelExpanded(Z)V

    .line 4249
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->setPanelExpanded(Z)V

    .line 4250
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelExpanded:Z

    .line 4253
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_3

    .line 4254
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getCurrentNotiScale()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 4255
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "current noti scale : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->getCurrentNotiScale()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    :cond_3
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_PANEL_BLUR_FOR_MASSIVE:Z

    if-eqz v0, :cond_4

    .line 4260
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlurredCaptureStorage:Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelExpanded:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->panelExpansionChanged(ZZ)V

    .line 4263
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    if-eqz v0, :cond_5

    .line 4264
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelExpanded:Z

    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->updatePanelExpanded(Z)V

    :cond_5
    return-void
.end method

.method private updateQSExpansionEnabledAmbient()V
    .locals 2

    .line 3568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getTopPadding()F

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQuickQsOffsetHeight:F

    sub-float/2addr v0, v1

    .line 3569
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabledAmbient:Z

    .line 3570
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansionEnabled()V

    return-void
.end method

.method private updateQSMinHeight()V
    .locals 3

    .line 7001
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    .line 7002
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    .line 7003
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v2, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    .line 7004
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQuickQsOffsetHeight:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_2

    float-to-int v0, v2

    .line 7005
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    .line 7007
    :cond_2
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_3

    .line 7008
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    :cond_3
    return-void
.end method

.method private updateQsExpansion()V
    .locals 3

    .line 3531
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isShortcutPreviewSwipingInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3533
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeQsExpansionFraction()F

    move-result v0

    .line 3534
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getHeaderTranslation()F

    move-result v2

    invoke-interface {v1, v0, v2}, Lcom/android/systemui/plugins/qs/QS;->setQsExpansion(FF)V

    .line 3535
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->setQsExpansion(F)V

    .line 3536
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculateQsBottomPosition(F)I

    move-result v1

    .line 3537
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setQsPosition(FI)V

    .line 3538
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQSClippingBounds()V

    .line 3539
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setQsExpansionFraction(F)V

    .line 3540
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->setQsPanelExpansion(F)V

    .line 3541
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    const/4 v0, 0x0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_1

    .line 3542
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateQsFrameTranslation()V
    .locals 2

    .line 4696
    iget v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mOverExpansion:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTranslationForFullShadeTransition:F

    add-float/2addr v0, v1

    .line 4697
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    return-void
.end method

.method private updateQsState()V
    .locals 3

    .line 3403
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setQsExpanded(Z)V

    .line 3404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionFromOverscroll:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setScrollingEnabled(Z)V

    .line 3410
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerOverscrolling:Z

    if-nez v1, :cond_2

    .line 3412
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    .line 3415
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    .line 3416
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_3

    .line 3417
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateKeyguardStatusBarInvisibleEndRunnable:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x168

    .line 3419
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateKeyguardStatusBarIn(J)V

    .line 3423
    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_5

    return-void

    .line 3424
    :cond_5
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    invoke-interface {v0, p0}, Lcom/android/systemui/plugins/qs/QS;->setExpanded(Z)V

    return-void
.end method

.method private updateStatusBarIcons()V
    .locals 3

    .line 5072
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isPanelVisibleBecauseOfHeadsUp()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isFullWidth()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5073
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getOpeningHeight()F

    move-result v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 5075
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 5078
    :cond_2
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    if-eq v0, v2, :cond_3

    .line 5079
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    .line 5080
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayId:I

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_3
    return-void
.end method

.method private updateUserSwitcherFlags()V
    .locals 4

    .line 6003
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    const v1, 0x1110107

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_MULTI_USER:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherEnabled:Z

    if-eqz v0, :cond_1

    .line 6005
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v3, Lcom/android/systemui/R$bool;->config_keyguard_user_switch_opens_qs_details:I

    .line 6006
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchEnabled:Z

    return-void
.end method

.method private updateViewControllers(Lcom/android/keyguard/KeyguardStatusView;Lcom/android/systemui/statusbar/phone/UserAvatarView;Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)V
    .locals 1

    .line 1506
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;

    invoke-interface {v0, p1}, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent$Factory;->build(Lcom/android/keyguard/KeyguardStatusView;)Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;

    move-result-object p1

    .line 1507
    invoke-interface {p1}, Lcom/android/keyguard/dagger/KeyguardStatusViewComponent;->getKeyguardStatusViewController()Lcom/android/keyguard/KeyguardStatusViewController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    .line 1508
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 1510
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBarViewComponentFactory:Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;

    .line 1511
    invoke-interface {p1, p3}, Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent$Factory;->build(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent;

    move-result-object p1

    .line 1513
    invoke-interface {p1}, Lcom/android/keyguard/dagger/KeyguardStatusBarViewComponent;->getKeyguardStatusBarViewController()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguarStatusBarViewController:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarViewController;

    .line 1514
    invoke-virtual {p1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 1516
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    const/4 p3, 0x0

    if-eqz p1, :cond_0

    .line 1519
    invoke-virtual {p1, p3}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    .line 1523
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->replaceToFaceWidget()Lcom/android/systemui/facewidget/KeyguardStatusBase;

    move-result-object p1

    .line 1524
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/KeyguardStatusViewController;->setKeyguardStatusBase(Lcom/android/systemui/facewidget/KeyguardStatusBase;)V

    const/4 p1, 0x0

    .line 1527
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 1528
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    const/4 p1, 0x1

    if-eqz p2, :cond_1

    .line 1532
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchComponentFactory:Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;

    .line 1533
    invoke-interface {p3, p2}, Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent$Factory;->build(Lcom/android/systemui/statusbar/phone/UserAvatarView;)Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent;

    move-result-object p2

    .line 1535
    invoke-interface {p2}, Lcom/android/keyguard/dagger/KeyguardQsUserSwitchComponent;->getKeyguardQsUserSwitchController()Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    .line 1536
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->setNotificationPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 1537
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->init()V

    .line 1538
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherEnabled(Z)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 1540
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherComponentFactory:Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;

    .line 1541
    invoke-interface {p2, p4}, Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent$Factory;->build(Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherView;)Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent;

    move-result-object p2

    .line 1543
    invoke-interface {p2}, Lcom/android/keyguard/dagger/KeyguardUserSwitcherComponent;->getKeyguardUserSwitcherController()Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    .line 1544
    invoke-virtual {p2}, Lcom/android/systemui/util/ViewController;->init()V

    .line 1545
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherEnabled(Z)V

    goto :goto_0

    .line 1547
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setKeyguardUserSwitcherEnabled(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 5545
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public addTrackingHeadsUpListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;)V"
        }
    .end annotation

    .line 5383
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public animateCloseQs(Z)V
    .locals 2

    .line 2489
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 2490
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsAnimatorExpand:Z

    if-nez v1, :cond_0

    return-void

    .line 2493
    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    .line 2494
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 2495
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    :cond_1
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const/4 p1, 0x1

    .line 2497
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    return-void
.end method

.method public animateToFullShade(J)V
    .locals 1

    .line 2396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->goToFullShade(J)V

    .line 2397
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    const/4 p1, 0x1

    .line 2398
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    return-void
.end method

.method public animateToggleQSExpansion()V
    .locals 4

    .line 2565
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 2566
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 2567
    invoke-virtual {p0, v2, v3, v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FILjava/lang/Runnable;Z)V

    goto :goto_0

    .line 2568
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabledPolicy:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabledAmbient:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 2569
    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FILjava/lang/Runnable;Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public applyLaunchAnimationProgress(F)V
    .locals 4

    const-wide/16 v0, 0x52

    const-wide/16 v2, 0x64

    .line 5372
    invoke-static {p1, v0, v1, v2, v3}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->getProgress(FJJ)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5374
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHideIconsDuringLaunchAnimation:Z

    if-eq p1, v1, :cond_1

    .line 5375
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHideIconsDuringLaunchAnimation:Z

    if-nez p1, :cond_1

    .line 5377
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayId:I

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/CommandQueue;->recomputeDisableFlags(IZ)V

    :cond_1
    return-void
.end method

.method public blockExpansionForCurrentTouch()V
    .locals 1

    .line 5425
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    return-void
.end method

.method public canCameraGestureBeLaunched()Z
    .locals 3

    .line 5159
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isCameraAllowedByAdmin()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 5163
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->resolveCameraIntent()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5166
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_1

    goto :goto_0

    .line 5167
    :cond_1
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 5168
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 5169
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isForegroundComponentName(Landroid/content/ComponentName;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    .line 5170
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result p0

    if-nez p0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method protected canCollapsePanelOnTouch()Z
    .locals 2

    .line 4107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInSettings()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-ne v0, v1, :cond_0

    return v1

    .line 4111
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isScrolledToBottom()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4115
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInSettings()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsPanelCollapseOnQQS:Z

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :cond_3
    :goto_0
    return v1
.end method

.method public cancelAnimation()V
    .locals 0

    .line 2478
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    return-void
.end method

.method public clearExpandQsAtOnceResources()V
    .locals 0

    .line 1666
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandQSAtOnceController:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->clearResources()V

    return-void
.end method

.method public clearNotificationEffects()V
    .locals 0

    .line 5093
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotificationEffects()V

    return-void
.end method

.method public closeQs()V
    .locals 1

    .line 2473
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelQsAnimation()V

    .line 2474
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    return-void
.end method

.method public closeQsDetail()V
    .locals 0

    .line 4792
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->closeDetail()V

    return-void
.end method

.method public closeUserSwitcherIfOpen()Z
    .locals 1

    .line 5995
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 5996
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->closeSwitcherIfOpenAndNotSimple(Z)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public collapse(ZF)V
    .locals 1

    .line 2454
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->canPanelBeCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2469
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->collapse(ZF)V

    return-void
.end method

.method public createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;
    .locals 2

    .line 5570
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    return-object v0
.end method

.method public bridge synthetic createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnLayoutChangeListener;
    .locals 0

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->createLayoutChangeListener()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnLayoutChangeListener;

    move-result-object p0

    return-object p0
.end method

.method protected createOnConfigurationChangedListener()Lcom/android/systemui/statusbar/phone/PanelViewController$OnConfigurationChangedListener;
    .locals 2

    .line 5973
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$OnConfigurationChangedListener;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$1;)V

    return-object v0
.end method

.method public createRemoteInputDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;
    .locals 0

    .line 5458
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->createDelegate()Lcom/android/systemui/statusbar/RemoteInputController$Delegate;

    move-result-object p0

    return-object p0
.end method

.method protected createTouchHandler()Lcom/android/systemui/statusbar/phone/PanelViewController$TouchHandler;
    .locals 1

    .line 5575
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$21;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    return-object v0
.end method

.method public dozeTimeTick()V
    .locals 2

    .line 5338
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->dozeTimeTick()V

    .line 5339
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardStatusViewController;->dozeTimeTick()V

    .line 5340
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mInterpolatedDarkAmount:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 5341
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications()V

    .line 5343
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSubScreenManager:Lcom/android/systemui/subscreen/SubScreenManager;

    if-eqz v0, :cond_1

    .line 5344
    invoke-virtual {v0}, Lcom/android/systemui/subscreen/SubScreenManager;->dozeTimeTick()V

    .line 5346
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mCoverScreenManager:Lcom/android/systemui/cover/CoverScreenManager;

    if-eqz p0, :cond_2

    .line 5347
    invoke-virtual {p0}, Lcom/android/systemui/cover/CoverScreenManager;->dozeTimeTick()V

    :cond_2
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 5430
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5431
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    gestureExclusionRect: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculateGestureExclusionRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " applyQSClippingImmediately: top("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClipTop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") bottom("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClipBottom:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ") qsVisible("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5435
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    if-eqz v0, :cond_0

    .line 5436
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5439
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelCarrierLabelManager:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    if-eqz v0, :cond_1

    .line 5440
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5443
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz v0, :cond_2

    .line 5444
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 5447
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    if-eqz p0, :cond_3

    .line 5449
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public expand(Z)V
    .locals 0

    .line 4663
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->expand(Z)V

    const/4 p1, 0x1

    .line 4672
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    return-void
.end method

.method public expandWithDetail()V
    .locals 1

    const/4 v0, 0x1

    .line 2522
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setExpandSettingsPanel(Z)V

    .line 2523
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expandWithQs()V

    return-void
.end method

.method public expandWithQs()V
    .locals 2

    .line 2527
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpansionEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2529
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpandImmediate(Z)V

    .line 2533
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setShouldShowShelfOnly(Z)V

    .line 2535
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2536
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expand(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 2538
    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    const/4 v1, 0x0

    .line 2539
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    :goto_0
    return-void
.end method

.method public expandWithQsDetail(Lcom/android/systemui/plugins/qs/DetailAdapter;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2544
    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    const/4 v0, 0x0

    .line 2545
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    .line 2548
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    .line 2549
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQSDetailDisplayer:Lcom/android/systemui/qs/QSDetailDisplayer;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getHeight()I

    move-result v2

    neg-int v2, v2

    invoke-virtual {v1, p1, v0, v2}, Lcom/android/systemui/qs/QSDetailDisplayer;->showDetailAdapter(Lcom/android/systemui/plugins/qs/DetailAdapter;II)V

    .line 2550
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2551
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->determineAccessibilityPaneTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setAccessibilityPaneTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public expandWithoutQs()V
    .locals 2

    .line 2556
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isQsExpanded()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2557
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FI)V

    goto :goto_0

    .line 2559
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->expand(Z)V

    :goto_0
    return-void
.end method

.method public fadeOut(JJLjava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;
    .locals 1

    .line 5535
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p3, p4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/animation/Interpolators;->ALPHA_OUT:Landroid/view/animation/Interpolator;

    .line 5536
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p5}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    return-object p0
.end method

.method public fling(FZ)V
    .locals 1

    .line 2575
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    check-cast v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;->mBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGestureRecorder()Lcom/android/systemui/statusbar/GestureRecorder;

    .line 2579
    invoke-super {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->fling(FZ)V

    return-void
.end method

.method protected flingExpands(FFFF)Z
    .locals 0

    .line 3087
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/phone/PanelViewController;->flingExpands(FFFF)Z

    move-result p1

    .line 3090
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method public flingSettings(FI)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 3965
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->flingSettings(FILjava/lang/Runnable;Z)V

    return-void
.end method

.method protected flingSettings(FILjava/lang/Runnable;Z)V
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    if-eq p2, v1, :cond_1

    .line 3989
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v2, :cond_0

    .line 3990
    invoke-interface {v2}, Lcom/android/systemui/plugins/qs/QS;->closeDetail()V

    :cond_0
    move v2, v0

    goto :goto_1

    .line 3985
    :cond_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    goto :goto_0

    .line 3982
    :cond_2
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    :goto_0
    int-to-float v2, v2

    .line 3994
    :goto_1
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    cmpl-float v3, v2, v3

    const/4 v4, 0x0

    if-nez v3, :cond_5

    if-eqz p3, :cond_3

    .line 3996
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    :cond_3
    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    move v1, v4

    .line 3998
    :goto_2
    invoke-direct {p0, v4, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->traceQsJank(ZZ)V

    return-void

    .line 4003
    :cond_5
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addQSExpandTouchLog(I)V

    if-nez p2, :cond_6

    move p2, v1

    goto :goto_3

    :cond_6
    move p2, v4

    :goto_3
    cmpl-float v3, p1, v0

    if-lez v3, :cond_7

    if-eqz p2, :cond_8

    :cond_7
    cmpg-float v3, p1, v0

    if-gez v3, :cond_9

    if-eqz p2, :cond_9

    :cond_8
    move p1, v0

    move v3, v1

    goto :goto_4

    :cond_9
    move v3, v4

    :goto_4
    const/4 v5, 0x2

    new-array v5, v5, [F

    .line 4013
    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    aput v6, v5, v4

    aput v2, v5, v1

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    if-eqz p4, :cond_a

    .line 4015
    sget-object p1, Lcom/android/systemui/animation/Interpolators;->TOUCH_RESPONSE:Landroid/view/animation/Interpolator;

    invoke-virtual {v5, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x170

    .line 4016
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_5

    .line 4018
    :cond_a
    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    iget v6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    invoke-virtual {p4, v5, v6, v2, p1}, Lcom/android/wm/shell/animation/FlingAnimationUtils;->apply(Landroid/animation/Animator;FFF)V

    :goto_5
    if-eqz v3, :cond_b

    const-wide/16 v6, 0x15e

    .line 4021
    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 4023
    :cond_b
    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v5, p1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 4026
    new-instance p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$17;

    invoke-direct {p1, p0, p3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$17;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Ljava/lang/Runnable;)V

    invoke-virtual {v5, p1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4053
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimatingQS:Z

    .line 4054
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    .line 4055
    iput-object v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    .line 4056
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsAnimatorExpand:Z

    .line 4057
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeQsExpansionFraction()F

    move-result p1

    cmpl-float p1, p1, v0

    if-nez p1, :cond_c

    cmpl-float p1, v2, v0

    if-nez p1, :cond_c

    goto :goto_6

    :cond_c
    move v1, v4

    :goto_6
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQSAnimatingHiddenFromCollapsed:Z

    return-void
.end method

.method protected flingToHeight(FZFFZ)V
    .locals 2

    .line 2585
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    xor-int/lit8 v1, p2, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;->notifyFling(Z)V

    .line 2586
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    xor-int/lit8 v1, p2, 0x1

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->notifyPanelFlingStart(Z)V

    if-nez p2, :cond_0

    .line 2587
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getFadeoutAlpha()F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setClosingWithAlphaFadeout(Z)V

    .line 2588
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/statusbar/phone/PanelViewController;->flingToHeight(FZFFZ)V

    return-void
.end method

.method public gatherState()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "NotificationPanelViewController Log : "

    .line 7587
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v1, 0x13

    new-array v1, v1, [Ljava/lang/Object;

    .line 7596
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightQsExpanded()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightShade()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeightNonBypass()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v2, v2, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->stackScrollerPadding:I

    .line 7597
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpInset:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v7, 0x4

    aput-object v2, v1, v7

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getKeyguardNotificationStaticPadding()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v8, 0x5

    aput-object v2, v1, v8

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    .line 7598
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v9, 0x6

    aput-object v2, v1, v9

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/4 v9, 0x7

    aput-object v2, v1, v9

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeQsExpansionFraction()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v9, 0x8

    aput-object v2, v1, v9

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTransitioningToFullShadeProgress:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v9, 0x9

    aput-object v2, v1, v9

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTransitionToFullShadeQSPosition:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v9, 0xa

    aput-object v2, v1, v9

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOverStretchAmount:F

    .line 7599
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v9, 0xb

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isShortcutPreviewSwipingInProgress()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v9, 0xc

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    .line 7600
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getTranslationY()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v9, 0xd

    aput-object v2, v1, v9

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTranslationForFullShadeTransition:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    const/16 v9, 0xe

    aput-object v2, v1, v9

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextNotificationBounds:Z

    .line 7601
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v9, 0xf

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusAreaClipBounds:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/16 v9, 0x10

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimation:Landroid/animation/ValueAnimator;

    const/16 v9, 0x11

    aput-object v2, v1, v9

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClippingAnimationEndBounds:Landroid/graphics/Rect;

    const/16 v9, 0x12

    aput-object v2, v1, v9

    const-string v2, "      calculatePanelHeightQsExpanded=%s calculatePanelHeightShade=%s getMaxPanelHeightNonBypass=%s mClockPositionResult.stackScrollerPadding=%s mHeadsUpInset=%s getKeyguardNotificationStaticPadding=%s mQsMaxExpansionHeight=%s mQsExpansionHeight=%s computeQsExpansionFraction=%s mTransitioningToFullShadeProgress=%s mTransitionToFullShadeQSPosition=%s \nmOverStretchAmount=%s mAffordanceHelper.isShortcutPreviewSwipingInProgress()=%s\nmQsFrame.getTranslationY()=%s mQsTranslationForFullShadeTransition=%s\nmAnimateNextNotificationBounds=%s mKeyguardStatusAreaClipBounds.isEmpty()=%s\nmQsClippingAnimation=%s mQsClippingAnimationEndBounds=%s"

    .line 7588
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7603
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-array v1, v8, [Ljava/lang/Object;

    .line 7604
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getCurrentPanelAlpha()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClipTop:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsClipBottom:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQSEdgePosition()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v1, v7

    const-string v2, "      currentPanelAlpha=%s visibility=%s mQsClipTop =%s mQsClipBottom =%s getQSEdgePosition() =%s "

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 7605
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v1, v5, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQuickQsOffsetHeight:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v1, v3

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->getExpansionFraction()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    aput-object p0, v1, v4

    const-string p0, "\n      mQuickQsOffsetHeight =%s mAmbientState.getExpansionFraction() =%s "

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7606
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public getAODOverlayContainer()Lcom/android/systemui/doze/AODOverlayContainer;
    .locals 2

    .line 7565
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string v1, "getAODOverlayContainer() "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7567
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

    if-nez v0, :cond_0

    .line 7568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->aod_overlay_container_stub:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 7569
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/doze/AODOverlayContainer;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

    .line 7571
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAODOverlayContainer:Lcom/android/systemui/doze/AODOverlayContainer;

    return-object p0
.end method

.method public getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;
    .locals 0

    .line 5499
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getActivatedChild()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;

    move-result-object p0

    return-object p0
.end method

.method public getBarController()Lcom/android/systemui/qs/bar/BarController;
    .locals 0

    .line 7540
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarController:Lcom/android/systemui/qs/bar/BarController;

    return-object p0
.end method

.method protected getHeaderTranslation()F
    .locals 5

    .line 4389
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4390
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float p0, p0

    return p0

    .line 4392
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    .line 4393
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->calculateAppearFraction(F)F

    move-result v0

    .line 4394
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    neg-float v2, v1

    .line 4395
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eqz v3, :cond_1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    :cond_1
    neg-float v1, v1

    const v2, 0x3e333333    # 0.175f

    mul-float/2addr v2, v1

    .line 4399
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4400
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->calculateAppearFractionBypass()F

    move-result v0

    .line 4401
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result p0

    neg-int p0, p0

    int-to-float v2, p0

    :cond_3
    const/high16 p0, 0x3f800000    # 1.0f

    .line 4403
    invoke-static {p0, v0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    const/4 v0, 0x0

    invoke-static {v2, v0, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    .line 4404
    invoke-static {v0, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 5557
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    return p0
.end method

.method public getKeyguardBottomAreaView()Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;
    .locals 0

    .line 5363
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    return-object p0
.end method

.method public getKeyguardStatusBarView()Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
    .locals 0

    .line 7481
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object p0
.end method

.method public getMaxKeyguardNotifications(I)I
    .locals 3

    .line 6107
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMaxKeyguardNotifications max: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6108
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeMaxKeyguardNotifications()I

    move-result p0

    return p0
.end method

.method public getMaxPanelHeight()I
    .locals 2

    .line 4124
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 4125
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeightBypass()I

    move-result p0

    return p0

    .line 4127
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeightNonBypass()I

    move-result p0

    return p0
.end method

.method public getNotificationStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 0

    .line 7555
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getView()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationStackScrollLayoutController()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
    .locals 0

    .line 5983
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    return-object p0
.end method

.method public getOnHeadsUpChangedListener()Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;
    .locals 0

    .line 5553
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$MyOnHeadsUpChangedListener;

    return-object p0
.end method

.method protected getOpeningHeight()F
    .locals 0

    .line 2924
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getOpeningHeight()F

    move-result p0

    return p0
.end method

.method public getPanelCarrierLabelParent()Landroid/view/ViewGroup;
    .locals 4

    .line 7137
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelCarrierLabelParent:Landroid/view/ViewGroup;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    if-eqz v0, :cond_1

    .line 7138
    sget v1, Lcom/android/systemui/R$id;->panel_carrier_label_container:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7140
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 7141
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelCarrierLabelParent:Landroid/view/ViewGroup;

    goto :goto_0

    .line 7143
    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ERROR: it shows that two or more objects using the same view name may exist at the same time."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7146
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelCarrierLabelParent:Landroid/view/ViewGroup;

    return-object p0
.end method

.method public getQsMinExpansionHeight()I
    .locals 0

    .line 7560
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    return p0
.end method

.method public getQuickStatusBarHeader()Landroid/view/View;
    .locals 0

    .line 7624
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getTouchAnimator()Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;
    .locals 0

    .line 7291
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    return-object p0
.end method

.method public getViewContext()Landroid/content/Context;
    .locals 0

    .line 7152
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public goToLockedShade()V
    .locals 3

    .line 6136
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "goToLockedShade mStatusBar: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6137
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6138
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->goToLockedShade(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public handleKeyguardEmptySpaceClickForMediaOutput(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1961
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 1962
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTouchIsClick:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isMediaOutputRemoteviewsVisible()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1963
    sget-object p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string v0, "handleKeyguardEmptySpaceClickForMediaOutput, setMediaOutputVisibility to false"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 1964
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setMediaOutputVisibility(Z)V

    :cond_0
    return-void
.end method

.method public hasActiveClearableNotifications()Z
    .locals 1

    .line 5454
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->hasActiveClearableNotifications(I)Z

    move-result p0

    return p0
.end method

.method public hasCustomClock()Z
    .locals 0

    .line 1555
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->hasCustomClock()Z

    move-result p0

    return p0
.end method

.method public hasPulsingNotifications()Z
    .locals 0

    .line 5494
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 5495
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotificationListContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationListContainer;->hasPulsingNotifications()Z

    move-result p0

    return p0
.end method

.method public hideStatusBarIconsWhenExpanded()Z
    .locals 2

    .line 5184
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mIsLaunchAnimationRunning:Z

    if-eqz v0, :cond_0

    .line 5185
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHideIconsDuringLaunchAnimation:Z

    return p0

    .line 5187
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5188
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5191
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isFullWidth()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShowIconsWhenExpanded:Z

    if-nez p0, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method

.method public initDependencies(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationShelfController;)V
    .locals 0

    .line 5520
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setStatusBar(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 5522
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setNotificationPanelController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 5524
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setShelfController(Lcom/android/systemui/statusbar/NotificationShelfController;)V

    .line 5525
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    .line 5526
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->bindController(Lcom/android/systemui/statusbar/NotificationShelfController;)V

    const/4 p1, 0x1

    .line 5527
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateMaxDisplayedNotifications(Z)V

    return-void
.end method

.method public instantCollapse()V
    .locals 1

    .line 4679
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->instantCollapse()V

    const/4 v0, 0x0

    .line 4680
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    return-void
.end method

.method public isClockViewOnTouchDown()Z
    .locals 0

    .line 7535
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsClockViewOnTouchDown:Z

    return p0
.end method

.method public isDarkPanelBgColor()Z
    .locals 1

    .line 7158
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 7159
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p0}, Lcom/android/systemui/qs/QSContainerImpl;->isDarkPanelBgColor()Z

    move-result p0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isDozing()Z
    .locals 0

    .line 4827
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    return p0
.end method

.method public isExpanding()Z
    .locals 0

    .line 4171
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    return p0
.end method

.method public isFullWidth()Z
    .locals 0

    .line 5066
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsFullWidth:Z

    return p0
.end method

.method protected isInContentBounds(FF)Z
    .locals 6

    .line 2774
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getX()F

    move-result v0

    .line 2775
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockStarEnabled:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    sub-float v4, p1, v0

    .line 2776
    invoke-virtual {v1, v4, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isAboveNotification(FF)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    .line 2778
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    sub-float v5, p1, v0

    .line 2779
    invoke-virtual {v4, v5, p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->isBelowLastNotification(FF)Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz v1, :cond_2

    cmpg-float p2, v0, p1

    if-gez p2, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 2782
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWidth()F

    move-result p0

    add-float/2addr v0, p0

    cmpg-float p0, p1, v0

    if-gez p0, :cond_2

    move v2, v3

    :cond_2
    return v2
.end method

.method public isInSettings()Z
    .locals 0

    .line 4167
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    return p0
.end method

.method public isLaunchTransitionFinished()Z
    .locals 0

    .line 4796
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    return p0
.end method

.method public isLaunchTransitionRunning()Z
    .locals 0

    .line 4800
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    return p0
.end method

.method public isLaunchingAffordanceWithPreview()Z
    .locals 1

    .line 5152
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchingAffordance:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHasPreview:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMediaOutputRemoteviewsVisible()Z
    .locals 3

    .line 2166
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    if-eqz p0, :cond_0

    .line 2167
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->isMediaOutputRemoteviewsVisible()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 2169
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMediaOutputRemoteviewsVisible = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public isNoUnlockNeed(Ljava/lang/String;)Z
    .locals 0

    .line 6156
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz p0, :cond_0

    .line 6157
    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->isNoUnlockNeed(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isPanelVisibleBecauseOfHeadsUp()Z
    .locals 1

    .line 5098
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    if-eqz v0, :cond_1

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isQsDetailShowing()Z
    .locals 0

    .line 4785
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 4788
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/qs/QS;->isShowingDetail()Z

    move-result p0

    return p0
.end method

.method public isQsExpanded()Z
    .locals 0

    .line 4781
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    return p0
.end method

.method public isSecure()Z
    .locals 3

    .line 6144
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSecure mUpdateMonitor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6145
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 6149
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSecure()Z

    move-result p0

    return p0
.end method

.method public isTouchOnEmptyArea(FF)Z
    .locals 5

    .line 7176
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {v0, p2}, Lcom/android/keyguard/KeyguardStatusViewController;->isInContentBounds(F)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 7180
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 7181
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserHasTrust(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7182
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isTouchOnLockIcon(FF)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 7188
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->isTouchOnMasCotView(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 7192
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionResult:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm$Result;->clockY:I

    int-to-float v0, v0

    cmpg-float v0, p2, v0

    const/4 v2, 0x1

    if-gez v0, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    move v0, v1

    .line 7193
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockStarEnabled:Z

    if-eqz v3, :cond_5

    .line 7195
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/Object;

    const-string v4, "isTouchOnEmptyArea belowClock false"

    invoke-static {v0, v4, v3}, Lcom/android/systemui/util/LogUtil;->dm(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 7198
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->isShowNotificationOnKeyguard()Z

    move-result v3

    if-nez v3, :cond_6

    .line 7199
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-array p1, v1, [Ljava/lang/Object;

    const-string p2, "isTouchOnEmptyArea returns true"

    invoke-static {p0, p2, p1}, Lcom/android/systemui/util/LogUtil;->dm(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    .line 7203
    :cond_6
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getNotGoneChildCount()I

    move-result v3

    if-lez v3, :cond_7

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isInContentBounds(FF)Z

    move-result p0

    if-eqz p0, :cond_7

    if-eqz v0, :cond_8

    :cond_7
    move v1, v2

    :cond_8
    return v1
.end method

.method public isTouchOnLockIcon(FF)Z
    .locals 4

    .line 7497
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->sec_lock_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 7498
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    sget v1, Lcom/android/systemui/R$id;->sec_lock_icon_view:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 7502
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v2

    .line 7503
    invoke-virtual {p0}, Landroid/view/View;->getY()F

    move-result p0

    .line 7504
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_1

    cmpg-float v3, v2, p1

    if-gez v3, :cond_1

    .line 7505
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    add-float/2addr v2, v3

    cmpg-float p1, p1, v2

    if-gez p1, :cond_1

    cmpg-float p1, p0, p2

    if-gez p1, :cond_1

    .line 7506
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result p1

    int-to-float p1, p1

    add-float/2addr p0, p1

    cmpg-float p0, p2, p0

    if-gez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method public isTouchableArea(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 7432
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_BOTTOM_USIM_TEXT:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz p0, :cond_0

    .line 7433
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->isInEmergencyButtonArea(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected isTrackingBlocked()Z
    .locals 1

    .line 4777
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConflictingQsExpansionGesture:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockingExpansionForCurrentTouch:Z

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public launchCamera(ZI)V
    .locals 1

    const/4 p1, 0x1

    if-ne p2, p1, :cond_0

    const-string/jumbo p2, "power_double_tap"

    .line 5104
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    const-string/jumbo p2, "wiggle_gesture"

    .line 5106
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    const-string p2, "lift_to_launch_ml"

    .line 5108
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    goto :goto_0

    :cond_2
    const-string p2, "lockscreen_affordance"

    .line 5112
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 5118
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result p2

    if-nez p2, :cond_3

    .line 5119
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setLaunchingAffordance(Z)V

    .line 5123
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightPreview()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHasPreview:Z

    .line 5125
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->launchCamera(Ljava/lang/String;)V

    return-void
.end method

.method protected loadDimens()V
    .locals 3

    .line 1382
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->loadDimens()V

    .line 1383
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtilsBuilder:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    const v1, 0x3ecccccd    # 0.4f

    .line 1384
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->setMaxLengthSeconds(F)Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/animation/FlingAnimationUtils$Builder;->build()Lcom/android/wm/shell/animation/FlingAnimationUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFlingAnimationUtils:Lcom/android/wm/shell/animation/FlingAnimationUtils;

    .line 1385
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    const v1, 0x10504bf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarMinHeight:I

    .line 1387
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_header_height_keyguard:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarHeaderHeightKeyguard:I

    .line 1389
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->qs_peek_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsPeekHeight:I

    .line 1390
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->header_notifications_collide_distance:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationsHeaderCollideDistance:I

    .line 1392
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mClockPositionAlgorithm:Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardClockPositionAlgorithm;->loadDimens(Landroid/content/res/Resources;)V

    .line 1393
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->qs_falsing_threshold:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFalsingThreshold:I

    .line 1394
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->notification_panel_min_side_margin:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPositionMinSideMargin:I

    .line 1396
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->keyguard_indication_bottom_padding:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIndicationBottomPadding:I

    .line 1399
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->sec_notification_shelf_height_tablet:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    goto :goto_0

    .line 1400
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->sec_notification_shelf_height:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShelfHeight:I

    .line 1402
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->status_bar_icon_drawing_size_dark:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDarkIconSize:I

    .line 1403
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1405
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v2, Lcom/android/systemui/R$dimen;->heads_up_status_bar_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpInset:I

    .line 1407
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->lockscreen_shade_qs_transition_distance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDistanceForQSFullShadeTransition:I

    .line 1409
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->pulse_expansion_max_top_overshoot:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMaxOverscrollAmountForPulse:I

    .line 1411
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->notification_scrim_corner_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimCornerRadius:I

    .line 1413
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/android/internal/policy/ScreenDecorationsUtils;->getWindowCornerRadius(Landroid/content/res/Resources;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScreenCornerRadius:I

    .line 1414
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->notification_side_paddings:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationQSPadding:I

    return-void
.end method

.method public makeExpandedInvisible()V
    .locals 0

    .line 5979
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedInvisible()V

    return-void
.end method

.method public naviBackBtnPressed()V
    .locals 3

    .line 7381
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string v2, "action_back_key"

    .line 7382
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7383
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onEventReceived(Landroid/os/Bundle;)V

    return-void
.end method

.method public needToShowCarrierLabelByExpansion()Z
    .locals 2

    .line 7171
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public needToShowCarrierLabelByState()Z
    .locals 0

    .line 7165
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onAffordanceLaunchEnded()V
    .locals 1

    const/4 v0, 0x0

    .line 5133
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setLaunchingAffordance(Z)V

    return-void
.end method

.method public onBarStateChanged(I)V
    .locals 3

    .line 6072
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onBarStateChanged() to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/keyguard/KeyguardLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6073
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onBarStateChanged(I)V

    return-void
.end method

.method public onBouncerPreHideAnimation()V
    .locals 4

    .line 5404
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardQsUserSwitchController:Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 5405
    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v0, v3, v2, v1, v3}, Lcom/android/systemui/statusbar/policy/KeyguardQsUserSwitchController;->setKeyguardQsUserSwitchVisibility(IZZI)V

    .line 5411
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz v0, :cond_1

    .line 5412
    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    invoke-virtual {v0, p0, v2, v1, p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->setKeyguardUserSwitcherVisibility(IZZI)V

    :cond_1
    return-void
.end method

.method protected onClosingFinished()V
    .locals 3

    .line 4970
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onClosingFinished()V

    .line 4971
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetHorizontalPanelPosition()V

    const/4 v0, 0x0

    .line 4972
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setClosingWithAlphaFadeout(Z)V

    .line 4973
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {v1}, Lcom/android/systemui/media/MediaHierarchyManager;->closeGuts()V

    .line 4977
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->scrollEndDrag()V

    .line 4980
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelExpanded:Z

    if-nez v2, :cond_0

    .line 4981
    invoke-virtual {v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->onPanelClosed()V

    .line 4985
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setExpandSettingsPanel(Z)V

    .line 4988
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsStatusEventLog:Lcom/android/systemui/util/QsStatusEventLog;

    invoke-virtual {p0}, Lcom/android/systemui/util/QsStatusEventLog;->startTimer()V

    return-void
.end method

.method public onDismissCancelled()V
    .locals 2

    .line 7448
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1, v1, p0}, Lcom/android/keyguard/KeyguardStatusViewController;->setKeyguardStatusViewVisibility(IZZI)V

    return-void
.end method

.method protected onExpandingFinished()V
    .locals 6

    .line 4566
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onExpandingFinished()V

    .line 4567
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onExpansionStopped()V

    .line 4568
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;->onExpandingFinished()V

    .line 4569
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConversationNotificationManager:Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/ConversationNotificationManager;->onNotificationPanelExpandStateChanged(Z)V

    const/4 v0, 0x0

    .line 4570
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    .line 4571
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    if-eqz v1, :cond_0

    .line 4572
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setPanelExpanding(Z)V

    .line 4574
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/media/MediaHierarchyManager;->setCollapsingShadeFromQS(Z)V

    .line 4575
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    invoke-virtual {v1, v2}, Lcom/android/systemui/media/MediaHierarchyManager;->setQsExpanded(Z)V

    .line 4576
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 4577
    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$18;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-static {v1}, Lcom/android/systemui/DejankUtils;->postAfterTraversal(Ljava/lang/Runnable;)V

    .line 4587
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    new-instance v3, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$19;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$19;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 4606
    :cond_1
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setListening(Z)V

    .line 4610
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpandImmediate(Z)V

    .line 4614
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setShouldShowShelfOnly(Z)V

    .line 4615
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTwoFingerQsExpandPossible:Z

    const/4 v1, 0x0

    .line 4616
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 4617
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    const/4 v1, 0x0

    .line 4618
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setPanelScrimMinFraction(F)V

    .line 4620
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    cmpl-float v3, v3, v4

    const-string v5, "101"

    if-nez v3, :cond_5

    .line 4621
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v1, :cond_4

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v1, :cond_2

    goto :goto_1

    .line 4624
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-ne v1, v2, :cond_3

    .line 4625
    invoke-static {v5}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v1, "QPN001"

    .line 4627
    invoke-static {v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    :goto_1
    const-string v1, "QPP101"

    .line 4622
    invoke-static {v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    goto :goto_2

    .line 4630
    :cond_5
    iget v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandedHeight:F

    cmpl-float v1, v2, v1

    if-nez v1, :cond_7

    .line 4631
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eqz v1, :cond_6

    .line 4632
    invoke-static {v5}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v1, "299"

    .line 4634
    invoke-static {v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendScreenViewLog(Ljava/lang/String;)V

    .line 4639
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedFraction()F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    if-eqz v1, :cond_8

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez v2, :cond_8

    .line 4640
    invoke-virtual {v1}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->onPanelOpened()V

    .line 4644
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setExpandSettingsPanel(Z)V

    return-void
.end method

.method protected onExpandingStarted()V
    .locals 3

    .line 4540
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onExpandingStarted()V

    .line 4541
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onExpansionStarted()V

    const/4 v0, 0x1

    .line 4542
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    .line 4543
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    if-eqz v1, :cond_0

    .line 4544
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->setPanelExpanding(Z)V

    .line 4546
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedWhenExpandingStarted:Z

    .line 4547
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaHierarchyManager:Lcom/android/systemui/media/MediaHierarchyManager;

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimatingQS:Z

    if-nez v1, :cond_1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/systemui/media/MediaHierarchyManager;->setCollapsingShadeFromQS(Z)V

    .line 4550
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v1, :cond_2

    .line 4551
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onQsExpansionStarted()V

    .line 4555
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v1, :cond_3

    return-void

    .line 4556
    :cond_3
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/qs/QS;->setHeaderListening(Z)V

    .line 4558
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getExpandedHeight()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_4

    .line 4559
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNewCustomTileList()V

    :cond_4
    return-void
.end method

.method protected onHeightUpdated(F)V
    .locals 5

    .line 4176
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsExpanding:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandedWhenExpandingStarted:Z

    if-eqz v0, :cond_2

    .line 4181
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStackScrollerMeasuringPass:I

    if-le v0, v1, :cond_1

    goto :goto_0

    .line 4184
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications()V

    .line 4187
    :cond_2
    :goto_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpandImmediate:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTracking:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionAnimator:Landroid/animation/ValueAnimator;

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionFromOverscroll:Z

    if-nez v0, :cond_5

    .line 4190
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v0, :cond_4

    .line 4193
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    goto :goto_1

    .line 4198
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 4199
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getIntrinsicPadding()F

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 4200
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getLayoutMinHeight()F

    move-result v2

    add-float/2addr v0, v2

    .line 4201
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculatePanelHeightQsExpanded()I

    move-result v2

    int-to-float v2, v2

    sub-float v3, p1, v0

    sub-float/2addr v2, v0

    div-float v0, v3, v2

    .line 4207
    :goto_1
    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v3, v2

    iget v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float/2addr v0, v2

    add-float/2addr v3, v0

    .line 4209
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    .line 4213
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelCarrierLabelManager:Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/PanelCarrierLabelManager;->updateLabelAlphaVisibility(F)V

    .line 4216
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateExpandedHeight(F)V

    .line 4217
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeader()V

    .line 4218
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateNotificationTranslucency()V

    .line 4219
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updatePanelExpanded()V

    .line 4220
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateGestureExclusionRect()V

    .line 4226
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateCapturedBlurRadius()V

    .line 4230
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-ne v0, v1, :cond_6

    float-to-int p1, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeight()I

    move-result v0

    if-ne p1, v0, :cond_6

    .line 4231
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSecAnimatorManager:Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;

    invoke-virtual {p0}, Lcom/android/systemui/qs/animator/SecQSFragmentAnimatorManager;->onPanelOpened()V

    :cond_6
    return-void
.end method

.method public onLockStarEnabled(Z)V
    .locals 3

    .line 6031
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onLockStarEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6032
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockStarEnabled:Z

    .line 6033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz v0, :cond_0

    .line 6034
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->onLockStarEnabled(Z)V

    .line 6036
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockStarEnabled:Z

    if-eqz p1, :cond_1

    .line 6037
    const-class p1, Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/lockstar/PluginLockStarManager;

    const-string v0, "lockstarContainer"

    invoke-virtual {p1, v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    goto :goto_0

    .line 6039
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    if-eqz p1, :cond_2

    const/16 v0, 0x8

    .line 6040
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 6041
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    :cond_2
    :goto_0
    return-void
.end method

.method public onMediaVisibilityChanged(Z)V
    .locals 0

    .line 6180
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    if-eqz p0, :cond_0

    .line 6181
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setMediaPlayerVisible(Z)V

    :cond_0
    return-void
.end method

.method protected onMiddleClicked()Z
    .locals 4

    .line 4869
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    return v2

    .line 4890
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {p0, v2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setState(I)Z

    return v2

    .line 4871
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozingOnDown:Z

    if-nez v0, :cond_3

    .line 4872
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceEnrolled()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4873
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 4875
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    .line 4874
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4876
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuth(Z)V

    goto :goto_0

    .line 4878
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    const/16 v3, 0xbc

    invoke-virtual {v0, v3, v1, v1}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->write(III)V

    .line 4880
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenGestureLogger:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;

    sget-object v0, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;->LOCKSCREEN_LOCK_SHOW_HINT:Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;

    .line 4881
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger;->log(Lcom/android/systemui/statusbar/phone/LockscreenGestureLogger$LockscreenUiEvent;)V

    :cond_3
    :goto_0
    return v2

    .line 4897
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mPostCollapseRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return v1
.end method

.method public onNotiActivated()V
    .locals 0

    .line 7427
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->onNotiActivated()V

    return-void
.end method

.method public onPulseExpansionFinished()V
    .locals 4

    const-wide/16 v0, 0x1c0

    const-wide/16 v2, 0x0

    .line 3918
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateNextNotificationBounds(JJ)V

    const/4 v0, 0x1

    .line 3919
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsPulseExpansionResetAnimator:Z

    return-void
.end method

.method protected onQsExpansionStarted(I)V
    .locals 1

    .line 3249
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/android/systemui/qs/QSFragment;

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->getQSPanelController()Lcom/android/systemui/qs/QSPanelController;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    check-cast v0, Lcom/android/systemui/qs/QSFragment;

    .line 3250
    invoke-virtual {v0}, Lcom/android/systemui/qs/QSFragment;->getQSPanelController()Lcom/android/systemui/qs/QSPanelController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/qs/QSPanelControllerBase;->isSettingsPanelExpanding()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3251
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelQsAnimation()V

    .line 3252
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->cancelHeightAnimator()V

    .line 3256
    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionHeight:F

    int-to-float p1, p1

    sub-float/2addr v0, p1

    .line 3257
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansion(F)V

    .line 3258
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 3259
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->checkSnoozeLeavebehind()V

    const/4 p1, 0x0

    cmpl-float p1, v0, p1

    if-nez p1, :cond_1

    .line 3264
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->requestFaceAuth(Z)V

    .line 3268
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz p1, :cond_2

    .line 3269
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateNewCustomTileList()V

    :cond_2
    return-void
.end method

.method public onScreenTurningOn()V
    .locals 0

    .line 4839
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->dozeTimeTick()V

    return-void
.end method

.method public onThemeChanged()V
    .locals 0

    .line 5565
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$ConfigurationListener;->onThemeChanged()V

    return-void
.end method

.method protected onTrackingStarted()V
    .locals 3

    .line 4702
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardGoingAway()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4703
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string v0, "NPVC isKeyguardGoingAway is true"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4707
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-interface {v0, v1}, Lcom/android/systemui/classifier/FalsingCollector;->onTrackingStarted(Z)V

    .line 4708
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStarted()V

    .line 4709
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFullyExpanded:Z

    if-eqz v0, :cond_1

    .line 4711
    invoke-direct {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpandImmediate(Z)V

    .line 4715
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-nez v0, :cond_1

    .line 4716
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setShouldShowShelfOnly(Z)V

    .line 4719
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq v0, v2, :cond_2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 4720
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->animateHideLeftRightIcon()V

    .line 4722
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onPanelTrackingStarted()V

    return-void
.end method

.method protected onTrackingStopped(Z)V
    .locals 3

    .line 4727
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0}, Lcom/android/systemui/classifier/FalsingCollector;->onTrackingStopped()V

    .line 4728
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->onTrackingStopped(Z)V

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4730
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOverScrollAmount(FZZ)V

    .line 4733
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onPanelTrackingStopped()V

    if-eqz p1, :cond_2

    .line 4734
    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 4736
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    if-nez p1, :cond_2

    .line 4737
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    :cond_2
    return-void
.end method

.method public onUiInfoRequested(Z)Landroid/os/Bundle;
    .locals 5

    .line 6083
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    check-cast v0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->onUiInfoRequested(Z)Landroid/os/Bundle;

    move-result-object v0

    .line 6086
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_minimizing_notification"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v2, "noti_type"

    .line 6088
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6089
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 6090
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "lock_screen_show_notifications"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string/jumbo v3, "noti_visibility"

    .line 6089
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6093
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getNotificationTopMargin(Z)I

    move-result v2

    const-string/jumbo v3, "noti_top"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-nez v1, :cond_0

    .line 6095
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->computeMaxKeyguardNotifications()I

    move-result p0

    const-string/jumbo p1, "noti_number"

    invoke-virtual {v0, p1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 6097
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getNotificationTopMargin(Z)I

    move-result v1

    .line 6098
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getNotificationHeight(Z)I

    move-result p0

    add-int/2addr v1, p0

    const-string/jumbo p0, "noti_bottom"

    .line 6097
    invoke-virtual {v0, p0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6101
    :goto_0
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onUiInfoRequested bottom: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public onUnNeedLockAppStarted(Landroid/content/ComponentName;)V
    .locals 0

    .line 6165
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz p0, :cond_0

    .line 6166
    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->launchApp(Landroid/content/ComponentName;)V

    :cond_0
    return-void
.end method

.method public onUpdateRowStates()V
    .locals 0

    .line 5490
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->onUpdateRowStates()V

    return-void
.end method

.method public onUserActivity()V
    .locals 0

    .line 6025
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 3

    .line 6049
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onViewModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6050
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setViewMode(I)V

    return-void
.end method

.method public provideFaceWidget()Landroid/view/View;
    .locals 0

    .line 7239
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->getClockView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public provideFaceWidgetMediaContainer()Landroid/view/View;
    .locals 1

    .line 7248
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->getContentsContainers()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 7249
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 7253
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public provideIconsOnly()Landroid/view/View;
    .locals 0

    .line 7267
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->getIconContainer()Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyContainer;

    move-result-object p0

    return-object p0
.end method

.method public provideIndicatorArea()Landroid/view/View;
    .locals 0

    .line 7232
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getIndicationArea()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public provideLeftShortCut()Landroid/view/View;
    .locals 0

    .line 7220
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getLeftView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p0

    return-object p0
.end method

.method public provideLockIconContainer()Landroid/view/View;
    .locals 0

    .line 7273
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->getLockIconContainer()Landroid/view/ViewGroup;

    move-result-object p0

    return-object p0
.end method

.method public provideLockStarContainer()Landroid/view/View;
    .locals 0

    .line 7286
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    return-object p0
.end method

.method public provideParent()Landroid/view/View;
    .locals 0

    .line 7208
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    return-object p0
.end method

.method public provideRightShortCut()Landroid/view/View;
    .locals 0

    .line 7226
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->getRightView()Lcom/android/systemui/statusbar/KeyguardAffordanceView;

    move-result-object p0

    return-object p0
.end method

.method public provideStackScroller()Landroid/view/View;
    .locals 0

    .line 7261
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getView()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p0

    return-object p0
.end method

.method public provideStatusBar()Landroid/view/View;
    .locals 0

    .line 7214
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    return-object p0
.end method

.method public provideUserSwitcher()Landroid/view/View;
    .locals 0

    .line 7279
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardUserSwitcherController:Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;

    if-eqz p0, :cond_0

    .line 7280
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherController;->getUserSwitchListView()Lcom/android/systemui/statusbar/policy/KeyguardUserSwitcherListView;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public refreshFacewidget()V
    .locals 2

    .line 7296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 7297
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->refreshView(I)V

    .line 7298
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->refreshView(I)V

    .line 7301
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 7302
    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->refreshView(I)V

    .line 7303
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->refreshView(I)V

    :cond_1
    return-void
.end method

.method public removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0

    .line 5549
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public removeTrackingHeadsUpListener(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;",
            ">;)V"
        }
    .end annotation

    .line 5387
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTrackingHeadsUpListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method protected requestScrollerTopPaddingUpdate(Z)V
    .locals 2

    .line 3850
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 3851
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 3855
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 3856
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->calculateNotificationsTopPadding()F

    move-result v1

    .line 3855
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateTopPadding(FZ)V

    .line 3857
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3859
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    :cond_1
    return-void
.end method

.method public resetBouncerExpansion()V
    .locals 1

    .line 7644
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->onBouncerExpansionChanged(I)V

    return-void
.end method

.method public resetDynamicLock()V
    .locals 2

    .line 6119
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "resetDynamicLock()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6120
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-nez v0, :cond_0

    .line 6121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 6123
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setVisible(Z)V

    return-void
.end method

.method public resetViewGroupFade()V
    .locals 0

    .line 5541
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/ViewGroupFadeHelper;->reset(Landroid/view/ViewGroup;)V

    return-void
.end method

.method public resetViews(Z)V
    .locals 9

    const/4 v0, 0x0

    .line 2413
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionFinished:Z

    .line 2414
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlockTouches:Z

    .line 2415
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLaunchingAffordance:Z

    if-nez v1, :cond_0

    .line 2416
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    const-string v1, "lockscreen_affordance"

    .line 2417
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastCameraLaunchSource:Ljava/lang/String;

    .line 2419
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->getGutsManager()Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v8, 0x1

    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;->closeAndSaveGuts(ZZZIIZ)V

    .line 2421
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eqz p1, :cond_1

    .line 2422
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2423
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateCloseQs(Z)V

    goto :goto_0

    .line 2425
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->closeQs()V

    .line 2428
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    const/4 v3, 0x0

    xor-int/lit8 v4, p1, 0x1

    invoke-virtual {v1, v3, v2, p1, v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setOverScrollAmount(FZZZ)V

    .line 2430
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->resetScrollPosition()V

    .line 2433
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {p1, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setIntercept(Z)V

    .line 2434
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->reset()V

    .line 2438
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->isBeingDragged()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 2439
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->reset()V

    .line 2447
    :cond_3
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHintAnimationRunning:Z

    .line 2448
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setShortcutPreviewSwipingInProgress(Z)V

    return-void
.end method

.method public runAfterAnimationFinished(Ljava/lang/Runnable;)V
    .locals 0

    .line 5507
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->runAfterAnimationFinished(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V
    .locals 0

    .line 5503
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setActivatedChild(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 0

    .line 5531
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    return-void
.end method

.method protected setAnimator(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 7630
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setAnimator(Landroid/animation/ValueAnimator;)V

    .line 7631
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    check-cast v0, Lcom/android/systemui/qs/QSFragment;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/QSFragment;->setIsHeightAnimationRunning(Z)V

    .line 7632
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p1, :cond_2

    check-cast p1, Lcom/android/systemui/qs/QSFragment;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mExpandAnimating:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSFragment;->setIsPanelExpandAnimating(Z)V

    :cond_2
    return-void
.end method

.method public setBlurView(Landroid/view/View;)V
    .locals 1

    .line 6172
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlurredCapture:Landroid/view/View;

    .line 6173
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlurredCaptureStorage:Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->setPanelBackground(Landroid/view/View;)V

    .line 6174
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateCapturedBlurAnimator()V

    return-void
.end method

.method public setDozing(ZZLandroid/graphics/PointF;)V
    .locals 1

    .line 5291
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 5292
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->setDozing(Z)V

    .line 5293
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    .line 5294
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setDozing(ZZLandroid/graphics/PointF;)V

    .line 5295
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    invoke-virtual {p3, v0, p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setDozing(ZZ)V

    .line 5297
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz p3, :cond_1

    .line 5298
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    invoke-virtual {p3, v0}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->setDozing(Z)V

    .line 5299
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationIconsOnlyController:Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;->updateIconContainerVisibility()V

    :cond_1
    if-eqz p1, :cond_2

    .line 5303
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5306
    :cond_2
    iget p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v0, 0x1

    if-eq p3, v0, :cond_3

    const/4 v0, 0x2

    if-ne p3, v0, :cond_4

    .line 5307
    :cond_3
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateDozingVisibilities(Z)V

    :cond_4
    if-eqz p1, :cond_5

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    .line 5311
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-interface {p3, p0, p1, p2}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setAndInstrumentDozeAmount(Landroid/view/View;FZ)V

    return-void
.end method

.method public setDynamicLockData(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 6056
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6057
    invoke-static {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->fromJSon(Ljava/lang/String;)Lcom/android/systemui/pluginlock/model/DynamicLockData;

    move-result-object p1

    .line 6058
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->getNotiCardNumbers()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotiCardCount:I

    .line 6059
    sget-object p1, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDynamicLockData card numbers: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotiCardCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, p0, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setFaceWidgetExpandState(Z)V
    .locals 2

    .line 2153
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    if-eqz v0, :cond_2

    .line 2154
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationManager:Lcom/android/systemui/statusbar/LockscreenNotificationManager;

    .line 2155
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenNotificationManager;->isNotificationIconsOnlyShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2156
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 2159
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getView()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->getNotGoneChildCount()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/keyguard/KeyguardStatusViewController;->setExpandState(ZI)V

    :cond_2
    return-void
.end method

.method public setFullScreenMode(ZJLandroid/animation/Animator$AnimatorListener;)V
    .locals 3

    .line 2112
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setFullScreenMode() enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", duration = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2113
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFullScreenModeEnabled:Z

    .line 2114
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->cancelAnimation()V

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    .line 2119
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateAlpha(F)V

    if-eqz p4, :cond_2

    .line 2121
    invoke-interface {p4, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 2122
    invoke-interface {p4, v1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_1

    .line 2125
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 2126
    invoke-virtual {p0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/animation/Interpolators;->ACCELERATE:Landroid/view/animation/Interpolator;

    .line 2127
    invoke-virtual {p0, p1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 2128
    invoke-virtual {p0, p4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 2129
    invoke-virtual {p0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    .line 2130
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    :cond_2
    :goto_1
    return-void
.end method

.method public setGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    .line 7457
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->setGroupExpanded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V

    return-void
.end method

.method public setHeadsUpAnimatingAway(Z)V
    .locals 1

    .line 4943
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAnimatingAway:Z

    .line 4944
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setHeadsUpAnimatingAway(Z)V

    .line 4945
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateHeadsUpVisibility()V

    return-void
.end method

.method public setHeadsUpAppearanceController(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    .line 5396
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpAppearanceController:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    return-void
.end method

.method public setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V
    .locals 2

    .line 4954
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setHeadsUpManager(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;)V

    .line 4955
    new-instance v0, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 4956
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getHeadsUpCallback()Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;

    move-result-object v1

    invoke-direct {v0, p1, v1, p0}, Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;-><init>(Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper$Callback;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHeadsUpTouchHelper:Lcom/android/systemui/statusbar/phone/HeadsUpTouchHelper;

    return-void
.end method

.method public setHomeLauncherTouch(Z)V
    .locals 0

    .line 7680
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mHomeLauncherTouch:Z

    return-void
.end method

.method protected setHorizontalPanelTranslation(F)V
    .locals 1

    .line 5030
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setTranslationX(F)V

    .line 5031
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 5033
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPrivacyDialogController:Lcom/android/systemui/privacy/PrivacyDialogController;

    float-to-int p1, p1

    invoke-virtual {v0, p1}, Lcom/android/systemui/privacy/PrivacyDialogController;->setDialogTranslateX(I)V

    .line 5035
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVerticalTranslationListener:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 5036
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setIsShadeOpening(Z)V
    .locals 1

    .line 3563
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mAmbientState:Lcom/android/systemui/statusbar/notification/stack/AmbientState;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/AmbientState;->setIsShadeOpening(Z)V

    .line 3564
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQSExpansionEnabledAmbient()V

    return-void
.end method

.method public setKeyguardIndicationController(Lcom/android/systemui/statusbar/KeyguardIndicationController;)V
    .locals 2

    .line 1832
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    .line 1834
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    sget v1, Lcom/android/systemui/R$id;->keyguard_indication_area:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setIndicationArea(Landroid/view/ViewGroup;)V

    .line 1835
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardIndicationController:Lcom/android/systemui/statusbar/KeyguardIndicationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    sget v0, Lcom/android/systemui/R$id;->keyguard_upper_fingerprint_indication:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/KeyguardIndicationController;->setUpperTextView(Lcom/android/systemui/statusbar/phone/KeyguardIndicationTextView;)V

    return-void
.end method

.method public setKeyguardOnlyContentAlpha(F)V
    .locals 2

    .line 3927
    sget-object v0, Lcom/android/systemui/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardOnlyContentAlpha:F

    .line 3928
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3930
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBottomAreaShadeAlpha:F

    .line 3931
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    .line 3933
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateClock()V

    return-void
.end method

.method public setMediaOutputVisibility(Z)V
    .locals 3

    .line 2175
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMediaOutputVisibility = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    if-eqz p0, :cond_0

    .line 2177
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusViewController;->setMediaOutputVisibility(Z)V

    :cond_0
    return-void
.end method

.method public setMusicShown(Z)V
    .locals 3

    .line 2136
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMusicShown() shown = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications()V

    return-void
.end method

.method public setNextUpdateHorizontalPosition(F)V
    .locals 1

    .line 7658
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateHorizontalPositionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    return-void

    .line 7659
    :cond_0
    new-instance v0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$24;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$24;-><init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;F)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateHorizontalPositionRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setOverStrechAmount(F)V
    .locals 1

    .line 6860
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    .line 6861
    invoke-static {p1}, Lcom/android/systemui/animation/Interpolators;->getOvershootInterpolation(F)F

    move-result p1

    .line 6862
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMaxOverscrollAmountForPulse:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mOverStretchAmount:F

    const/4 p1, 0x1

    .line 6863
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications(Z)V

    return-void
.end method

.method public setPanelAlpha(IZ)V
    .locals 4

    .line 4905
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlpha:I

    if-eq v0, p1, :cond_1

    .line 4906
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlpha:I

    .line 4907
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaAnimator:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float v2, p1

    const/16 v3, 0xff

    if-ne p1, v3, :cond_0

    .line 4908
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaInPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaOutPropertiesAnimator:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    .line 4907
    :goto_0
    invoke-static {v0, v1, v2, p0, p2}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    :cond_1
    return-void
.end method

.method public setPanelAlphaEndAction(Ljava/lang/Runnable;)V
    .locals 0

    .line 4914
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPanelAlphaEndAction:Ljava/lang/Runnable;

    return-void
.end method

.method public setPanelScrimMinFraction(F)V
    .locals 0

    .line 5089
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mBar:Lcom/android/systemui/statusbar/phone/PanelBar;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelBar;->panelScrimMinFractionChanged(F)V

    return-void
.end method

.method public setPluginLock(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V
    .locals 2

    .line 6113
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setPluginLock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6114
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLock:Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    return-void
.end method

.method public setPulsing(Z)V
    .locals 3

    .line 5315
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulsing:Z

    .line 5317
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 5318
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getDisplayNeedsBlanking()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getAlwaysOn()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_1

    .line 5320
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    .line 5324
    :cond_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulsing:Z

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDozing:Z

    if-nez v1, :cond_2

    .line 5325
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAnimateNextPositionUpdate:Z

    .line 5327
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setPulsing(ZZ)V

    return-void
.end method

.method public setPunchHoleVIView(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V
    .locals 0

    .line 7462
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    .line 7463
    invoke-virtual {p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setFaceRecognitionVI()V

    .line 7464
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardPunchHoleVIView:Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->bringToFront()V

    return-void
.end method

.method setQsExpanded(Z)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 3275
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 3277
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    .line 3278
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsState()V

    .line 3279
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestPanelHeightUpdate()V

    .line 3280
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    invoke-interface {v0, p1}, Lcom/android/systemui/classifier/FalsingCollector;->setQsExpanded(Z)V

    .line 3281
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->setQsExpanded(Z)V

    .line 3282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;->setQsExpanded(Z)V

    .line 3284
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->setAllChildEnabled(Landroid/view/View;Z)V

    .line 3286
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-eqz v0, :cond_1

    .line 3287
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->setPanelExpandingStarted(Z)V

    .line 3289
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/PulseExpansionHandler;->setQsExpanded(Z)V

    .line 3290
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->setQSExpanded(Z)V

    .line 3291
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setQsExpanded(Z)V

    .line 3292
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockIconViewController:Lcom/android/keyguard/SecLockIconViewController;

    invoke-virtual {v0, p1}, Lcom/android/keyguard/LockIconViewController;->setQsExpanded(Z)V

    .line 3293
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPrivacyDotViewController:Lcom/android/systemui/statusbar/events/PrivacyDotViewController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/events/PrivacyDotViewController;->setQsExpanded(Z)V

    .line 3296
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateNightMode(I)V

    .line 3300
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->setQsExpanded(Z)V

    .line 3303
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_PANEL_BLUR_FOR_MASSIVE:Z

    if-eqz v0, :cond_2

    .line 3304
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBlurredCaptureStorage:Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result p0

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->setQsExpanded(ZZ)V

    :cond_2
    return-void
.end method

.method public setQsExpansionEnabledPolicy(Z)V
    .locals 0

    .line 2407
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpansionEnabledPolicy:Z

    .line 2408
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setQsExpansionEnabled()V

    return-void
.end method

.method public setQsScrimEnabled(Z)V
    .locals 1

    .line 4831
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsScrimEnabled:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4832
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsScrimEnabled:Z

    if-eqz v0, :cond_1

    .line 4834
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsState()V

    :cond_1
    return-void
.end method

.method public setShortcutBlurPanel(Landroid/widget/FrameLayout;)V
    .locals 0

    .line 7637
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    if-eqz p0, :cond_0

    .line 7638
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setShortcutBlurPanel(Landroid/widget/FrameLayout;)V

    :cond_0
    return-void
.end method

.method public setShowHideKeyboardButton(Z)V
    .locals 3

    .line 7576
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Keyboard Button is shownig? : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7577
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNavBarKeyboardButtonShowing:Z

    .line 7578
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez p0, :cond_0

    return-void

    .line 7579
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/plugins/FragmentBase;->getView()Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/QSContainerImpl;->setShowHideKeyboardButton(Z)V

    return-void
.end method

.method public setStatusAccessibilityImportance(I)V
    .locals 0

    .line 5352
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardStatusViewController:Lcom/android/keyguard/KeyguardStatusViewController;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusViewController;->setStatusAccessibilityImportance(I)V

    return-void
.end method

.method public setTouchAndAnimationDisabled(Z)V
    .locals 2

    .line 5276
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setTouchAndAnimationDisabled(Z)V

    if-eqz p1, :cond_0

    .line 5277
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isSwipingInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsLaunchTransitionRunning:Z

    if-nez v0, :cond_0

    .line 5278
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->reset(Z)V

    .line 5280
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setAnimationsEnabled(Z)V

    return-void
.end method

.method public setTrackedHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 4962
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->notifyListenersTrackingHeadsUp(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    const/4 p1, 0x1

    .line 4963
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandingFromHeadsUp:Z

    :cond_0
    return-void
.end method

.method public setTransitionToFullShadeAmount(FZJ)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_1

    .line 3868
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-nez p2, :cond_1

    const-wide/16 v2, 0x1c0

    .line 3869
    invoke-direct {p0, v2, v3, p3, p4}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->animateNextNotificationBounds(JJ)V

    .line 3871
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsTranslationForFullShadeTransition:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_0

    move p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mIsQsTranslationResetAnimator:Z

    :cond_1
    cmpl-float p2, p1, v1

    if-lez p2, :cond_3

    .line 3876
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getVisibleNotificationCount()I

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMediaDataManager:Lcom/android/systemui/media/MediaDataManager;

    .line 3877
    invoke-virtual {p2}, Lcom/android/systemui/media/MediaDataManager;->hasActiveMedia()Z

    move-result p2

    if-nez p2, :cond_2

    .line 3879
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz p2, :cond_3

    .line 3884
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQSEdgePosition()F

    move-result p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 3885
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getTopPadding()I

    move-result p3

    int-to-float p3, p3

    sub-float/2addr p2, p3

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 3886
    invoke-interface {p3}, Lcom/android/systemui/plugins/qs/QS;->getHeader()Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getHeight()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    goto :goto_1

    .line 3890
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getQSEdgePosition()F

    move-result p2

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 3891
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getFullShadeTransitionInset()I

    move-result p3

    int-to-float p3, p3

    add-float/2addr p2, p3

    .line 3892
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 3893
    iget p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLockscreenNotificationQSPadding:I

    int-to-float p3, p3

    sub-float/2addr p2, p3

    goto :goto_1

    :cond_3
    move p2, v1

    .line 3900
    :cond_4
    :goto_1
    sget-object p3, Lcom/android/systemui/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iget p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDistanceForQSFullShadeTransition:I

    int-to-float p4, p4

    div-float/2addr p1, p4

    .line 3901
    invoke-static {p1}, Landroid/util/MathUtils;->saturate(F)F

    move-result p1

    .line 3900
    invoke-interface {p3, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTransitioningToFullShadeProgress:F

    .line 3903
    invoke-static {v1, p2, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p1

    float-to-int p1, p1

    .line 3905
    iget p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTransitioningToFullShadeProgress:F

    cmpl-float p2, p2, v1

    if-lez p2, :cond_5

    .line 3907
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 3909
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mTransitionToFullShadeQSPosition:I

    .line 3910
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateQsExpansion()V

    return-void
.end method

.method public setUserSetupComplete(Z)V
    .locals 0

    .line 5367
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUserSetupComplete:Z

    .line 5368
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;->setUserSetupComplete(Z)V

    return-void
.end method

.method public setVerticalTranslationListener(Ljava/lang/Runnable;)V
    .locals 0

    .line 5391
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mVerticalTranslationListener:Ljava/lang/Runnable;

    return-void
.end method

.method public setViewMode(I)V
    .locals 7

    .line 7331
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isDlsViewEnabled()Z

    .line 7335
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setViewMode() newMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", oldMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockViewMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7336
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    check-cast v1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->onViewModeChanged(I)V

    .line 7338
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockViewMode:I

    const/4 v2, 0x1

    if-ne p1, v1, :cond_1

    if-ne p1, v2, :cond_d

    .line 7340
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockViewMode:I

    .line 7341
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isDlsViewEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    if-ne p1, v2, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v4

    :goto_0
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->setDlsOverLay(Z)V

    if-nez p1, :cond_5

    .line 7344
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->isBouncerShowing()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    if-nez v1, :cond_7

    :cond_3
    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eqz v1, :cond_7

    .line 7346
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v1, :cond_4

    .line 7347
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    const/16 v3, 0xfa

    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->updateDelayed(I)V

    .line 7349
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setViewMode() removeSystemUIWidgetCallback:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSystemUIWidgetCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7350
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSystemUIWidgetCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V

    goto :goto_1

    :cond_5
    if-ne p1, v2, :cond_7

    .line 7355
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 7357
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz v0, :cond_6

    .line 7358
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    .line 7360
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSystemUIWidgetCallback:Lcom/android/systemui/widget/SystemUIWidgetCallback;

    const-string/jumbo v1, "navibar"

    .line 7361
    invoke-static {v1}, Lcom/android/systemui/widget/SystemUIWidgetUtil;->convertFlag(Ljava/lang/String;)J

    move-result-wide v5

    .line 7360
    invoke-static {v0, v5, v6}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    .line 7365
    :cond_7
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockStarContainer:Landroid/view/View;

    if-eqz v0, :cond_9

    if-nez p1, :cond_8

    move v1, v4

    goto :goto_2

    :cond_8
    const/4 v1, 0x4

    .line 7366
    :goto_2
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7370
    :cond_9
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_BLUR:Z

    if-nez v0, :cond_b

    .line 7371
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-ne p1, v2, :cond_a

    goto :goto_3

    :cond_a
    move v2, v4

    :goto_3
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/phone/ScrimController;->setDLSOverlayView(Z)V

    .line 7373
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_c

    .line 7374
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->updateDlsNaviBarVisibility()V

    .line 7376
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchDlsViewMode(I)V

    :cond_d
    return-void
.end method

.method protected shouldExpandWhenNotFlinging()Z
    .locals 7

    .line 2910
    invoke-super {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->shouldExpandWhenNotFlinging()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2913
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAllowExpandForSmallExpansion:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 2916
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mDownTime:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x12c

    cmp-long p0, v3, v5

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    return v1

    :cond_2
    return v2
.end method

.method protected shouldGestureIgnoreXTouchSlop(FF)Z
    .locals 0

    .line 3107
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mAffordanceHelper:Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/KeyguardAffordanceHelper;->isOnAffordanceIcon(FF)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method protected shouldGestureWaitForTouchSlop()Z
    .locals 2

    .line 3098
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3099
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    return v1

    .line 3102
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public shouldShowLockIcon()Z
    .locals 4

    .line 7486
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 7487
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isDlsViewDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 7488
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    invoke-interface {v3}, Lcom/android/systemui/pluginlock/PluginLockData;->isAvailable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7489
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPluginLockData:Lcom/android/systemui/pluginlock/PluginLockData;

    const/4 v0, 0x7

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockData;->getVisibility(I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v0, v1

    :cond_2
    return v0
.end method

.method protected shouldUseDismissingAnimation()Z
    .locals 1

    .line 4771
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4772
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isTracking()Z

    move-result p0

    if-nez p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showAodUi()V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6848
    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setDozing(ZZLandroid/graphics/PointF;)V

    .line 6849
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;->setUpcomingState(I)V

    .line 6850
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const-string/jumbo v2, "showAodUi"

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    .line 6851
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->onStateChanged(I)V

    .line 6852
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarStateListener:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$StatusBarStateListener;->onDozeAmountChanged(FF)V

    .line 6853
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/PanelViewController;->setExpandedFraction(F)V

    return-void
.end method

.method public startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 2

    .line 6128
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startPendingIntentDismissingKeyguard"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6129
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz p0, :cond_0

    .line 6130
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public startWaitingForOpenPanelGesture()V
    .locals 1

    .line 3047
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->isFullyCollapsed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3050
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    .line 3051
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onTrackingStarted()V

    .line 3052
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updatePanelExpanded()V

    return-void
.end method

.method public stopWaitingForOpenPanelGesture(ZF)V
    .locals 2

    .line 3070
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 3071
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpectingSynthesizedDown:Z

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz p1, :cond_0

    .line 3073
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->collapse(ZF)V

    goto :goto_1

    .line 3075
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->maybeVibrateOnOpening()V

    .line 3076
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mHeadsUpManager:Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->hasPinnedHeadsUp()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3077
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->requestHeadsupUnpinned()V

    :cond_1
    cmpl-float p1, p2, v1

    if-lez p1, :cond_2

    const/high16 p1, 0x447a0000    # 1000.0f

    mul-float/2addr p2, p1

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    :goto_0
    const/4 p1, 0x1

    .line 3079
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->fling(FZ)V

    .line 3081
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->onTrackingStopped(Z)V

    :cond_3
    return-void
.end method

.method public triggerPanelPositionUpdate()V
    .locals 1

    .line 7669
    sget-boolean v0, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateHorizontalPositionRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 7670
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 7671
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mUpdateHorizontalPositionRunnable:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method

.method public updateAlpha(F)V
    .locals 3

    .line 2142
    sget-object v0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateAlpha() mFullScreenModeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFullScreenModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", alpha = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2144
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFullScreenModeEnabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    return-void

    .line 2148
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setAlpha(F)V

    return-void
.end method

.method public updateDynamicLockData(Ljava/lang/String;)V
    .locals 0

    .line 6066
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutView;->updateBottomView()V

    return-void
.end method

.method public updateExpandQsAtOnceResources()V
    .locals 0

    .line 1659
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mExpandQSAtOnceController:Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/ExpandQSAtOnceController;->updateResources()V

    return-void
.end method

.method protected updateExpandedHeight(F)V
    .locals 2

    .line 5041
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mTracking:Z

    if-eqz v0, :cond_0

    .line 5042
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 5043
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getCurrentExpandVelocity()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setExpandingVelocity(F)V

    .line 5045
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->isOnKeyguard()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5047
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->getMaxPanelHeight()I

    move-result p1

    int-to-float p1, p1

    .line 5050
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardTouchAnimator:Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchAnimator;->isViRunning()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5051
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setExpandedHeight(F)V

    .line 5056
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateKeyguardBottomAreaAlpha()V

    .line 5057
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateBigClockAlpha()V

    .line 5058
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateStatusBarIcons()V

    return-void
.end method

.method public updateExpansionHeight()V
    .locals 2

    .line 7545
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-nez v0, :cond_0

    return-void

    .line 7546
    :cond_0
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardShowing:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getQsMinExpansionHeight()I

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    .line 7547
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QS;->getDesiredHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMaxExpansionHeight:I

    .line 7548
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQuickQsOffsetHeight:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    float-to-int v0, v1

    .line 7549
    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsMinExpansionHeight:I

    :cond_2
    return-void
.end method

.method public updateFaceWidgetArea()V
    .locals 0

    .line 1951
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->positionClockAndNotifications()V

    return-void
.end method

.method protected updateHorizontalPanelPosition(F)V
    .locals 6

    .line 5004
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 5005
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWidth()F

    move-result v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-gtz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mLastOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 5010
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPositionMinSideMargin:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 5011
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 5012
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    .line 5013
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mPositionMinSideMargin:I

    sub-int/2addr v1, v3

    int-to-float v1, v1

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 5014
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWidth()F

    move-result v3

    div-float/2addr v3, v2

    sub-float/2addr v1, v3

    .line 5015
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    int-to-float v3, v3

    sub-float v3, p1, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 5016
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWidth()F

    move-result v4

    const/high16 v5, 0x40800000    # 4.0f

    div-float/2addr v4, v5

    cmpg-float v3, v3, v4

    if-gez v3, :cond_2

    .line 5017
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    int-to-float p1, p1

    .line 5019
    :cond_2
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 5020
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getLeft()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    .line 5021
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->getWidth()F

    move-result v1

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    sub-float/2addr p1, v0

    .line 5022
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->setHorizontalPanelTranslation(F)V

    return-void

    .line 5007
    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->resetHorizontalPanelPosition()V

    return-void
.end method

.method public updateNIOShortcutFingerPrintVisibility(Z)V
    .locals 2

    .line 1956
    sget-object p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateNIOShortcutFingerPrintVisibility "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateNightMode(I)V
    .locals 1

    .line 7310
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    if-eqz v0, :cond_2

    .line 7311
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQsExpanded:Z

    if-nez p1, :cond_0

    iget p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mBarState:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 7314
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setQsExpandedOnNightMode(Z)V

    return-void

    .line 7317
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setQsExpandedOnNightMode(Z)V

    :cond_2
    return-void
.end method

.method public updateNotificationViews(Ljava/lang/String;)V
    .locals 1

    .line 5468
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateSectionBoundaries(Ljava/lang/String;)V

    .line 5469
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->updateFooter()V

    .line 5471
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->createVisibleEntriesList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;->updateNotificationIcons(Ljava/util/List;)V

    .line 5473
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->updateClearAllOnShelf()V

    return-void
.end method

.method public updateResources()V
    .locals 6

    .line 1566
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mStatusBarHeight:I

    .line 1567
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_TABLET:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mDisplayTopInset:I

    .line 1568
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getQsStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1569
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getPanelIconBottomMargin(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQuickQsOffsetHeight:F

    .line 1570
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;->setQsMinHeight(I)V

    .line 1571
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v0, :cond_1

    .line 1572
    check-cast v0, Lcom/android/systemui/qs/QSFragment;

    iget v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQuickQsOffsetHeight:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSFragment;->setQuickQsOffsetHeight(I)V

    .line 1578
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    sget v1, Lcom/android/systemui/R$dimen;->notifications_top_padding_split_shade:I

    .line 1579
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mSplitShadeNotificationsTopPadding:I

    .line 1583
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->getView()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/qs/QSPanelResourcePicker;->getPanelWidth(Landroid/content/Context;)I

    move-result v0

    .line 1589
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mFeatureFlags:Lcom/android/systemui/statusbar/FeatureFlags;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/PanelViewController;->mResources:Landroid/content/res/Resources;

    .line 1590
    invoke-static {v1, v2}, Lcom/android/systemui/util/Utils;->shouldUseSplitNotificationShade(Lcom/android/systemui/statusbar/FeatureFlags;Landroid/content/res/Resources;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    .line 1591
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mScrimController:Lcom/android/systemui/statusbar/phone/ScrimController;

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/ScrimController;->setClipsQsScrim(Z)V

    .line 1592
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mQs:Lcom/android/systemui/plugins/qs/QS;

    if-eqz v1, :cond_2

    .line 1593
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/qs/QS;->setTranslateWhileExpanding(Z)V

    .line 1596
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->ensureAllViewsHaveIds(Landroid/view/ViewGroup;)V

    .line 1597
    new-instance v1, Landroidx/constraintlayout/widget/ConstraintSet;

    invoke-direct {v1}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 1598
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1599
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mShouldUseSplitNotificationShade:Z

    const/4 v3, 0x6

    const/4 v4, 0x0

    const/4 v5, 0x7

    if-eqz v2, :cond_3

    .line 1603
    sget v0, Lcom/android/systemui/R$id;->qs_frame:I

    sget v2, Lcom/android/systemui/R$id;->qs_edge_guideline:I

    invoke-virtual {v1, v0, v5, v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1604
    sget v0, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {v1, v0, v3, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1607
    sget v0, Lcom/android/systemui/R$id;->keyguard_status_view:I

    invoke-virtual {v1, v0, v5, v2, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    move v0, v4

    goto :goto_1

    .line 1609
    :cond_3
    sget v2, Lcom/android/systemui/R$id;->qs_frame:I

    invoke-virtual {v1, v2, v5, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1610
    sget v2, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {v1, v2, v3, v4, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    .line 1611
    sget v2, Lcom/android/systemui/R$id;->keyguard_status_view:I

    invoke-virtual {v1, v2, v5, v4, v5}, Landroidx/constraintlayout/widget/ConstraintSet;->connect(IIII)V

    move v4, v0

    .line 1613
    :goto_1
    sget v2, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {v1, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v2

    iget-object v2, v2, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v0, v2, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 1614
    sget v0, Lcom/android/systemui/R$id;->qs_frame:I

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    move-result-object v0

    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->layout:Landroidx/constraintlayout/widget/ConstraintSet$Layout;

    iput v4, v0, Landroidx/constraintlayout/widget/ConstraintSet$Layout;->mWidth:I

    .line 1615
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/statusbar/phone/NotificationsQuickSettingsContainer;

    invoke-virtual {v1, v0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 1617
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->mKeyguardMediaController:Lcom/android/systemui/media/KeyguardMediaController;

    invoke-virtual {v0}, Lcom/android/systemui/media/KeyguardMediaController;->refreshMediaPosition()V

    .line 1620
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->updateExpandQsAtOnceResources()V

    return-void
.end method
