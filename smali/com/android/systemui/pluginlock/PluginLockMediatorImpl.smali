.class public Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;
.super Ljava/lang/Object;
.source "PluginLockMediatorImpl.java"

# interfaces
.implements Lcom/android/systemui/pluginlock/PluginLockMediator;
.implements Lcom/samsung/systemui/splugins/SPluginListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/pluginlock/PluginLockMediator;",
        "Lcom/samsung/systemui/splugins/SPluginListener<",
        "Lcom/samsung/systemui/splugins/pluginlock/PluginLock;",
        ">;"
    }
.end annotation


# static fields
.field private static final FACE_WIDGET:Ljava/lang/String; = "face_widget"

.field private static final INDICATION_TEXT:Ljava/lang/String; = "indication_text_view"

.field private static final LOCKSTAR_FACEWIDGET_AREA:Ljava/lang/String; = "lockstar_facewidget_area"

.field private static final NOTIFICATION_ICON_ONLY:Ljava/lang/String; = "notification_icon_only"

.field public static final TAG:Ljava/lang/String; = "PluginLockMediatorImpl"

.field private static sScreenType:I


# instance fields
.field private mBarState:I

.field private mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

.field private mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

.field private mContext:Landroid/content/Context;

.field private mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field mDynamicLockData:Ljava/lang/String;

.field private final mHandler:Landroid/os/Handler;

.field private mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

.field private mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

.field private mIsCoverAttached:Z

.field private mIsDynamicLockData:Z

.field private mIsLockScreenEnabled:Z

.field private mIsRotateMenuHide:Z

.field private mIsSecureWindow:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

.field private final mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

.field private mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

.field private mPluginContext:Landroid/content/Context;

.field private mSPluginListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;

.field private final mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

.field private mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

.field private mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

.field private final mStateListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;",
            ">;>;"
        }
    .end annotation
.end field

.field private mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

.field private mStatusBarCallback:Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;

.field private mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

.field private mTaskDnd:Lcom/android/systemui/pluginlock/component/PluginLockShortcutDnd;

.field private mTaskFlashLight:Lcom/android/systemui/pluginlock/component/PluginLockShortcutFlashLight;

.field private mUserSwitchListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;

.field private final mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

.field private mViewMode:I

.field private mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;


