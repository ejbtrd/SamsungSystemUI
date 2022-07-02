.class public Lcom/android/keyguard/DualDarInnerLockScreenController;
.super Ljava/lang/Object;
.source "DualDarInnerLockScreenController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/DualDarInnerLockScreenController$Factory;
    }
.end annotation


# instance fields
.field private mBaseView:Lcom/android/keyguard/KeyguardInputView;

.field private mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/keyguard/KeyguardInputViewController<",
            "Lcom/android/keyguard/KeyguardInputView;",
            ">;"
        }
    .end annotation
.end field

.field private mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private final mContext:Landroid/content/Context;

.field private final mDualDarKeyguardSecurityCallback:Lcom/android/keyguard/DualDarKeyguardSecurityCallback;

.field private final mHandler:Landroid/os/Handler;

.field private mIsImeShown:Z

.field private mIsPassword:Z

.field private final mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private final mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

.field final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNavigationBarHeight:I

.field private final mParent:Landroid/view/ViewGroup;

.field private final mParentController:Lcom/android/keyguard/KeyguardSecurityContainerController;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public static synthetic $r8$lambda$5PzLCNRZbIqiT61oiormptmtL_4(Lcom/android/keyguard/DualDarInnerLockScreenController;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/DualDarInnerLockScreenController;->lambda$show$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityCallback;Lcom/android/keyguard/DualDarKeyguardSecurityCallback;Landroid/os/Handler;Landroid/view/LayoutInflater;Lcom/android/keyguard/KeyguardInputViewController$Factory;)V
    .locals 1

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-class v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/knox/KnoxStateMonitor;

    iput-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    .line 91
    new-instance v0, Lcom/android/keyguard/DualDarInnerLockScreenController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/DualDarInnerLockScreenController$1;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V

    iput-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 229
    new-instance v0, Lcom/android/keyguard/DualDarInnerLockScreenController$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/DualDarInnerLockScreenController$4;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V

    iput-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 79
    iput-object p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mContext:Landroid/content/Context;

    .line 80
    iput-object p7, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mHandler:Landroid/os/Handler;

    .line 81
    iput-object p2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParent:Landroid/view/ViewGroup;

    .line 82
    iput-object p3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParentController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 83
    iput-object p4, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 84
    iput-object p5, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 85
    iput-object p6, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mDualDarKeyguardSecurityCallback:Lcom/android/keyguard/DualDarKeyguardSecurityCallback;

    .line 86
    new-instance p2, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 87
    iput-object p8, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 88
    iput-object p9, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/keyguard/DualDarInnerLockScreenController;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/keyguard/DualDarInnerLockScreenController;->dismissInnerLockScreen(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/keyguard/KeyguardSecurityCallback;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/DualDarInnerLockScreenController;)Landroid/os/Handler;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/keyguard/DualDarInnerLockScreenController;)Lcom/android/internal/widget/LockPatternUtils;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object p0
.end method

