.class public Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;
.super Landroid/widget/FrameLayout;
.source "KeyguardPunchHoleVIView.java"


# instance fields
.field TAG:Ljava/lang/String;

.field private mAppliedVIFileName:Ljava/lang/String;

.field private final mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mCurrentAnimation:I

.field private final mDisplayLifeCycleObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

.field private final mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

.field private final mHandler:Landroid/os/Handler;

.field private mIsAnimationPlaying:Z

.field private mIsBouncerVI:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLastDensityDpi:I

.field private mLastDisplayDeviceType:I

.field private mLastLayoutDirection:I

.field private mLastUpdatedFolderOpened:Z

.field private mLastUpdatedRotation:I

.field private mLastUpdatedScreenHeight:I

.field private mLastUpdatedScreenWidth:I

.field private final mLockStarCallback:Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;

.field private mLockStarVIView:Landroid/widget/FrameLayout;

.field private mPlayModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

.field private mPreparedState:I

.field private final mRotationWatcher:Lcom/android/systemui/shared/system/RotationWatcher;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mStopModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "Landroid/view/ViewGroup;",
            ">;"
        }
    .end annotation
.end field

.field private mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

.field private mVIView:Lcom/airbnb/lottie/LottieAnimationView;

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private final mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private final updateScreenConfigRunnable:Ljava/lang/Runnable;

