.class public Lcom/android/keyguard/KeyguardStatusViewController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardStatusViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/KeyguardStatusView;",
        ">;"
    }
.end annotation


# static fields
.field private static final CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# instance fields
.field private final mClipBounds:Landroid/graphics/Rect;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private final mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

.field private mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

.field private final mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

.field private mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

.field private final mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

.field private mLockScreenMode:I

.field private final mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

.field private mPluginAODManagerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;"
        }
    .end annotation
.end field

.field private mSmartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    new-instance v0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;-><init>()V

    const-wide/16 v1, 0x168

    .line 65
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    move-result-object v0

    sput-object v0, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/KeyguardStatusView;Lcom/android/keyguard/KeyguardSliceViewController;Lcom/android/keyguard/KeyguardClockSwitchController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;Ldagger/Lazy;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/keyguard/KeyguardStatusView;",
            "Lcom/android/keyguard/KeyguardSliceViewController;",
            "Lcom/android/keyguard/KeyguardClockSwitchController;",
            "Lcom/android/systemui/statusbar/policy/KeyguardStateController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;",
            "Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;",
            "Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;",
            "Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;",
            "Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/doze/PluginAODManager;",
            ">;)V"
        }
    .end annotation

    move-object v0, p0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 76
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mClipBounds:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 78
    iput v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mLockScreenMode:I

    .line 442
    new-instance v1, Lcom/android/keyguard/KeyguardStatusViewController$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardStatusViewController$1;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 461
    new-instance v1, Lcom/android/keyguard/KeyguardStatusViewController$2;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardStatusViewController$2;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 497
    new-instance v1, Lcom/android/keyguard/KeyguardStatusViewController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardStatusViewController$3;-><init>(Lcom/android/keyguard/KeyguardStatusViewController;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    move-object v1, p2

    .line 111
    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    move-object v1, p3

    .line 112
    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    move-object v1, p5

    .line 113
    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-object v1, p6

    .line 114
    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-object v4, p7

    .line 115
    iput-object v4, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-object v3, p4

    .line 116
    iput-object v3, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 117
    new-instance v7, Lcom/android/keyguard/KeyguardVisibilityHelper;

    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    const/4 v6, 0x1

    move-object v1, v7

    move-object/from16 v5, p10

    invoke-direct/range {v1 .. v6}, Lcom/android/keyguard/KeyguardVisibilityHelper;-><init>(Landroid/view/View;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Z)V

    iput-object v7, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    move-object/from16 v1, p8

    .line 119
    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    move-object/from16 v1, p9

    .line 120
    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mSmartspaceTransitionController:Lcom/android/systemui/shared/system/smartspace/SmartspaceTransitionController;

    move-object/from16 v1, p11

    .line 123
    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    move-object/from16 v1, p12

    .line 126
    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    move-object/from16 v1, p13

    .line 130
    iput-object v1, v0, Lcom/android/keyguard/KeyguardStatusViewController;->mPluginAODManagerLazy:Ldagger/Lazy;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/KeyguardStatusViewController;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->refreshTime()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardClockSwitchController;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/systemui/facewidget/KeyguardStatusBase;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/keyguard/KeyguardSliceViewController;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/keyguard/KeyguardStatusViewController;I)I
    .locals 0

    .line 60
    iput p1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mLockScreenMode:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/keyguard/KeyguardStatusViewController;)Lcom/android/systemui/statusbar/policy/KeyguardStateController;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/KeyguardStatusViewController;)Landroid/view/View;
    .locals 0

    .line 60
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method private refreshTime()V
    .locals 0

    .line 439
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->refresh()V

    return-void
.end method


# virtual methods
.method public dozeTimeTick()V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-eqz v0, :cond_0

    .line 159
    invoke-interface {v0}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->dozeTimeTick()V

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardStatusViewController;->refreshTime()V

    .line 164
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSliceViewController;->refresh()V

    return-void
.end method