.method private dismissInnerLockScreen(I)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0, p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getMainUserId(I)I

    move-result v0

    .line 221
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->hide()V

    .line 223
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 224
    invoke-interface {p0, v0, p1}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZI)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$show$0(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 5

    .line 156
    invoke-direct {p0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->needsFitsSystemWindows()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 158
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    .line 159
    :cond_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 160
    :goto_0
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    move-result-object v2

    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    .line 162
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/WindowInsets;->isVisible(I)Z

    move-result v3

    .line 163
    iget-boolean v4, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    if-eq v4, v3, :cond_1

    .line 164
    iput-boolean v3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    .line 165
    iget-object v3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParent:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-direct {p0, v3, v4}, Lcom/android/keyguard/DualDarInnerLockScreenController;->updateLayoutMargins(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 167
    :cond_1
    invoke-static {v0, v2}, Ljava/lang/Integer;->max(II)I

    move-result p0

    goto :goto_1

    :cond_2
    move p0, v1

    .line 171
    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Landroid/view/View;->getPaddingRight()I

    move-result v3

    invoke-virtual {p1, v0, v2, v3, p0}, Landroid/view/View;->setPadding(IIII)V

    .line 172
    invoke-virtual {p2, v1, v1, v1, p0}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method private needsFitsSystemWindows()Z
    .locals 2

    .line 346
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getInnerAuthUserId(I)I

    move-result v0

    .line 347
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateLayoutMargins(ILandroid/view/ViewGroup;Landroid/view/View;)V
    .locals 9

    .line 293
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_NAVBAR_ENABLED:Z

    if-eqz v0, :cond_8

    if-nez p3, :cond_0

    goto/16 :goto_4

    .line 296
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 298
    invoke-direct {p0}, Lcom/android/keyguard/DualDarInnerLockScreenController;->needsFitsSystemWindows()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsPassword:Z

    const v1, 0x1050204

    .line 299
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    .line 307
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 308
    invoke-direct {p0, p1, p2, p3}, Lcom/android/keyguard/DualDarInnerLockScreenController;->updateTabletLayout(ILandroid/view/ViewGroup;Landroid/view/View;)V

    return-void

    .line 312
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_FINGERPRINT_IN_DISPLAY:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    .line 314
    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecurityView;->needsInput()Z

    move-result v0

    if-eqz v0, :cond_2

    move v3, v1

    move v5, v3

    move v6, v5

    goto :goto_3

    .line 319
    :cond_2
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v0

    .line 320
    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v2

    const/4 v3, 0x1

    if-eq p1, v3, :cond_7

    const/4 v4, 0x3

    if-eq p1, v4, :cond_5

    .line 334
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isInDisplayFpSensorPositionHigh()Z

    move-result p1

    xor-int/2addr p1, v3

    and-int/2addr p1, v2

    .line 337
    iget-boolean v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsPassword:Z

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    if-eqz v2, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    goto :goto_0

    .line 338
    :cond_4
    iget v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    :goto_0
    move v6, v0

    move v3, v1

    move v5, v3

    goto :goto_3

    :cond_5
    if-eqz v2, :cond_6

    goto :goto_1

    .line 329
    :cond_6
    iget v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    .line 330
    :goto_1
    iget p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    move v5, p1

    move v3, v0

    goto :goto_2

    .line 324
    :cond_7
    iget p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    move v3, p1

    move v5, v3

    :goto_2
    move v6, v1

    :goto_3
    const/4 v4, 0x0

    move-object v2, p0

    move-object v7, p2

    move-object v8, p3

    .line 342
    invoke-direct/range {v2 .. v8}, Lcom/android/keyguard/DualDarInnerLockScreenController;->updateLayoutParams(IIIILandroid/view/ViewGroup;Landroid/view/View;)V

    :cond_8
    :goto_4
    return-void
.end method

.method private updateLayoutMargins(Landroid/view/ViewGroup;Landroid/view/View;)V
    .locals 1

    .line 288
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v0

    .line 289
    invoke-direct {p0, v0, p1, p2}, Lcom/android/keyguard/DualDarInnerLockScreenController;->updateLayoutMargins(ILandroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method

.method private updateLayoutParams(IIIILandroid/view/ViewGroup;Landroid/view/View;)V
    .locals 2

    if-nez p6, :cond_0

    const-string p0, "DualDarInnerLockScreenController"

    const-string/jumbo p1, "updateLayoutParams securityViewFlipper is null"

    .line 385
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 388
    :cond_0
    invoke-virtual {p5}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    .line 389
    invoke-virtual {p6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 390
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 391
    sget p0, Lcom/android/systemui/R$dimen;->kg_message_area_width_tablet:I

    invoke-virtual {p5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    const/4 p0, 0x1

    .line 392
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_2

    .line 393
    :cond_1
    sget-boolean v1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/util/DeviceState;->isSmartViewFitToActiveDisplay(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 394
    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->isFolderOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 395
    iget-boolean p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsPassword:Z

    if-eqz p0, :cond_2

    .line 396
    sget p0, Lcom/android/systemui/R$dimen;->kg_password_message_area_width_dual_display:I

    goto :goto_0

    .line 397
    :cond_2
    sget p0, Lcom/android/systemui/R$dimen;->kg_message_area_width_dual_display:I

    .line 395
    :goto_0
    invoke-virtual {p5, p0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    goto :goto_1

    :cond_3
    const/4 p0, -0x1

    .line 398
    :goto_1
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 399
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 401
    :cond_4
    :goto_2
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 402
    invoke-virtual {p6, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateTabletLayout(ILandroid/view/ViewGroup;Landroid/view/View;)V
    .locals 11

    .line 364
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v0

    .line 365
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->kg_emergency_button_margin_bottom_for_tablet_fingerprint:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/2addr v0, v1

    .line 367
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    .line 376
    iget-boolean p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsPassword:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    if-eqz p1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    .line 377
    :cond_1
    iget v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    :goto_0
    move v8, v0

    goto :goto_2

    .line 372
    :cond_2
    iget-boolean p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsPassword:Z

    if-eqz p1, :cond_3

    iget-boolean p1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mIsImeShown:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iget v3, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mNavigationBarHeight:I

    :goto_1
    move v8, v3

    :goto_2
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p0

    move-object v9, p2

    move-object v10, p3

    .line 380
    invoke-direct/range {v4 .. v10}, Lcom/android/keyguard/DualDarInnerLockScreenController;->updateLayoutParams(IIIILandroid/view/ViewGroup;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    new-instance v1, Lcom/android/keyguard/DualDarInnerLockScreenController$3;

    invoke-direct {v1, p0}, Lcom/android/keyguard/DualDarInnerLockScreenController$3;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardInputViewController;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    .line 206
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 207
    iput-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 209
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mDualDarKeyguardSecurityCallback:Lcom/android/keyguard/DualDarKeyguardSecurityCallback;

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParentController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    iget-object v1, v1, Lcom/android/keyguard/KeyguardSecurityContainerController;->mSecurityModel:Lcom/android/keyguard/KeyguardSecurityModel;

    .line 210
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardSecurityModel;->getSecurityMode(I)Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParentController:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 211
    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardSecurityContainerController;->needsInput()Z

    move-result v2

    .line 209
    invoke-interface {v0, v1, v2}, Lcom/android/keyguard/DualDarKeyguardSecurityCallback;->onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 213
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 214
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-interface {p0, v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getInnerAuthUserId(I)I

    move-result p0

    const/4 v1, 0x0

    .line 213
    invoke-interface {v0, p0, v1}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchDualDarInnerLockScreenState(IZ)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 8

    .line 105
    iget-object v0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/systemui/knox/KnoxStateMonitor;->getInnerAuthUserId(I)I

    move-result v0

    .line 106
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getCredentialTypeForUser(I)I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const-string v1, "DualDarInnerLockScreenController"

    const-string v2, "Something went wrong"

    .line 137
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 124
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/systemui/R$layout;->keyguard_knox_dual_dar_inner_password_view_tablet:I

    iget-object v6, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardInputView;

    goto :goto_0

    .line 125
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/systemui/R$layout;->keyguard_knox_dual_dar_inner_password_view:I

    iget-object v6, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardInputView;

    :goto_0
    iput-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 127
    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    sget-object v5, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v6, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v2, v1, v5, v6}, Lcom/android/keyguard/KeyguardInputViewController$Factory;->create(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    .line 130
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mDualDarKeyguardSecurityCallback:Lcom/android/keyguard/DualDarKeyguardSecurityCallback;

    invoke-interface {v1, v3, v4}, Lcom/android/keyguard/DualDarKeyguardSecurityCallback;->onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 132
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x51

    .line 133
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 134
    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_2

    .line 111
    :cond_2
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/systemui/R$layout;->keyguard_knox_dual_dar_inner_pin_view_tablet:I

    iget-object v6, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardInputView;

    goto :goto_1

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/systemui/R$layout;->keyguard_knox_dual_dar_inner_pin_view:I

    iget-object v6, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParent:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/keyguard/KeyguardInputView;

    :goto_1
    iput-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    .line 114
    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mKeyguardSecurityViewControllerFactory:Lcom/android/keyguard/KeyguardInputViewController$Factory;

    sget-object v6, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    iget-object v7, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    invoke-virtual {v2, v1, v6, v7}, Lcom/android/keyguard/KeyguardInputViewController$Factory;->create(Lcom/android/keyguard/KeyguardInputView;Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Lcom/android/keyguard/KeyguardSecurityCallback;)Lcom/android/keyguard/KeyguardInputViewController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    .line 117
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mDualDarKeyguardSecurityCallback:Lcom/android/keyguard/DualDarKeyguardSecurityCallback;

    invoke-interface {v1, v3, v5}, Lcom/android/keyguard/DualDarKeyguardSecurityCallback;->onSecurityModeChanged(Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;Z)V

    .line 119
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x50

    .line 120
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 121
    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 141
    :goto_2
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    if-eqz v1, :cond_4

    .line 142
    new-instance v2, Lcom/android/keyguard/DualDarInnerLockScreenController$2;

    invoke-direct {v2, p0}, Lcom/android/keyguard/DualDarInnerLockScreenController$2;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 154
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    new-instance v2, Lcom/android/keyguard/DualDarInnerLockScreenController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/keyguard/DualDarInnerLockScreenController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/DualDarInnerLockScreenController;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 176
    :cond_4
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v1

    if-nez v1, :cond_5

    .line 177
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 179
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 180
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardInputViewController;->reset()V

    .line 181
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardInputViewController;->onResume(I)V

    .line 182
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseViewController:Lcom/android/keyguard/KeyguardInputViewController;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardInputViewController;->startAppearAnimation()V

    .line 184
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mParent:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-direct {p0, v1, v2}, Lcom/android/keyguard/DualDarInnerLockScreenController;->updateLayoutMargins(Landroid/view/ViewGroup;Landroid/view/View;)V

    .line 186
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 187
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 188
    iget-object v1, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mBaseView:Lcom/android/keyguard/KeyguardInputView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestFocus()Z

    .line 190
    iget-object p0, p0, Lcom/android/keyguard/DualDarInnerLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {p0, v0, v4}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->dispatchDualDarInnerLockScreenState(IZ)V

    :cond_5
    return-void
.end method