.field private final updateVILocationRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$RH7r_3lbz8qyxIso2ChfGVju5hE(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Lcom/airbnb/lottie/LottieComposition;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->lambda$prepareVI$3(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TW50_yEAUJwMC1hi4BWQ2HmmFHk(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->lambda$prepareVI$4(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y9_vOyNYAdb_WroZvlMezmocPi4(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocation()V

    return-void
.end method

.method public static synthetic $r8$lambda$hxCiBxHQqaKv8iDsdqoHTmp3iOU(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Landroid/net/Uri;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->lambda$onFinishInflate$2(Landroid/net/Uri;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tR52MJlneDyW89zFTlAqLfRrV7A(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->lambda$onDetachedFromWindow$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$v3OIv9rVq7XDuw-w2Q3XRXELnmU(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateScreenConfig()V

    return-void
.end method

.method public static synthetic $r8$lambda$vVbPX2r7aseuC1KBp7PrcXKp1a0(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->lambda$onAttachedToWindow$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 204
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 208
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 212
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    const-class p2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    .line 53
    new-instance p2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda3;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    iput-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Ljava/lang/Runnable;

    .line 54
    new-instance p2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda5;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    iput-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateScreenConfigRunnable:Ljava/lang/Runnable;

    const/4 p2, 0x0

    .line 63
    iput p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    .line 64
    iput p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    .line 65
    iput-boolean p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    .line 66
    iput-boolean p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsBouncerVI:Z

    const/4 p3, 0x0

    .line 67
    iput-object p3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mAppliedVIFileName:Ljava/lang/String;

    .line 72
    iput p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    .line 73
    iput p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenWidth:I

    .line 74
    iput p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenHeight:I

    .line 75
    iput p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastLayoutDirection:I

    .line 76
    iput p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDensityDpi:I

    const/4 p2, -0x1

    .line 77
    iput p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDisplayDeviceType:I

    .line 91
    new-instance p2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$1;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    iput-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarCallback:Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;

    .line 109
    new-instance p2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;

    invoke-direct {p2, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$2;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    iput-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mDisplayLifeCycleObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    .line 149
    new-instance p2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;

    invoke-direct {p2, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$3;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    iput-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 195
    new-instance p2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$4;

    invoke-direct {p2, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$4;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    iput-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 214
    sget-object p2, Lcom/android/systemui/Dependency;->MAIN_HANDLER:Lcom/android/systemui/Dependency$DependencyKey;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Lcom/android/systemui/Dependency$DependencyKey;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    iput-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    .line 216
    new-instance p2, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$5;

    invoke-direct {p2, p0, p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$5;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mRotationWatcher:Lcom/android/systemui/shared/system/RotationWatcher;

    .line 223
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 224
    const-class p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 225
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 226
    const-class p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 229
    const-class p1, Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/lockstar/PluginLockStarManager;

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    return-void
.end method

.method private acceptModifier(Z)V
    .locals 2

    .line 524
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getPluginLockStar()Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    move-result-object v0

    .line 525
    invoke-direct {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->isLockStarEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "punchHoleVIPlay"

    .line 526
    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPlayModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    const-string v1, "punchHoleVIStop"

    .line 527
    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mStopModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    if-eqz p1, :cond_1

    .line 529
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPlayModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    if-eqz p1, :cond_2

    .line 531
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "bouncer"

    if-eqz p1, :cond_0

    .line 534
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 537
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",whitebg:"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 538
    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/VIDirector;->isWhiteKeyguardWallpaper()Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 537
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 539
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPlayModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 543
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic access$002(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mAppliedVIFileName:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Z)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->acceptModifier(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsBouncerVI:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Ljava/lang/Runnable;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateScreenConfigRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Z
    .locals 0

    .line 41
    iget-boolean p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)Lcom/android/systemui/shared/system/RotationWatcher;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mRotationWatcher:Lcom/android/systemui/shared/system/RotationWatcher;

    return-object p0
.end method

.method private isLockStarEnabled()Z
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getPluginLockStar()Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 552
    invoke-interface {p0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onAttachedToWindow$0()V
    .locals 5

    .line 238
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 239
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 240
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/net/Uri;

    const-string v3, "any_screen_running"

    .line 241
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 240
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 242
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 243
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mRotationWatcher:Lcom/android/systemui/shared/system/RotationWatcher;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/RotationWatcher;->enable()V

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mDisplayLifeCycleObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 248
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    iput v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDisplayDeviceType:I

    .line 251
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarCallback:Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->registerCallback(Ljava/lang/String;Lcom/android/systemui/lockstar/PluginLockStarManager$LockStarCallback;)Z

    return-void
.end method

.method private synthetic lambda$onDetachedFromWindow$1()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 264
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mRotationWatcher:Lcom/android/systemui/shared/system/RotationWatcher;

    invoke-virtual {v0}, Lcom/android/systemui/shared/system/RotationWatcher;->disable()V

    .line 266
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mDisplayLifeCycleObserver:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->unregisterCallback(Ljava/lang/String;)Z

    return-void
.end method

.method private synthetic lambda$onFinishInflate$2(Landroid/net/Uri;)V
    .locals 0

    .line 297
    iget-boolean p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    if-eqz p1, :cond_0

    .line 298
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->stopVI()V

    goto :goto_0

    .line 300
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 301
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->startVI()V

    :cond_1
    :goto_0
    return-void
.end method

.method private synthetic lambda$prepareVI$3(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string v1, "prepareVI() - VI is prepared"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, p1}, Lcom/airbnb/lottie/LottieAnimationView;->setComposition(Lcom/airbnb/lottie/LottieComposition;)V

    .line 438
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    const/4 p1, 0x3

    .line 440
    invoke-direct {p0, p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setPrepareState(I)V

    .line 441
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 442
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 444
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->startVI()V

    return-void
.end method

.method private synthetic lambda$prepareVI$4(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 447
    iget-object p2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to parse json composition : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 448
    invoke-direct {p0, p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setPrepareState(I)V

    return-void
.end method

.method private prepareVI(Ljava/lang/String;)V
    .locals 2

    .line 422
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareVI() - return, no VI file : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 427
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mAppliedVIFileName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepareVI() - return, already applied : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 432
    :cond_1
    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mAppliedVIFileName:Ljava/lang/String;

    .line 434
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/airbnb/lottie/LottieCompositionFactory;->fromAsset(Landroid/content/Context;Ljava/lang/String;)Lcom/airbnb/lottie/LottieTask;

    move-result-object v0

    .line 435
    new-instance v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    .line 446
    new-instance v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieTask;->addFailureListener(Lcom/airbnb/lottie/LottieListener;)Lcom/airbnb/lottie/LottieTask;

    const/4 p1, 0x0

    .line 451
    iput-boolean p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    const/4 p1, 0x1

    .line 452
    invoke-direct {p0, p1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setPrepareState(I)V

    return-void
.end method

.method private setAnimation(I)V
    .locals 3

    .line 374
    iget v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    if-ne v0, p1, :cond_0

    return-void

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAnimation() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    return-void
.end method

.method private setPrepareState(I)V
    .locals 3

    .line 365
    iget v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    if-ne v0, p1, :cond_0

    return-void

    .line 368
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setPrepareState() "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    return-void
.end method

.method private updateScreenConfig()V
    .locals 10

    .line 383
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    if-nez v0, :cond_0

    .line 384
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateScreenConfig() return - mVIDirector is null ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;->getVendorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 388
    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenRotation()I

    move-result v0

    .line 389
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenWidth()I

    move-result v1

    .line 390
    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    invoke-virtual {v2}, Lcom/android/keyguard/punchhole/VIDirector;->getScreenHeight()I

    move-result v2

    .line 392
    iget-object v3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v3}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v3, :cond_2

    iget v3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDisplayDeviceType:I

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v5

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v4

    .line 394
    :goto_1
    sget-boolean v6, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v6, :cond_4

    .line 395
    iget-boolean v6, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedFolderOpened:Z

    if-eq v6, v3, :cond_3

    goto :goto_2

    :cond_3
    move v4, v5

    :goto_2
    move v5, v4

    .line 397
    :cond_4
    iget v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    if-ne v4, v0, :cond_5

    iget v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenWidth:I

    if-ne v4, v1, :cond_5

    iget v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenHeight:I

    if-ne v4, v2, :cond_5

    if-eqz v5, :cond_7

    .line 401
    :cond_5
    iget-object v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateScreenConfig() rotation "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " -> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", screen width "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenWidth:I

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenHeight:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iput v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedRotation:I

    .line 405
    iput v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenWidth:I

    .line 406
    iput v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedScreenHeight:I

    if-eqz v5, :cond_6

    .line 409
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateScreenConfig() isFolderOpened "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedFolderOpened:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iput-boolean v3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedFolderOpened:Z

    .line 411
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/android/keyguard/punchhole/VIDirectorFactory;->createVIDirector(Landroid/content/Context;Z)Lcom/android/keyguard/punchhole/VIDirector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 414
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 415
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 418
    :cond_7
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->startVI()V

    return-void
.end method

.method private updateVILocation()V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    if-nez v0, :cond_0

    .line 309
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVILocation() return - mVIDirector is null ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;->getVendorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 313
    :cond_0
    iget v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mCurrentAnimation:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v0, v1, v3}, Lcom/android/keyguard/punchhole/VIDirector;->getVIViewLocation(IZ)Landroid/graphics/Rect;

    move-result-object v0

    .line 314
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVILocation() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    invoke-virtual {v2}, Lcom/android/keyguard/punchhole/VIDirector;->getVIViewRotation()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setRotation(F)V

    .line 317
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 318
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    iget v2, v0, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 320
    iget-object v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 321
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    if-gez v2, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    neg-int v2, v2

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    :goto_1
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 322
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 323
    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    invoke-virtual {v3}, Lcom/android/keyguard/punchhole/VIDirector;->getVIViewRotation()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setRotation(F)V

    .line 327
    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 328
    iget-object v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 329
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .line 235
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 237
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda6;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 5

    .line 127
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 128
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 129
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutDirection()I

    move-result v1

    .line 130
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    .line 132
    sget-boolean v2, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    const-string v3, " -> "

    if-eqz v2, :cond_0

    iget v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDisplayDeviceType:I

    if-eq v2, p1, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigurationChanged() display device type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDisplayDeviceType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iput p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDisplayDeviceType:I

    .line 136
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateScreenConfigRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 137
    :cond_0
    iget p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDensityDpi:I

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastLayoutDirection:I

    if-eq p1, v1, :cond_2

    .line 138
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onConfigurationChanged() density "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDensityDpi:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", direction "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastLayoutDirection:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    iput v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastDensityDpi:I

    .line 142
    iput v1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastLayoutDirection:I

    .line 144
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 145
    iget-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->updateVILocationRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 258
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 260
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda4;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .line 277
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 279
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mDisplayLifecycle:Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLastUpdatedFolderOpened:Z

    .line 281
    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/keyguard/punchhole/VIDirectorFactory;->createVIDirector(Landroid/content/Context;Z)Lcom/android/keyguard/punchhole/VIDirector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    goto :goto_0

    .line 283
    :cond_0
    sget-object v0, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    iget-object v1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;->createVIDirector(Landroid/content/Context;)Lcom/android/keyguard/punchhole/VIDirector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    .line 285
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    if-nez v0, :cond_1

    .line 286
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate() return - mVIDirector is null ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    invoke-virtual {v2}, Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;->getVendorName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    .line 287
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void

    .line 291
    :cond_1
    sget v0, Lcom/android/systemui/R$id;->keyguard_punch_hole_vi_animation_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    .line 293
    sget v0, Lcom/android/systemui/R$id;->lock_star_punch_hole_vi_animation_view:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    .line 296
    new-instance v0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;)V

    iput-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mSettingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    return-void
.end method

.method public setFaceRecognitionVI()V
    .locals 2

    .line 349
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setFaceRecognitionVI()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_PUNCH_HOLE_FACE_VI:Z

    if-nez v0, :cond_0

    .line 351
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "setFaceRecognitionVI() return - face recognition vi is not supported by product feature"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    if-nez v0, :cond_1

    .line 356
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setFaceRecognitionVI() return - mVIDirector is null ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/keyguard/punchhole/VIDirectorFactory;->Companion:Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;

    invoke-virtual {v1}, Lcom/android/keyguard/punchhole/VIDirectorFactory$Companion;->getVendorName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x1

    .line 360
    invoke-direct {p0, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setAnimation(I)V

    .line 361
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    invoke-virtual {v0}, Lcom/android/keyguard/punchhole/VIDirector;->getFaceRecognitionVIFileName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->prepareVI(Ljava/lang/String;)V

    return-void
.end method

.method public setInBouncer(Z)V
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIDirector:Lcom/android/keyguard/punchhole/VIDirector;

    if-eqz v0, :cond_0

    .line 335
    iput-boolean p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsBouncerVI:Z

    .line 336
    invoke-virtual {v0, p1}, Lcom/android/keyguard/punchhole/VIDirector;->setBouncerShowing(Z)V

    .line 337
    invoke-virtual {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setFaceRecognitionVI()V

    .line 339
    invoke-direct {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->isLockStarEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    const-string v1, "bouncer"

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    const/4 v0, 0x1

    .line 341
    invoke-direct {p0, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->acceptModifier(Z)V

    .line 345
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_1

    const-string p1, "_Bouncer"

    goto :goto_0

    :cond_1
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public startVI()V
    .locals 4

    .line 456
    iget v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_1

    if-ne v0, v2, :cond_0

    .line 458
    invoke-direct {p0, v1}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->setPrepareState(I)V

    .line 460
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startVI() - return, not prepared"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 464
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    if-eqz v0, :cond_2

    .line 465
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startVI() - return, animation is already playing"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 469
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceDetectionRunning()Z

    move-result v0

    if-nez v0, :cond_3

    .line 470
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startVI() - return, face recognition is stopped"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 474
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->getWakefulness()I

    move-result v0

    if-eq v0, v1, :cond_4

    .line 475
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startVI() - return, WakefulnessLifecycle is not WAKEFULNESS_AWAKE"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 479
    :cond_4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 480
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startVI() - return, smart view"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 484
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 485
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startVI() - return, one hand mode running"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 489
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startVI()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 490
    iput-boolean v2, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    .line 491
    invoke-direct {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->isLockStarEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_7

    .line 492
    invoke-direct {p0, v2}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->acceptModifier(Z)V

    .line 493
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 495
    :cond_7
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 496
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    :goto_0
    return-void
.end method

.method public stopVI()V
    .locals 3

    .line 501
    iget v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mPreparedState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 502
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "stopVI() - return, not prepared"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 506
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    if-nez v0, :cond_1

    .line 507
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "stopVI() - return, animation is not playing"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 511
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopVI()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 512
    iput-boolean v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mIsAnimationPlaying:Z

    .line 513
    invoke-direct {p0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->isLockStarEnabled()Z

    move-result v1

    const/4 v2, 0x4

    if-eqz v1, :cond_2

    .line 514
    invoke-direct {p0, v0}, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->acceptModifier(Z)V

    .line 515
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mLockStarVIView:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 517
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 518
    iget-object p0, p0, Lcom/android/keyguard/punchhole/KeyguardPunchHoleVIView;->mVIView:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {p0}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    :goto_0
    return-void
.end method