# direct methods
.method public static synthetic $r8$lambda$7bIUaNfADXdUgQu5AzQ5yqNT3yM(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->lambda$setLockscreenTimer$1(J)V

    return-void
.end method

.method public static synthetic $r8$lambda$7fdlf3sJIn8k1_AiZG80-MT1dqY(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->lambda$onBarStateChanged$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$G3-NeHbmLGmL0fHQVNQeQuCSMAM(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->lambda$onViewModeChanged$0(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$HpL95Spg4y9e_unRcNo4uLWpm7k(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->lambda$updateOverlayUserTimeout$3(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$JfgLQoC_fMfp09IqvfpeGr3SzgE(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->lambda$updateBiometricRecognition$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$UyzNOJJlcrOj7X3nTVqdDG9FmTM(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->lambda$updateWindowSecureState$2(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$l5Kr3xMCMkmoTRG5_wLpenVURaQ(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->lambda$setScreenOrientation$7(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$pDnhYNqA0Pkj9cSY7TQ6gp7pYAs(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->lambda$onBarStateChanged$6()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/SPluginManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/DozeParameters;Lcom/android/systemui/pluginlock/PluginLockUtils;)V
    .locals 2

    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    const/4 v0, 0x0

    .line 112
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    const/4 v1, 0x0

    .line 114
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    .line 115
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsLockScreenEnabled:Z

    .line 116
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsSecureWindow:Z

    .line 117
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsCoverAttached:Z

    .line 1170
    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$1;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 134
    iput-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    .line 135
    iput-object p3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 136
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    .line 137
    iput-object p5, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    .line 140
    iput-object p4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    .line 142
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 143
    new-instance p1, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    .line 144
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsCoverAttached:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)I
    .locals 0

    .line 76
    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mViewMode:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Z
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->isLockScreenEnabled()Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Z
    .locals 0

    .line 76
    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsLockScreenEnabled:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)Z
    .locals 0

    .line 76
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsLockScreenEnabled:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;

    return-object p0
.end method

.method private getItemLocation(I)Ljava/lang/String;
    .locals 1

    .line 1251
    const-class p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object p0

    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 1253
    div-int/lit8 v0, p0, 0x3

    if-le v0, p1, :cond_0

    const-string/jumbo p0, "top"

    return-object p0

    :cond_0
    mul-int/lit8 v0, v0, 0x2

    if-le v0, p1, :cond_1

    const-string p0, "background"

    return-object p0

    :cond_1
    if-lt p0, p1, :cond_2

    const-string p0, "bottom"

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private getLockStarItemLocationInfoToInt(Ljava/lang/String;)I
    .locals 4

    .line 1393
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1394
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo p1, "top"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v3, v0

    goto :goto_0

    :sswitch_1
    const-string p1, "background"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v1

    goto :goto_0

    :sswitch_2
    const-string p1, "bottom"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v2

    :pswitch_0
    return v1

    :pswitch_1
    return v0

    :pswitch_2
    const/4 p0, 0x3

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_2
        -0x4f67aad2 -> :sswitch_1
        0x1c155 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isLockScreenEnabled()Z
    .locals 1

    .line 1247
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$onBarStateChanged$5(I)V
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onBarStateChanged(I)V

    return-void
.end method

.method private synthetic lambda$onBarStateChanged$6()V
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBarState:I

    invoke-interface {v0, p0}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onBarStateChanged(I)V

    return-void
.end method

.method private synthetic lambda$onViewModeChanged$0(I)V
    .locals 0

    .line 201
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->onViewModeChanged(I)V

    return-void
.end method

.method private synthetic lambda$setLockscreenTimer$1(J)V
    .locals 0

    .line 290
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->onScreenTimeoutChanged(J)V

    return-void
.end method

.method private synthetic lambda$setScreenOrientation$7(Z)V
    .locals 0

    .line 1286
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->onScreenOrientationChangeRequired(Z)V

    return-void
.end method

.method private synthetic lambda$updateBiometricRecognition$4(Z)V
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->updateBiometricRecognition(Z)V

    return-void
.end method

.method private synthetic lambda$updateOverlayUserTimeout$3(Z)V
    .locals 0

    .line 316
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->updateOverlayUserTimeout(Z)V

    return-void
.end method

.method private synthetic lambda$updateWindowSecureState$2(Z)V
    .locals 0

    .line 301
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->updateWindowSecureState(Z)V

    return-void
.end method

.method private publishLockStarState()V
    .locals 6

    .line 674
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publishLockStarState mIsDynamicLockData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PluginLockMediatorImpl"

    invoke-static {v3, v0, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 675
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 676
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 677
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "publishLockStarState : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    iget-boolean v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-interface {v2, v4}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onLockStarEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    .line 681
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "publishLockStarState Exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 686
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 687
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 688
    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const-string v1, "face_widget"

    .line 689
    invoke-direct {p0, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getLockStarItemLocationInfoToInt(Ljava/lang/String;)I

    move-result v1

    :goto_3
    const-string p0, "lockstar_facewidget_area"

    .line 687
    invoke-static {v0, p0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_4
    return-void
.end method

.method public static setScreenTypeChanged(I)V
    .locals 2

    .line 1406
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScreenTypeChanged() type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockMediatorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 1408
    :cond_1
    :goto_0
    sput p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->sScreenType:I

    return-void
.end method


# virtual methods
.method public getCurrentScreenType()I
    .locals 0

    .line 1389
    sget p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->sScreenType:I

    return p0
.end method

.method public getDynamicLockData()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 413
    new-instance v1, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-direct {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;-><init>()V

    .line 414
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 415
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 416
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 417
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 418
    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    .line 419
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 420
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const/4 v9, 0x0

    move v10, v9

    .line 423
    :goto_0
    iget-object v11, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    const-string v12, "PluginLockMediatorImpl"

    if-ge v10, v11, :cond_4

    .line 424
    iget-object v11, v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/ref/WeakReference;

    if-eqz v11, :cond_3

    .line 426
    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 427
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getDynamicLockData() listener: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_3

    .line 429
    instance-of v13, v11, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const/4 v14, 0x1

    if-eqz v13, :cond_0

    .line 430
    invoke-interface {v11, v9}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUiInfoRequested(Z)Landroid/os/Bundle;

    move-result-object v2

    .line 431
    invoke-interface {v11, v14}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUiInfoRequested(Z)Landroid/os/Bundle;

    move-result-object v6

    .line 432
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getDynamicLockData() bottom: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getDynamicLockData() bottom_land: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 434
    :cond_0
    instance-of v13, v11, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;

    if-eqz v13, :cond_1

    .line 435
    invoke-interface {v11, v14}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUiInfoRequested(Z)Landroid/os/Bundle;

    move-result-object v4

    .line 436
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getDynamicLockData() faceWidget: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 437
    :cond_1
    instance-of v13, v11, Lcom/android/systemui/statusbar/iconsOnly/LockscreenNotificationIconsOnlyController;

    if-eqz v13, :cond_2

    .line 438
    invoke-interface {v11, v9}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUiInfoRequested(Z)Landroid/os/Bundle;

    move-result-object v3

    .line 439
    invoke-interface {v11, v14}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUiInfoRequested(Z)Landroid/os/Bundle;

    move-result-object v7

    .line 440
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getDynamicLockData() nio: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getDynamicLockData() nio_land: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 442
    :cond_2
    instance-of v13, v11, Lcom/android/keyguard/SecLockIconViewController;

    if-eqz v13, :cond_3

    .line 443
    invoke-interface {v11, v9}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUiInfoRequested(Z)Landroid/os/Bundle;

    move-result-object v5

    .line 444
    invoke-interface {v11, v14}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUiInfoRequested(Z)Landroid/os/Bundle;

    move-result-object v8

    .line 445
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getDynamicLockData() lockIcon: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "getDynamicLockData() lockIcon_land: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v12, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 453
    :cond_4
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getShortcutData()Lcom/android/systemui/pluginlock/model/ShortcutData;

    move-result-object v0

    const-string/jumbo v10, "shortcut_info"

    .line 454
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setShortcutInfo(Ljava/lang/String;)V

    const-string/jumbo v10, "shortcut_enable"

    .line 455
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setVisibility(Ljava/lang/Integer;)V

    const-string/jumbo v10, "shortcut_bottom"

    .line 456
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v0, v11}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setPaddingBottom(Ljava/lang/Integer;)V

    const-string/jumbo v11, "shortcut_side"

    .line 457
    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v0, v13}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setPaddingSide(Ljava/lang/Integer;)V

    .line 458
    invoke-virtual {v6, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setPaddingBottomLand(Ljava/lang/Integer;)V

    .line 459
    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setPaddingSideLand(Ljava/lang/Integer;)V

    const-string/jumbo v10, "shortcut_size"

    .line 460
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/systemui/pluginlock/model/ShortcutData;->setImageSize(Ljava/lang/Integer;)V

    .line 464
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getFingerPrintData()Lcom/android/systemui/pluginlock/model/FingerPrintData;

    move-result-object v0

    const-string v10, "finger_print_height"

    .line 465
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/systemui/pluginlock/model/FingerPrintData;->setHeight(Ljava/lang/Integer;)V

    const-string v10, "finger_print_image_size"

    .line 466
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/systemui/pluginlock/model/FingerPrintData;->setImageSize(Ljava/lang/Integer;)V

    const-string v10, "finger_print_margin"

    .line 467
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/systemui/pluginlock/model/FingerPrintData;->setPaddingBottom(Ljava/lang/Integer;)V

    const-string v10, "finger_print_enabled"

    .line 468
    invoke-virtual {v2, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v10

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/android/systemui/pluginlock/model/FingerPrintData;->setEnabled(Ljava/lang/Boolean;)V

    .line 471
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object v0

    const-string v10, "nio_gravity"

    const/16 v11, 0x11

    .line 472
    invoke-virtual {v3, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    .line 473
    invoke-virtual {v7, v10, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v10

    const-string v14, "noti_type"

    .line 474
    invoke-virtual {v2, v14}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v14

    add-int/lit8 v15, v14, 0x1

    .line 475
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/android/systemui/pluginlock/model/NotificationData;->setNotiType(Ljava/lang/Integer;)V

    const-string v15, "noti_visibility"

    .line 476
    invoke-virtual {v2, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/android/systemui/pluginlock/model/NotificationData;->setVisibility(Ljava/lang/Integer;)V

    .line 477
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object v15

    const-string v11, "noti_top"

    invoke-virtual {v2, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v15, v9}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->setTopY(Ljava/lang/Integer;)V

    .line 478
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object v9

    invoke-virtual {v6, v11}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v9, v15}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->setTopYLand(Ljava/lang/Integer;)V

    const-string v9, "noti_number"

    if-nez v14, :cond_5

    .line 480
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object v15

    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v16

    move-object/from16 v17, v12

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v15, v12}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->setNotiCardNumbers(Ljava/lang/Integer;)V

    goto :goto_2

    :cond_5
    move-object/from16 v17, v12

    .line 483
    :goto_2
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object v12

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v12, v15}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setGravity(Ljava/lang/Integer;)V

    const v15, 0x800003

    const-string v12, "nio_start"

    if-ne v13, v15, :cond_6

    .line 485
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v3, v12, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setPaddingStart(Ljava/lang/Integer;)V

    goto :goto_3

    :cond_6
    const v15, 0x800005

    if-ne v13, v15, :cond_7

    .line 487
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object v13

    const/4 v15, 0x0

    invoke-virtual {v3, v12, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v13, v3}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setPaddingEnd(Ljava/lang/Integer;)V

    goto :goto_3

    :cond_7
    const/4 v15, 0x0

    .line 489
    :goto_3
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object v3

    invoke-virtual {v2, v11, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v13

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v3, v13}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setTopY(Ljava/lang/Integer;)V

    .line 490
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object v3

    invoke-virtual {v6, v11, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setTopYLand(Ljava/lang/Integer;)V

    .line 492
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object v3

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v11}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setGravityLand(Ljava/lang/Integer;)V

    const v3, 0x800003

    if-ne v10, v3, :cond_8

    .line 494
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object v3

    invoke-virtual {v7, v12, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setPaddingStartLand(Ljava/lang/Integer;)V

    goto :goto_4

    :cond_8
    const v3, 0x800005

    if-ne v10, v3, :cond_9

    .line 496
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object v3

    invoke-virtual {v7, v12, v15}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->setPaddingEndLand(Ljava/lang/Integer;)V

    :cond_9
    :goto_4
    if-nez v14, :cond_a

    .line 499
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/NotificationData;->getCardData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;

    move-result-object v0

    invoke-virtual {v6, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationCardData;->setNotiCardNumbersLand(Ljava/lang/Integer;)V

    .line 503
    :cond_a
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    move-result-object v0

    const-string v3, "help_text_height"

    const/4 v7, 0x0

    .line 504
    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->setHeight(Ljava/lang/Integer;)V

    const-string v3, "help_text_margin"

    .line 505
    invoke-virtual {v2, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->setPaddingBottom(Ljava/lang/Integer;)V

    const-string v9, "help_text_visibility"

    .line 506
    invoke-virtual {v2, v9, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->setVisibility(Ljava/lang/Integer;)V

    .line 507
    invoke-virtual {v6, v3, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->setPaddingBottomLand(Ljava/lang/Integer;)V

    .line 508
    invoke-virtual {v6, v9, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->setVisibilityLand(Ljava/lang/Integer;)V

    .line 511
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v0

    .line 512
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    const/4 v3, 0x2

    const-string v6, "clock_type"

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setClockType(I)V

    .line 514
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    const-string v3, "clock_gravity"

    const/16 v6, 0x11

    .line 515
    invoke-virtual {v4, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setGravity(Ljava/lang/Integer;)V

    const-string v2, "clock_visibility"

    const/4 v3, 0x0

    .line 516
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setVisibility(Ljava/lang/Integer;)V

    .line 517
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    const-string v6, "clock_scale"

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v6

    invoke-virtual {v2, v6}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setScale(F)V

    .line 518
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    const-string v6, "clock_side_padding"

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setPaddingStart(Ljava/lang/Integer;)V

    .line 519
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setPaddingEnd(Ljava/lang/Integer;)V

    const-string v2, "clock_top"

    .line 520
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setTopY(Ljava/lang/Integer;)V

    const-string v2, "clock_bottom"

    .line 521
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setBottomY(Ljava/lang/Integer;)V

    .line 523
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    const-string v9, "clock_gravity_land"

    const/16 v10, 0x11

    .line 524
    invoke-virtual {v4, v9, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setGravityLand(Ljava/lang/Integer;)V

    const-string v2, "clock_visibility_land"

    .line 525
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setVisibilityLand(Ljava/lang/Integer;)V

    .line 526
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    const-string v9, "clock_scale_land"

    invoke-virtual {v4, v9, v7}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result v7

    invoke-virtual {v2, v7}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setScaleLand(F)V

    .line 527
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    const-string v7, "clock_side_padding_land"

    .line 528
    invoke-virtual {v4, v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setPaddingStartLand(Ljava/lang/Integer;)V

    .line 529
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getClockInfo()Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;

    move-result-object v2

    .line 530
    invoke-virtual {v4, v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v2, v9}, Lcom/android/systemui/pluginlock/model/ServiceBoxData$ClockInfo;->setPaddingEndLand(Ljava/lang/Integer;)V

    const-string v2, "clock_top_land"

    .line 531
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setTopYLand(Ljava/lang/Integer;)V

    const-string v2, "clock_bottom_land"

    .line 532
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->setBottomYLand(Ljava/lang/Integer;)V

    .line 535
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getMusicData()Lcom/android/systemui/pluginlock/model/MusicData;

    move-result-object v0

    const-string v2, "music_top"

    .line 536
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setTopY(Ljava/lang/Integer;)V

    const-string v2, "music_height"

    .line 537
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setHeight(Ljava/lang/Integer;)V

    const-string v2, "music_width"

    .line 538
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setWidth(Ljava/lang/Integer;)V

    .line 539
    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setPaddingStart(Ljava/lang/Integer;)V

    .line 540
    invoke-virtual {v4, v6, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setPaddingEnd(Ljava/lang/Integer;)V

    const-string v2, "music_gravity"

    const/16 v6, 0x11

    .line 541
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setGravity(Ljava/lang/Integer;)V

    const-string v2, "music_visibility"

    .line 542
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setVisibility(Ljava/lang/Integer;)V

    const-string v2, "music_top_land"

    .line 543
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setTopYLand(Ljava/lang/Integer;)V

    const-string v2, "music_height_land"

    .line 544
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setHeightLand(Ljava/lang/Integer;)V

    const-string v2, "music_width_land"

    .line 545
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setWidthLand(Ljava/lang/Integer;)V

    .line 546
    invoke-virtual {v4, v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setPaddingStartLand(Ljava/lang/Integer;)V

    .line 547
    invoke-virtual {v4, v7, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setPaddingEndLand(Ljava/lang/Integer;)V

    const-string v2, "music_gravity_land"

    const/16 v6, 0x11

    .line 548
    invoke-virtual {v4, v2, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setGravityLand(Ljava/lang/Integer;)V

    const-string v2, "music_visibility_land"

    .line 549
    invoke-virtual {v4, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/MusicData;->setVisibilityLand(Ljava/lang/Integer;)V

    .line 552
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getLockIconData()Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    move-result-object v0

    const-string v2, "lock_icon_visibility"

    .line 553
    invoke-virtual {v5, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->setVisibility(Ljava/lang/Integer;)V

    .line 554
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/IndicationData;->getLockIconData()Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;

    move-result-object v0

    .line 555
    invoke-virtual {v8, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/model/IndicationData$LockIconData;->setVisibilityLand(Ljava/lang/Integer;)V

    .line 557
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDynamicLockData() dlsData: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->toJsonString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v2, v17

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->toJsonString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockStarItemLocationInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .line 1294
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    const-string v1, "none"

    if-eqz v0, :cond_a

    if-eqz p1, :cond_a

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 1299
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_0
    const/4 v5, -0x1

    .line 1301
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    :goto_1
    move v2, v5

    goto :goto_2

    :sswitch_0
    const-string v2, "indication_text_view"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_2

    :sswitch_1
    const-string v3, "notification_icon_only"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :sswitch_2
    const-string v2, "face_widget"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    move v2, v3

    :cond_4
    :goto_2
    const-string/jumbo p1, "top"

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_4

    .line 1316
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 1317
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getRealSize()Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 1319
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 1320
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getIndicationData()Lcom/android/systemui/pluginlock/model/IndicationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/IndicationData;->getHelpTextData()Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;

    move-result-object v1

    if-eqz v0, :cond_5

    .line 1322
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    .line 1323
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getPaddingBottomLand()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_3

    .line 1325
    :cond_5
    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getHeight()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/IndicationData$HelpTextData;->getPaddingBottom()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_3
    sub-int/2addr p1, v0

    .line 1327
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getItemLocation(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_4

    :cond_6
    const-string v1, "bottom"

    goto/16 :goto_4

    .line 1332
    :pswitch_1
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 1333
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/NotificationData;->getNotiType()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_9

    if-eqz v0, :cond_7

    .line 1336
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 1337
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p1

    .line 1338
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getTopYLand()Ljava/lang/Integer;

    move-result-object p1

    .line 1337
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1336
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getItemLocation(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1340
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 1341
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getNotificationData()Lcom/android/systemui/pluginlock/model/NotificationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NotificationData;->getIconOnlyData()Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;

    move-result-object p1

    .line 1342
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/NotificationData$NotificationIconOnlyData;->getTopY()Ljava/lang/Integer;

    move-result-object p1

    .line 1341
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1340
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getItemLocation(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1304
    :pswitch_2
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object v1

    if-eqz v1, :cond_9

    if-eqz v0, :cond_8

    .line 1306
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 1307
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopYLand()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1306
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getItemLocation(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 1309
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 1310
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->getServiceBoxData()Lcom/android/systemui/pluginlock/model/ServiceBoxData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/ServiceBoxData;->getTopY()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 1309
    invoke-direct {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->getItemLocation(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_9
    move-object v1, p1

    :goto_4
    return-object v1

    .line 1295
    :cond_a
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLockStarItemLocationInfo Data: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", group: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PluginLockMediatorImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5847f19a -> :sswitch_2
        0x143f195e -> :sswitch_1
        0x6cbdc754 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getPluginLockHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;
    .locals 0

    .line 868
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    return-object p0
.end method

.method public getPluginLockSwipe()Lcom/android/systemui/pluginlock/component/PluginLockSwipe;
    .locals 0

    .line 863
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    return-object p0
.end method

.method public getPluginLockWallpaper()Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;
    .locals 0

    .line 858
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    return-object p0
.end method

.method public getSecureMode()I
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    if-eqz p0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->getSecureMode()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public goToLockedShade()V
    .locals 2

    const/4 v0, 0x0

    .line 1064
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1065
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 1067
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v1, :cond_0

    .line 1069
    invoke-interface {v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->goToLockedShade()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public isFbeAvailable()Z
    .locals 1

    .line 1092
    sget-boolean v0, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v0, :cond_0

    .line 1093
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isUserUnlocked()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHomeWallpaperRequired(I)Z
    .locals 1

    .line 1366
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1367
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getWallpaperType(I)I

    move-result p0

    const/16 p1, 0xa

    if-le p0, p1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public isRotateMenuHide()Z
    .locals 3

    .line 1266
    const-class v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 1267
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    .line 1268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRotateMenuHide isDynamicLockEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsRotateMenuHide: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PluginLockMediatorImpl"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 1270
    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSecure()Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 1078
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1079
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_0

    .line 1081
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v2, :cond_0

    .line 1083
    invoke-interface {v2}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->isSecure()Z

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public isWindowSecured()Z
    .locals 0

    .line 307
    iget-boolean p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsSecureWindow:Z

    return p0
.end method

.method public makeExpandedInvisible()V
    .locals 2

    const/4 v0, 0x0

    .line 386
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 387
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 389
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v1, :cond_0

    .line 391
    invoke-interface {v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->makeExpandedInvisible()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onAodTransitionEnd()V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz p0, :cond_0

    .line 365
    invoke-interface {p0}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onAodTransitionEnd()V

    :cond_0
    return-void
.end method

.method public onBarStateChanged()V
    .locals 2

    .line 353
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz v0, :cond_1

    .line 354
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 355
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    iget p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBarState:I

    invoke-interface {v0, p0}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onBarStateChanged(I)V

    goto :goto_0

    .line 357
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onBarStateChanged(I)V
    .locals 2

    .line 341
    iput p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBarState:I

    .line 342
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz v0, :cond_1

    .line 343
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 344
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onBarStateChanged(I)V

    goto :goto_0

    .line 346
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onDataCleared()V
    .locals 0

    .line 1382
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    if-eqz p0, :cond_0

    .line 1383
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->clearWallpaper()V

    :cond_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 0

    .line 972
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz p0, :cond_0

    .line 973
    invoke-interface {p0}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method

.method public onEventReceived(Landroid/os/Bundle;)V
    .locals 0

    .line 965
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz p0, :cond_0

    .line 966
    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onEventReceived(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onFolderStateChanged(ZZ)V
    .locals 0

    .line 371
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz p0, :cond_0

    .line 372
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onFolderStateChanged(ZZ)V

    :cond_0
    return-void
.end method

.method public onHomeWallpaperChanged(I)V
    .locals 1

    .line 1375
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getKey(I)I

    move-result p1

    .line 1376
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->resetWallpaper(I)V

    .line 1377
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onWallpaperChanged(I)V

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/samsung/systemui/splugins/SPlugin;Landroid/content/Context;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onPluginConnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginConnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;)V
    .locals 2

    const-string v0, "PluginLockMediatorImpl"

    const-string v1, "onPluginConnected"

    .line 149
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;

    if-eqz p0, :cond_0

    .line 151
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;->onPluginConnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/samsung/systemui/splugins/SPlugin;I)V
    .locals 0

    .line 75
    check-cast p1, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->onPluginDisconnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;I)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;I)V
    .locals 2

    const-string v0, "PluginLockMediatorImpl"

    const-string v1, "onPluginDisconnected"

    .line 157
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;

    if-eqz p0, :cond_0

    .line 159
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;->onPluginDisconnected(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;I)V

    :cond_0
    return-void
.end method

.method public onRootViewAttached(Landroid/view/ViewGroup;)V
    .locals 3

    const-string v0, "PluginLockMediatorImpl"

    const-string v1, "onRootViewAttached"

    .line 165
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    if-eqz v0, :cond_0

    .line 167
    const-class v1, Lcom/samsung/systemui/splugins/pluginlock/PluginLock;

    const/4 v2, 0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/samsung/systemui/splugins/SPluginManager;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;

    if-eqz p0, :cond_1

    .line 171
    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;->onRootViewAttached(Landroid/view/ViewGroup;)V

    :cond_1
    return-void
.end method

.method public onRootViewDetached()V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginManager:Lcom/samsung/systemui/splugins/SPluginManager;

    if-eqz v0, :cond_0

    .line 178
    invoke-interface {v0, p0}, Lcom/samsung/systemui/splugins/SPluginManager;->removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V

    :cond_0
    return-void
.end method

.method public onUserActivity()V
    .locals 2

    const/4 v0, 0x0

    .line 400
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 401
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 403
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v1, :cond_0

    .line 405
    invoke-interface {v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUserActivity()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public onViewModeChanged(I)V
    .locals 4

    .line 184
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewModeChanged mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mStateListenerList.size(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    const-string v3, "PluginLockMediatorImpl"

    invoke-static {v3, v0, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    iput p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mViewMode:I

    .line 187
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 188
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v0, :cond_0

    .line 192
    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onViewModeChanged(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 197
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    if-eqz v0, :cond_3

    .line 198
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_2

    .line 199
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->onViewModeChanged(I)V

    goto :goto_1

    .line 201
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public onWallpaperChanged(I)V
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz p0, :cond_0

    .line 379
    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onWallpaperChanged(I)V

    :cond_0
    return-void
.end method

.method public recoverItem(I)V
    .locals 2

    .line 695
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "recoverItem() type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockMediatorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 701
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->recover()V

    goto :goto_0

    .line 698
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->recover()V

    :goto_0
    return-void
.end method

.method public registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
    .locals 6

    const-string v0, "PluginLockMediatorImpl"

    const-string/jumbo v1, "registerStateCallback"

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 1100
    invoke-static {v0, v1, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1101
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    monitor-enter v0

    move v1, v2

    .line 1102
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 1103
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, p1, :cond_0

    .line 1104
    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1107
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1109
    instance-of v1, p1, Lcom/android/systemui/facewidget/plugin/FaceWidgetPluginLockManagerWrapper$FaceWidgetLockStarStateCallbackWrapper;

    if-eqz v1, :cond_5

    const-string v1, "PluginLockMediatorImpl"

    .line 1110
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerStateCallback isLockStar: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    const/4 v5, 0x1

    if-nez v4, :cond_2

    move v4, v5

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v1, v3, v4}, Lcom/android/systemui/util/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1111
    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    if-nez v1, :cond_3

    move v2, v5

    :cond_3
    invoke-interface {p1, v2}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onLockStarEnabled(Z)V

    .line 1112
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    if-eqz p1, :cond_5

    .line 1113
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    if-eqz v1, :cond_4

    .line 1114
    invoke-virtual {v1, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->loadClockData(Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 1116
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    if-eqz p0, :cond_5

    .line 1117
    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->loadMusicData()V

    .line 1121
    :cond_5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public registerStatusBarCallback(Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;)V
    .locals 0

    .line 1139
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBarCallback:Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;

    return-void
.end method

.method public registerUpdateMonitor()V
    .locals 2

    .line 1162
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 1163
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public registerWindowListener(Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;)V
    .locals 0

    .line 1158
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    return-void
.end method

.method public removeStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V
    .locals 3

    .line 1126
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    monitor-enter v0

    const/4 v1, 0x0

    .line 1127
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1128
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 1129
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1130
    monitor-exit v0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1133
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestDismissKeyguard(Landroid/content/Intent;)V
    .locals 6

    if-eqz p1, :cond_9

    .line 1001
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1002
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 1005
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    move v2, v1

    move v3, v2

    .line 1012
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 1013
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    if-eqz v4, :cond_1

    .line 1015
    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v4, :cond_1

    .line 1016
    instance-of v5, v4, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz v5, :cond_1

    .line 1017
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->isNoUnlockNeed(Ljava/lang/String;)Z

    move-result v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v3, v1

    .line 1023
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "requestDismissKeyguard isNoUnlockNeedApp: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v4, v1, [Ljava/lang/Object;

    const-string v5, "PluginLockMediatorImpl"

    invoke-static {v5, v2, v4}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v3, :cond_5

    .line 1025
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v1, p1, :cond_9

    .line 1026
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/ref/WeakReference;

    if-eqz p1, :cond_4

    .line 1028
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz p1, :cond_4

    .line 1029
    instance-of v2, p1, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    if-eqz v2, :cond_4

    .line 1030
    invoke-interface {p1, v0}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onUnNeedLockAppStarted(Landroid/content/ComponentName;)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1036
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 1037
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    .line 1038
    :cond_6
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 1039
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_2

    :cond_7
    move v0, v1

    .line 1042
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    const/high16 v3, 0xc000000

    .line 1043
    invoke-static {v2, v0, p1, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 1045
    sget-object v0, Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;->TRIGGER_PLUGIN_LOCK:Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;

    .line 1046
    invoke-static {v0}, Lcom/android/systemui/keyguard/KeyguardUnlockInfo;->setUnlockTrigger(Lcom/android/systemui/keyguard/KeyguardUnlockInfo$UnlockTrigger;)V

    .line 1049
    :goto_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    .line 1050
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_8

    .line 1052
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v0, :cond_8

    .line 1054
    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_9
    :goto_4
    return-void
.end method

.method public resetConfigs()V
    .locals 4

    .line 789
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetConfig mIsDynamicLockData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockMediatorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isTablet()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 794
    :cond_0
    iput-boolean v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    goto :goto_1

    .line 792
    :cond_1
    :goto_0
    invoke-virtual {p0, v1, v1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setScreenOrientation(ZZ)V

    .line 797
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    if-eqz v0, :cond_2

    .line 798
    invoke-interface {v0, v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->updateOverlayUserTimeout(Z)V

    :cond_2
    move v0, v1

    .line 802
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 803
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    if-eqz v2, :cond_3

    .line 805
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v2, :cond_3

    .line 807
    invoke-interface {v2, v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onViewModeChanged(I)V

    .line 808
    iget-boolean v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    if-nez v3, :cond_3

    .line 809
    invoke-interface {v2, v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onLockStarEnabled(Z)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    .line 814
    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    return-void
.end method

.method public resetDynamicLock()V
    .locals 2

    const-string v0, "PluginLockMediatorImpl"

    const-string/jumbo v1, "resetDynamicLock"

    .line 774
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 776
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 777
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 779
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v1, :cond_0

    .line 781
    invoke-interface {v1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->resetDynamicLock()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public resetDynamicLockData(Z)V
    .locals 2

    const/4 v0, 0x0

    .line 721
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 722
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetDynamicLockData() reconnectReq: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockMediatorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    if-eqz v0, :cond_0

    .line 724
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->reset(Z)V

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    if-eqz v0, :cond_1

    .line 727
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->reset(Z)V

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    if-eqz v0, :cond_2

    .line 730
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->reset(Z)V

    .line 731
    const-class v0, Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ShortcutManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/ShortcutManager;->updateShortcuts()V

    .line 733
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    if-eqz v0, :cond_3

    .line 734
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->reset(Z)V

    .line 736
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    if-eqz v0, :cond_4

    .line 737
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->reset(Z)V

    .line 739
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    if-eqz v0, :cond_7

    .line 740
    sget-boolean v1, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v1, :cond_6

    sget-boolean v1, Lcom/android/systemui/LsRune;->PLUGIN_LOCK_LSM:Z

    if-eqz v1, :cond_6

    if-eqz p1, :cond_5

    const/4 v1, 0x1

    .line 742
    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    goto :goto_0

    .line 744
    :cond_5
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->resetAll()V

    goto :goto_0

    .line 747
    :cond_6
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    .line 750
    :cond_7
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    if-eqz v0, :cond_8

    .line 751
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->reset(Z)V

    .line 753
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    if-eqz v0, :cond_9

    .line 754
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->reset(Z)V

    .line 756
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    if-eqz v0, :cond_a

    .line 757
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;->reset(Z)V

    :cond_a
    const/4 p1, 0x0

    .line 761
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_c

    .line 762
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    .line 764
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v0, :cond_b

    .line 766
    invoke-interface {v0}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->onPluginLockReset()V

    :cond_b
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_c
    return-void
.end method

.method public resetItem(IZ)V
    .locals 2

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resetItem() type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", reconnectReq:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockMediatorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 714
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->reset(Z)V

    goto :goto_0

    .line 711
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    invoke-virtual {p0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->reset(Z)V

    :goto_0
    return-void
.end method

.method public setDynamicLockData(Ljava/lang/String;)V
    .locals 2

    .line 563
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mDynamicLockData:Ljava/lang/String;

    const/4 v0, 0x0

    .line 565
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 566
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 568
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v1, :cond_0

    .line 570
    invoke-interface {v1, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->setDynamicLockData(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setHomeWallpaperCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V
    .locals 0

    .line 1359
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    if-eqz p0, :cond_0

    .line 1360
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->setWallpaperUpdateCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V

    :cond_0
    return-void
.end method

.method public setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V
    .locals 2

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setInstanceState state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockMediatorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    if-eqz v0, :cond_0

    .line 822
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 824
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    if-eqz v0, :cond_1

    .line 825
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 827
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    if-eqz v0, :cond_2

    .line 828
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 830
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    if-eqz v0, :cond_3

    .line 831
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 833
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    if-eqz v0, :cond_4

    .line 834
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 836
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    if-eqz v0, :cond_5

    .line 837
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 839
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    if-eqz v0, :cond_6

    .line 840
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 842
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    if-eqz v0, :cond_7

    .line 843
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    .line 845
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    if-eqz v0, :cond_8

    .line 846
    invoke-virtual {v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setInstanceState(Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    :cond_8
    if-eqz p1, :cond_9

    .line 850
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockInstanceState;->getPluginLockContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mPluginContext:Landroid/content/Context;

    goto :goto_0

    :cond_9
    const/4 p1, 0x0

    .line 852
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mPluginContext:Landroid/content/Context;

    :goto_0
    return-void
.end method

.method public setKeyguardBasicListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;)V
    .locals 0

    .line 1149
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    return-void
.end method

.method public setKeyguardSPluginListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;)V
    .locals 0

    .line 1144
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSPluginListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$SPlugin;

    return-void
.end method

.method public setKeyguardUserSwitchListener(Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;)V
    .locals 0

    .line 1154
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUserSwitchListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$UserSwitch;

    return-void
.end method

.method public setLockscreenEnabled(Z)V
    .locals 0

    .line 1354
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsLockScreenEnabled:Z

    return-void
.end method

.method public setLockscreenTimer(J)V
    .locals 2

    .line 286
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    if-eqz v0, :cond_1

    .line 287
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 288
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->onScreenTimeoutChanged(J)V

    goto :goto_0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public setPluginLock(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V
    .locals 2

    .line 986
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPluginLock() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockMediatorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 988
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 989
    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 991
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v1, :cond_0

    .line 993
    invoke-interface {v1, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->setPluginLock(Lcom/samsung/systemui/splugins/pluginlock/PluginLock;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setPluginLockItem(Lcom/android/systemui/pluginlock/PluginLockInstanceState;Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V
    .locals 4

    .line 578
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setPluginLockItem() mDynamicLockData:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mDynamicLockData:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockMediatorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    if-nez v0, :cond_0

    .line 580
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    .line 581
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->registerStateCallback(Ljava/util/List;)V

    .line 583
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    if-nez v0, :cond_1

    .line 584
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    .line 585
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->registerStateCallback(Ljava/util/List;)V

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    if-nez v0, :cond_2

    .line 588
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    .line 590
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    if-nez v0, :cond_3

    .line 591
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    .line 593
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    if-nez v0, :cond_4

    .line 594
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    .line 596
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    if-nez v0, :cond_5

    .line 597
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    .line 599
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    if-nez v0, :cond_6

    .line 600
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    .line 602
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    if-nez v0, :cond_7

    .line 603
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    .line 604
    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBarCallback:Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;

    invoke-virtual {v0, v2}, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->setCallback(Lcom/android/systemui/pluginlock/component/PluginLockStatusBarCallback;)V

    .line 606
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    if-nez v0, :cond_8

    .line 607
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    .line 610
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    if-nez v0, :cond_9

    .line 611
    new-instance v0, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    iget-object v2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;-><init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockInstanceState;)V

    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    .line 612
    invoke-virtual {v0, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setWallpaperUpdateCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V

    :cond_9
    const/4 p1, 0x0

    .line 617
    :try_start_0
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 618
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mDynamicLockData:Ljava/lang/String;

    const-class v2, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p2, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/pluginlock/model/DynamicLockData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p1, p2

    goto :goto_0

    :catchall_0
    move-exception p2

    .line 620
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[parse, apply] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 623
    :goto_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPluginLockItem() currData:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "setPluginLockItem() newData:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_a

    .line 628
    :try_start_1
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 629
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 630
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 631
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 632
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p2

    .line 634
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[basic, apply] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 638
    :goto_1
    :try_start_2
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    .line 640
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[clock, apply] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 644
    :goto_2
    :try_start_3
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception p2

    .line 646
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[music, apply] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 650
    :goto_3
    :try_start_4
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception p2

    .line 652
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[notification, apply] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 656
    :goto_4
    :try_start_5
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception p2

    .line 658
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[shortcut, apply] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 662
    :goto_5
    :try_start_6
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {p2, v0, p1}, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->apply(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception p2

    .line 664
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[statusbar, apply] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 667
    :goto_6
    iput-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 668
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    .line 669
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->publishLockStarState()V

    :cond_a
    return-void
.end method

.method public setPluginWallpaper(IIILjava/lang/String;)V
    .locals 6

    .line 878
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/4 v1, 0x0

    const/4 v2, -0x2

    const-string v3, ", screen: "

    const-string v4, "PluginLockMediatorImpl"

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_4

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    if-eq p2, v2, :cond_1

    const/16 v5, 0xa

    if-lt p2, v5, :cond_4

    .line 880
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPluginWallpaper() Home, type: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsCoverAttached:Z

    if-nez p1, :cond_2

    const-string/jumbo p0, "setPluginWallpaper() cover is not attached"

    .line 883
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/16 p1, 0x14

    if-lt p2, p1, :cond_3

    move v1, v0

    .line 892
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    if-eqz p0, :cond_7

    .line 893
    invoke-virtual {p0, v1, p2, p3, p4}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->setWallpaper(IIILjava/lang/String;)V

    goto :goto_0

    .line 896
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setPluginWallpaper() Lock, type: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    if-eqz p1, :cond_7

    .line 899
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_5

    const/4 v0, -0x3

    if-ne p2, v0, :cond_5

    .line 900
    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->resetAll()V

    goto :goto_0

    :cond_5
    if-ne p2, v2, :cond_6

    .line 902
    invoke-virtual {p1, v1}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->reset(Z)V

    goto :goto_0

    .line 904
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mPluginContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p2, p3, p4}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->update(Landroid/content/Context;IILjava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public setPluginWallpaper(IILjava/lang/String;)V
    .locals 1

    .line 873
    sget v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->sScreenType:I

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setPluginWallpaper(IIILjava/lang/String;)V

    return-void
.end method

.method public setPluginWallpaperHint(ILjava/lang/String;)V
    .locals 1

    const/4 p1, 0x1

    if-eqz p2, :cond_2

    const-string/jumbo v0, "white"

    .line 919
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    new-instance p2, Landroid/app/SemWallpaperColors$Builder;

    invoke-direct {p2}, Landroid/app/SemWallpaperColors$Builder;-><init>()V

    const/4 v0, 0x0

    .line 921
    invoke-virtual {p2, v0}, Landroid/app/SemWallpaperColors$Builder;->setColorType(I)Landroid/app/SemWallpaperColors$Builder;

    .line 922
    invoke-virtual {p2}, Landroid/app/SemWallpaperColors$Builder;->build()Landroid/app/SemWallpaperColors;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string v0, "black"

    .line 923
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 924
    new-instance p2, Landroid/app/SemWallpaperColors$Builder;

    invoke-direct {p2}, Landroid/app/SemWallpaperColors$Builder;-><init>()V

    .line 925
    invoke-virtual {p2, p1}, Landroid/app/SemWallpaperColors$Builder;->setColorType(I)Landroid/app/SemWallpaperColors$Builder;

    .line 926
    invoke-virtual {p2}, Landroid/app/SemWallpaperColors$Builder;->build()Landroid/app/SemWallpaperColors;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 927
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 928
    invoke-static {p2}, Landroid/app/SemWallpaperColors;->fromXml(Ljava/lang/String;)Landroid/app/SemWallpaperColors;

    move-result-object p2

    goto :goto_0

    :cond_2
    const/4 p2, 0x0

    .line 933
    :goto_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_5

    .line 934
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->isHomeWallpaperRequired(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    .line 935
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getCurrentScreen()I

    move-result v0

    if-ne v0, p1, :cond_5

    .line 937
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsCoverAttached:Z

    if-nez p1, :cond_4

    const-string p0, "PluginLockMediatorImpl"

    const-string/jumbo p1, "setPluginWallpaperHint() cover is not attached"

    .line 938
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 942
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    invoke-virtual {p1, p2}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->setWallpaperHints(Landroid/app/SemWallpaperColors;)V

    .line 943
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHomeWallpaper:Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->updateHint()V

    goto :goto_1

    .line 945
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    if-eqz p1, :cond_6

    .line 946
    invoke-virtual {p1, p2}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->setWallpaperHints(Landroid/app/SemWallpaperColors;)V

    .line 947
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->updateHint()V

    :cond_6
    :goto_1
    return-void
.end method

.method public setPluginWallpaperHint(Ljava/lang/String;)V
    .locals 1

    .line 912
    sget v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->sScreenType:I

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->setPluginWallpaperHint(ILjava/lang/String;)V

    return-void
.end method

.method public setPluginWallpaperState(II)V
    .locals 3

    .line 954
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz v0, :cond_0

    .line 955
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "action"

    const-string/jumbo v2, "wallpaper_state_changed"

    .line 956
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v1, "screen"

    .line 957
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "state"

    .line 958
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 959
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->onEventReceived(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public setQsExpansion(F)V
    .locals 1

    .line 979
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    if-eqz v0, :cond_0

    const-class v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 980
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mBasicListener:Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/KeyguardListener$Basic;->setQsExpansion(F)V

    :cond_0
    return-void
.end method

.method public setScreenOrientation(ZZ)V
    .locals 2

    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setScreenOrientation noSensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hideMenu : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PluginLockMediatorImpl"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    .line 1279
    iput-boolean p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1281
    iput-boolean p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsRotateMenuHide:Z

    .line 1283
    :goto_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-ne p2, v0, :cond_1

    .line 1284
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->onScreenOrientationChangeRequired(Z)V

    goto :goto_1

    .line 1286
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method public unregisterUpdateMonitor()V
    .locals 1

    .line 1167
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public updateBiometricRecognition(Z)V
    .locals 2

    .line 323
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    if-eqz v0, :cond_1

    .line 324
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 325
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->updateBiometricRecognition(Z)V

    goto :goto_0

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateDynamicLockData(Ljava/lang/String;)V
    .locals 7

    .line 208
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/4 v1, 0x0

    const-string v2, "PluginLockMediatorImpl"

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v0, :cond_1

    :cond_0
    sget v0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->sScreenType:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    new-array p0, v1, [Ljava/lang/Object;

    const-string/jumbo p1, "updateDynamicLockData skip"

    .line 209
    invoke-static {v2, p1, p0}, Lcom/android/systemui/util/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    .line 213
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDynamicLockData dynamicLockData: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 216
    :try_start_0
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 217
    const-class v4, Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, p1, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/pluginlock/model/DynamicLockData;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 219
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[parse, update] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 223
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDynamicLockData() currData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDynamicLockData() newData:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 228
    :try_start_1
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSwipe:Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 229
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mSecure:Lcom/android/systemui/pluginlock/component/PluginLockSecure;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockSecure;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 230
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockWallpaper:Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockWallpaper;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 231
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHelpText:Lcom/android/systemui/pluginlock/component/PluginLockHelpText;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockHelpText;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V

    .line 232
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mLockIcon:Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockLockIcon;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    .line 234
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[basic, update] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 238
    :goto_1
    :try_start_2
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mClock:Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockFaceWidget;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v3

    .line 240
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[clock, update] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 244
    :goto_2
    :try_start_3
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mMusic:Lcom/android/systemui/pluginlock/component/PluginLockMusic;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockMusic;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v3

    .line 246
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[music, update] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 250
    :goto_3
    :try_start_4
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mNotification:Lcom/android/systemui/pluginlock/component/PluginLockNotification;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockNotification;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v3

    .line 252
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[notification, update] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 256
    :goto_4
    :try_start_5
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStatusBar:Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockStatusBar;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_5

    :catchall_5
    move-exception v3

    .line 258
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[statusbar, update] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 262
    :goto_5
    :try_start_6
    iget-object v3, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mShortcut:Lcom/android/systemui/pluginlock/component/PluginLockShortcut;

    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    invoke-virtual {v3, v4, v0}, Lcom/android/systemui/pluginlock/component/PluginLockShortcut;->update(Lcom/android/systemui/pluginlock/model/DynamicLockData;Lcom/android/systemui/pluginlock/model/DynamicLockData;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    goto :goto_6

    :catchall_6
    move-exception v3

    .line 264
    iget-object v4, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mUtils:Lcom/android/systemui/pluginlock/PluginLockUtils;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[shortcut, update] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Lcom/android/systemui/pluginlock/PluginLockUtils;->addDump(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    :goto_6
    iput-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mCurrentDynamicLockData:Lcom/android/systemui/pluginlock/model/DynamicLockData;

    .line 268
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/model/DynamicLockData;->isDlsData()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsDynamicLockData:Z

    .line 269
    invoke-direct {p0}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->publishLockStarState()V

    .line 273
    :cond_2
    :goto_7
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 274
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mStateListenerList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    .line 276
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    if-eqz v0, :cond_3

    .line 278
    invoke-interface {v0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;->updateDynamicLockData(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_4
    return-void
.end method

.method public updateOverlayUserTimeout(Z)V
    .locals 2

    .line 312
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    if-eqz v0, :cond_1

    .line 313
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 314
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->updateOverlayUserTimeout(Z)V

    goto :goto_0

    .line 316
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public updateWindowSecureState(Z)V
    .locals 2

    .line 296
    iput-boolean p1, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mIsSecureWindow:Z

    .line 297
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    if-eqz v0, :cond_1

    .line 298
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 299
    iget-object p0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mWindowListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/listener/PluginLockListener$Window;->updateWindowSecureState(Z)V

    goto :goto_0

    .line 301
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediatorImpl$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/pluginlock/PluginLockMediatorImpl;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method
