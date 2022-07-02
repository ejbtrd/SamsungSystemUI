.class public Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;
.super Lcom/android/systemui/biometrics/UdfpsAnimationViewController;
.source "UdfpsKeyguardViewController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/biometrics/UdfpsAnimationViewController<",
        "Lcom/android/systemui/biometrics/UdfpsKeyguardView;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

.field private final mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field private mFaceDetectRunning:Z

.field private mInputBouncerHiddenAmount:F

.field private mIsBouncerVisible:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field private final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field private mLastDozeAmount:F

.field private final mLockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field private mQsExpanded:Z

.field private mShowingUdfpsBouncer:Z

.field private final mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

.field private mStatusBarState:I

.field private mTransitionToFullShadeProgress:F

.field private final mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

.field private mUdfpsRequested:Z


# direct methods
.method protected constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/biometrics/UdfpsController;)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2, p3, p7}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsAnimationView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/dump/DumpManager;)V

    .line 249
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    .line 269
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    .line 337
    new-instance p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController$3;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 84
    iput-object p4, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 85
    iput-object p5, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 86
    iput-object p6, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 87
    iput-object p8, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 88
    iput-object p9, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 89
    iput-object p10, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 90
    iput-object p11, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLastDozeAmount:F

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLastDozeAmount:F

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->showUdfpsBouncer(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Lcom/android/systemui/biometrics/UdfpsController;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;F)F
    .locals 0

    .line 46
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsBouncerVisible:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsBouncerVisible:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;I)I
    .locals 0

    .line 46
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarState:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    return p0
.end method

.method static synthetic access$602(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mQsExpanded:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)F
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mTransitionToFullShadeProgress:F

    return p0
.end method

.method private maybeShowInputBouncer()V
    .locals 2

    .line 224
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->showBouncer(Z)V

    .line 226
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->resetAlternateAuth(Z)V

    :cond_0
    return-void
.end method

.method private showUdfpsBouncer(Z)Z
    .locals 2

    .line 153
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    return v1

    .line 157
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    .line 158
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    .line 159
    iget-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_3

    .line 160
    iget p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarState:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 161
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->animateInUdfpsBouncer(Ljava/lang/Runnable;)V

    .line 164
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isOccluded()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 165
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuthOnOccludingApp(Z)V

    .line 168
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$string;->accessibility_fingerprint_bouncer:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 171
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuthOnOccludingApp(Z)V

    :goto_0
    return v0
.end method

.method private updateAlpha()V
    .locals 5

    .line 241
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xff

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    const v1, 0x3f666666    # 0.9f

    .line 242
    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    const/4 v3, 0x0

    const/high16 v4, 0x437f0000    # 255.0f

    .line 243
    invoke-static {v0, v1, v3, v4, v2}, Landroid/util/MathUtils;->map(FFFFF)F

    move-result v0

    .line 242
    invoke-static {v0, v3, v4}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 245
    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mTransitionToFullShadeProgress:F

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 246
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->setUnpausedAlpha(I)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 136
    invoke-super {p0, p1, p2, p3}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mShowingUdfpsBouncer="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 138
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mFaceDetectRunning="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mFaceDetectRunning:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 139
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mStatusBarState="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarState:I

    invoke-static {p3}, Lcom/android/systemui/statusbar/StatusBarState;->toShortString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 140
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mQsExpanded="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mQsExpanded:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsBouncerVisible="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsBouncerVisible:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 142
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mInputBouncerHiddenAmount="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mAlpha="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p3, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->getAlpha()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 144
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mUdfpsRequested="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 145
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mView.mUdfpsRequested="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardView;->mUdfpsRequested:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method getTag()Ljava/lang/String;
    .locals 0

    const-string p0, "UdfpsKeyguardViewController"

    return-object p0
.end method

.method public listenForTouchesOutsideView()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onTouchOutsideView()V
    .locals 0

    .line 214
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->maybeShowInputBouncer()V

    return-void
.end method

.method protected onViewAttached()V
    .locals 2

    .line 100
    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onViewAttached()V

    .line 101
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result v0

    .line 102
    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLastDozeAmount:F

    .line 103
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v1, v0, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;->onDozeAmountChanged(FF)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    const/4 v0, 0x0

    .line 106
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    .line 108
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarState:I

    .line 109
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isQsExpanded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mQsExpanded:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 110
    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    .line 111
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->bouncerIsOrWillBeShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsBouncerVisible:Z

    .line 112
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 113
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    .line 114
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->setAlternateAuthInterceptor(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;)V

    .line 117
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setUdfpsKeyguardViewController(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 3

    .line 122
    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onViewDetached()V

    const/4 v0, 0x0

    .line 123
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mFaceDetectRunning:Z

    .line 125
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStateListener:Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;

    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 126
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mAlternateAuthInterceptor:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->removeAlternateAuthInterceptor(Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager$AlternateAuthInterceptor;)V

    .line 127
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuthOnOccludingApp(Z)V

    .line 128
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mConfigurationListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 129
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->getUdfpsKeyguardViewController()Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 130
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mLockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->setUdfpsKeyguardViewController(Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;)V

    :cond_0
    return-void
.end method

.method public setTransitionToFullShadeProgress(F)V
    .locals 0

    .line 235
    iput p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mTransitionToFullShadeProgress:F

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->updateAlpha()V

    return-void
.end method

.method public shouldPauseAuth()Z
    .locals 4

    .line 182
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mShowingUdfpsBouncer:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 186
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mUdfpsRequested:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->mNotificationShadeExpanded:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsBouncerVisible:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_2

    :cond_1
    return v1

    .line 192
    :cond_2
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mStatusBarState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    return v2

    .line 196
    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mQsExpanded:Z

    if-eqz v0, :cond_4

    return v2

    .line 200
    :cond_4
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mInputBouncerHiddenAmount:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_6

    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewController;->mIsBouncerVisible:Z

    if-eqz p0, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    :goto_0
    return v2
.end method
