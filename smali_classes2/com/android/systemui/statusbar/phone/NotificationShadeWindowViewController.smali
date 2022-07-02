.class public Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;
.super Ljava/lang/Object;
.source "NotificationShadeWindowViewController.java"


# instance fields
.field private mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

.field private mBrightnessMirror:Landroid/view/View;

.field private final mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

.field private final mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

.field private final mDockManager:Lcom/android/systemui/dock/DockManager;

.field private final mDozeLog:Lcom/android/systemui/doze/DozeLog;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

.field private final mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

.field private mExpandAnimationRunning:Z

.field private mExpandingBelowNotch:Z

.field private final mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field private final mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

.field private mIsTrackingBarGesture:Z

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field private final mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mNotificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

.field private mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field private final mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

.field private final mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

.field private final mPresentationDisabler:Lcom/android/keyguard/KeyguardPresentationDisabler;

.field private final mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

.field private mService:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

.field private final mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field private mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

.field private final mStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

.field private mTempLocation:[I

.field private mTempRect:Landroid/graphics/RectF;

.field private mTouchActive:Z

.field private mTouchCancelled:Z

.field private mTouchedOnEmptyArea:Z

.field private final mTunerService:Lcom/android/systemui/tuner/TunerService;

.field private final mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardPresentationDisabler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/lockstar/PluginLockStarManager;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;Lcom/android/systemui/statusbar/PulseExpansionHandler;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/shared/plugins/PluginManager;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/doze/DozeLog;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;)V
    .locals 5

    move-object v0, p0

    move-object/from16 v1, p22

    move-object/from16 v2, p23

    move-object/from16 v3, p24

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 122
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTempLocation:[I

    .line 123
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTempRect:Landroid/graphics/RectF;

    const/4 v4, 0x0

    .line 124
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    .line 126
    iput-boolean v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTouchedOnEmptyArea:Z

    move-object v4, p4

    .line 162
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    move-object v4, p5

    .line 163
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mCoordinator:Lcom/android/systemui/statusbar/notification/NotificationWakeUpCoordinator;

    move-object v4, p6

    .line 164
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mPulseExpansionHandler:Lcom/android/systemui/statusbar/PulseExpansionHandler;

    move-object v4, p7

    .line 165
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDynamicPrivacyController:Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    move-object v4, p8

    .line 166
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mBypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    move-object v4, p9

    .line 167
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    move-object v4, p10

    .line 168
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    move-object/from16 v4, p11

    .line 169
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mPluginManager:Lcom/android/systemui/shared/plugins/PluginManager;

    move-object/from16 v4, p12

    .line 170
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTunerService:Lcom/android/systemui/tuner/TunerService;

    move-object/from16 v4, p13

    .line 171
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mNotificationLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    move-object/from16 v4, p14

    .line 172
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    move-object/from16 v4, p15

    .line 173
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    move-object/from16 v4, p16

    .line 174
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    move-object/from16 v4, p17

    .line 175
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDozeLog:Lcom/android/systemui/doze/DozeLog;

    move-object/from16 v4, p18

    .line 176
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object/from16 v4, p19

    .line 177
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 178
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-object/from16 v4, p20

    .line 179
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    move-object/from16 v4, p21

    .line 180
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 181
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 182
    sget-boolean v4, Lcom/android/systemui/QpRune;->QUICK_STYLE_PANEL_BLUR_FOR_MASSIVE:Z

    if-eqz v4, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->getView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->setNotificationPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 185
    :cond_0
    iput-object v1, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    move-object/from16 v4, p25

    .line 186
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    move-object/from16 v4, p26

    .line 187
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    move-object/from16 v4, p27

    .line 188
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    move-object v4, p1

    .line 189
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mPresentationDisabler:Lcom/android/keyguard/KeyguardPresentationDisabler;

    .line 190
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz v4, :cond_1

    move-object v4, p2

    .line 191
    iput-object v4, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 195
    :cond_1
    sget v4, Lcom/android/systemui/R$id;->brightness_mirror_container:I

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mBrightnessMirror:Landroid/view/View;

    .line 197
    sget-boolean v2, Lcom/android/systemui/QpRune;->QUICK_STYLE_PANEL_BLUR:Z

    if-eqz v2, :cond_2

    .line 198
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->setPanelViewController(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)V

    .line 202
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->getView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    move-result-object v0

    move-object v1, p3

    invoke-virtual {p3, v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->onRootViewAttached(Landroid/view/ViewGroup;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandingBelowNotch:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandingBelowNotch:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mIsTrackingBarGesture:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Landroid/view/View;FF)Z
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->isIntersecting(Landroid/view/View;FF)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTouchedOnEmptyArea:Z

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTouchedOnEmptyArea:Z

    return p1
.end method

.method static synthetic access$1600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/DragDownHelper;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/keyguard/KeyguardPresentationDisabler;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mPresentationDisabler:Lcom/android/keyguard/KeyguardPresentationDisabler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBar;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTouchCancelled:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Z)Z
    .locals 0

    .line 79
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTouchCancelled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/classifier/FalsingCollector;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mFalsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStatusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Landroid/view/View;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mBrightnessMirror:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$702(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mBrightnessMirror:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mNotificationStackScrollLayoutController:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayoutController;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)Lcom/android/systemui/statusbar/SysuiStatusBarStateController;
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStatusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    return-object p0
.end method

.method private isIntersecting(Landroid/view/View;FF)Z
    .locals 6

    .line 571
    invoke-virtual {p1}, Landroid/view/View;->getLocationOnScreen()[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTempLocation:[I

    .line 572
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTempRect:Landroid/graphics/RectF;

    const/4 v2, 0x0

    aget v3, v0, v2

    int-to-float v3, v3

    const/4 v4, 0x1

    aget v5, v0, v4

    int-to-float v5, v5

    aget v0, v0, v2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTempLocation:[I

    aget v2, v2, v4

    .line 573
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    add-int/2addr v2, p1

    int-to-float p1, v2

    .line 572
    invoke-virtual {v1, v3, v5, v0, p1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 574
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTempRect:Landroid/graphics/RectF;

    invoke-virtual {p0, p2, p3}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public cancelCurrentTouch()V
    .locals 9

    .line 513
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTouchActive:Z

    if-eqz v0, :cond_0

    .line 514
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-wide v1, v3

    .line 515
    invoke-static/range {v1 .. v8}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/16 v1, 0x1002

    .line 517
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->setSource(I)V

    .line 518
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 519
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    const/4 v0, 0x1

    .line 520
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTouchCancelled:Z

    :cond_0
    return-void
.end method

.method public cancelExpandHelper()V
    .locals 0

    .line 541
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    if-eqz p0, :cond_0

    .line 542
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;->cancelExpandHelper()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "  mExpandAnimationRunning="

    .line 525
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 526
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mTouchCancelled="

    .line 527
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 528
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTouchCancelled:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mTouchActive="

    .line 529
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 530
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTouchActive:Z

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Z)V

    return-void
.end method

.method public getBarTransitions()Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;
    .locals 0

    .line 547
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    return-object p0
.end method

.method public getView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
    .locals 0

    .line 505
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    return-object p0
.end method

.method setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 567
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDragDownHelper:Lcom/android/systemui/statusbar/DragDownHelper;

    return-void
.end method

.method public setExpandAnimationRunning(Z)V
    .locals 1

    .line 534
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    if-eq v0, p1, :cond_0

    .line 535
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mExpandAnimationRunning:Z

    .line 536
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setLaunchingActivity(Z)V

    :cond_0
    return-void
.end method

.method public setService(Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/NotificationShadeWindowController;)V
    .locals 0

    .line 561
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mService:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 562
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    return-void
.end method

.method public setStatusBarView(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;)V
    .locals 3

    .line 551
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStatusBarView:Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;

    if-eqz p1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStatusBarViewFactory:Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;

    if-eqz v0, :cond_0

    .line 553
    new-instance v1, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    .line 555
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->getStatusBarWindowView()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v0

    sget v2, Lcom/android/systemui/R$id;->status_bar_container:I

    .line 556
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;-><init>(Lcom/android/systemui/statusbar/phone/PhoneStatusBarView;Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mBarTransitions:Lcom/android/systemui/statusbar/phone/PhoneStatusBarTransitions;

    :cond_0
    return-void
.end method

.method public setTouchActive(Z)V
    .locals 0

    .line 509
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mTouchActive:Z

    return-void
.end method

.method public setupExpandedStatusBar()V
    .locals 2

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    sget v1, Lcom/android/systemui/R$id;->notification_stack_scroller:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mStackScrollLayout:Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    .line 252
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$2;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;->setInteractionEventHandler(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView$InteractionEventHandler;)V

    .line 485
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    new-instance v1, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController$3;-><init>(Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    .line 498
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mLockscreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getTouchHelper()Lcom/android/systemui/statusbar/DragDownHelper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->setDragDownHelper(Lcom/android/systemui/statusbar/DragDownHelper;)V

    .line 500
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->setRoot(Landroid/view/View;)V

    .line 501
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mNotificationPanelViewController:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowViewController;->mDepthController:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/PanelViewController;->addExpansionListener(Lcom/android/systemui/statusbar/phone/PanelExpansionListener;)V

    return-void
.end method