.method public getClockView()Landroid/view/View;
    .locals 0

    .line 598
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 601
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->getClockView()Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getContentsContainers()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 606
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 609
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->getContentsContainers()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentClockType()I
    .locals 0

    .line 534
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-eqz p0, :cond_0

    .line 535
    invoke-interface {p0}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->getCurrentClockType()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getHeight()I
    .locals 0

    .line 308
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-eqz p0, :cond_0

    .line 309
    invoke-interface {p0}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->getHeight()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getVisibility()I
    .locals 0

    .line 574
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-nez p0, :cond_0

    const/16 p0, 0x8

    return p0

    .line 577
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->getVisibility()I

    move-result p0

    return p0
.end method

.method public hasCustomClock()Z
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-eqz p0, :cond_0

    .line 199
    invoke-interface {p0}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->hasCustomClock()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInContentBounds(F)Z
    .locals 0

    .line 542
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 545
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->isInContentBounds(F)Z

    move-result p0

    return p0
.end method

.method public isMediaOutputRemoteviewsVisible()Z
    .locals 0

    .line 558
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 561
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->isMediaOutputRemoteviewsVisible()Z

    move-result p0

    return p0
.end method

.method public onInit()V
    .locals 0

    .line 136
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardClockSwitchController:Lcom/android/keyguard/KeyguardClockSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->init()V

    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 582
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 585
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 590
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 593
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method protected onViewAttached()V
    .locals 2

    .line 141
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 142
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 143
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mInfoCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 150
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStateControllerCallback:Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardVisibilityHelper;->isVisibilityAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-eqz p0, :cond_0

    .line 228
    invoke-interface {p0, p1}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public setClipBounds(Landroid/graphics/Rect;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 515
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mClipBounds:Landroid/graphics/Rect;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v3, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {v3}, Landroid/widget/GridLayout;->getY()F

    move-result v3

    sub-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float p1, p1

    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/keyguard/KeyguardStatusView;

    .line 516
    invoke-virtual {v4}, Landroid/widget/GridLayout;->getY()F

    move-result v4

    sub-float/2addr p1, v4

    float-to-int p1, p1

    .line 515
    invoke-virtual {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 517
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/KeyguardStatusView;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mClipBounds:Landroid/graphics/Rect;

    invoke-virtual {p1, p0}, Landroid/widget/GridLayout;->setClipBounds(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 519
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/GridLayout;->setClipBounds(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public setDarkAmount(F)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-eqz v0, :cond_0

    .line 173
    invoke-interface {v0, p1}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->setDarkAmount(F)V

    .line 176
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/KeyguardStatusView;

    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardStatusView;->setDarkAmount(F)V

    return-void
.end method

.method public setExpandState(ZI)V
    .locals 0

    .line 550
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-nez p0, :cond_0

    return-void

    .line 553
    :cond_0
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->setExpandState(ZI)V

    return-void
.end method

.method public setHasVisibleNotifications(Z)V
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-eqz p0, :cond_0

    .line 185
    invoke-interface {p0, p1}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->setHasVisibleNotifications(Z)V

    :cond_0
    return-void
.end method

.method public setKeyguardStatusBase(Lcom/android/systemui/facewidget/KeyguardStatusBase;)V
    .locals 0

    .line 614
    iput-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    return-void
.end method

.method public setKeyguardStatusViewVisibility(IZZI)V
    .locals 10

    .line 412
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-nez v0, :cond_0

    return-void

    .line 416
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 420
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    invoke-interface {v0}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 421
    iget-object v2, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardVisibilityHelper:Lcom/android/keyguard/KeyguardVisibilityHelper;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    .line 422
    invoke-interface {v0}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->getView()Landroid/view/View;

    move-result-object v5

    move v6, p1

    move v7, p2

    move v8, p3

    move v9, p4

    .line 421
    invoke-virtual/range {v2 .. v9}, Lcom/android/keyguard/KeyguardVisibilityHelper;->setViewVisibility(ZLcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Landroid/view/View;IZZI)V

    .line 424
    sget-boolean p3, Lcom/android/systemui/LsRune;->KEYGUARD_DCM_LIVE_UX:Z

    if-eqz p3, :cond_4

    if-nez p2, :cond_3

    if-nez p1, :cond_2

    goto :goto_0

    .line 428
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    invoke-interface {p0}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->getVisibility()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    goto :goto_1

    .line 426
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mMascotViewContainer:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotViewVisible(I)V

    :cond_4
    :goto_1
    return-void
.end method

.method public setMediaOutputVisibility(Z)V
    .locals 0

    .line 566
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-nez p0, :cond_0

    return-void

    .line 569
    :cond_0
    invoke-interface {p0, p1}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->setMediaOutputVisibility(Z)V

    return-void
.end method

.method public setStatusAccessibilityImportance(I)V
    .locals 0

    return-void
.end method

.method public showFaceWidgetDashBoard()V
    .locals 0

    .line 619
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-nez p0, :cond_0

    return-void

    .line 622
    :cond_0
    invoke-interface {p0}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->showFaceWidgetDashBoard()V

    return-void
.end method

.method public updateFaceWidgetPosition(Landroid/view/View;II)Z
    .locals 2

    .line 627
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->isBeingDragged()Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-float p3, p3

    .line 628
    iget-object v0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->getDistance()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    add-float/2addr p3, v0

    float-to-int p3, p3

    .line 630
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mFaceWidgetTouchAnimator:Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/FaceWidgetTouchAnimator;->getRestoreRunning()Z

    move-result p0

    if-nez p0, :cond_2

    if-eqz p1, :cond_2

    .line 631
    invoke-virtual {p1}, Landroid/view/View;->getX()F

    move-result p0

    int-to-float p2, p2

    cmpl-float p0, p0, p2

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getY()F

    move-result p0

    int-to-float v0, p3

    cmpl-float p0, p0, v0

    if-eqz p0, :cond_2

    .line 632
    :cond_1
    invoke-virtual {p1, p2}, Landroid/view/View;->setX(F)V

    int-to-float p0, p3

    .line 633
    invoke-virtual {p1, p0}, Landroid/view/View;->setY(F)V

    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public updatePosition(IIFZLjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIFZ",
            "Ljava/util/List<",
            "Landroid/graphics/Point;",
            ">;)V"
        }
    .end annotation

    .line 332
    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/keyguard/KeyguardStatusView;

    sget-object v0, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty;

    int-to-float v1, p2

    sget-object v2, Lcom/android/keyguard/KeyguardStatusViewController;->CLOCK_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-static {p3, v0, v1, v2, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 337
    iget-object p3, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    if-nez p3, :cond_0

    const/4 p3, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p3}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->getContentsContainers()Ljava/util/List;

    move-result-object p3

    :goto_0
    const/4 p4, 0x0

    if-eqz p3, :cond_2

    .line 338
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_2

    if-eqz p5, :cond_2

    .line 340
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v2

    if-ne v0, v2, :cond_2

    move p1, p4

    .line 341
    :goto_1
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p2

    if-ge p4, p2, :cond_1

    .line 342
    invoke-interface {p3, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 343
    invoke-interface {p5, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Point;

    .line 346
    iget v0, p2, Landroid/graphics/Point;->x:I

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/keyguard/KeyguardStatusViewController;->updateFaceWidgetPosition(Landroid/view/View;II)Z

    move-result p1

    add-int/lit8 p4, p4, 0x1

    goto :goto_1

    :cond_1
    move p4, p1

    goto :goto_2

    .line 356
    :cond_2
    iget-object p3, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mKeyguardStatusBase:Lcom/android/systemui/facewidget/KeyguardStatusBase;

    invoke-interface {p3}, Lcom/android/systemui/facewidget/KeyguardStatusBase;->getView()Landroid/view/View;

    move-result-object p3

    .line 359
    invoke-virtual {p3}, Landroid/view/View;->getX()F

    move-result p5

    int-to-float v0, p1

    cmpl-float p5, p5, v0

    if-nez p5, :cond_3

    invoke-virtual {p3}, Landroid/view/View;->getY()F

    move-result p5

    cmpl-float p5, p5, v1

    if-eqz p5, :cond_4

    .line 361
    :cond_3
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/keyguard/KeyguardStatusViewController;->updateFaceWidgetPosition(Landroid/view/View;II)Z

    move-result p4

    :cond_4
    :goto_2
    if-eqz p4, :cond_5

    .line 371
    iget-object p0, p0, Lcom/android/keyguard/KeyguardStatusViewController;->mPluginAODManagerLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/doze/PluginAODManager;

    invoke-virtual {p0}, Lcom/android/systemui/doze/PluginAODManager;->onFaceWidgetPositionChanged()V

    :cond_5
    return-void
.end method
