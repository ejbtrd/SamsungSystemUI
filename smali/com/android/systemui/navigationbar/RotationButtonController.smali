.class public Lcom/android/systemui/navigationbar/RotationButtonController;
.super Ljava/lang/Object;
.source "RotationButtonController.java"

# interfaces
.implements Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/navigationbar/RotationButtonController$RotationButtonEvent;,
        Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;,
        Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;
    }
.end annotation


# instance fields
.field private mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

.field private mBehavior:I

.field private final mCancelPendingRotationProposal:Ljava/lang/Runnable;

.field private final mContext:Landroid/content/Context;

.field private mDarkIconColor:I

.field private mHomeRotationEnabled:Z

.field private mHoveringRotationSuggestion:Z

.field private mIconResId:I

.field private mIsNavigationBarShowing:Z

.field private mIsRecentsAnimationRunning:Z

.field private mLastRotationSuggestion:I

.field mLastUnknownRotationProposedTick:J

.field private mLightIconColor:I

.field private mListenersRegistered:Z

.field private final mMainThreadHandler:Landroid/os/Handler;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private mNavBarMode:I

.field private mPendingRotationSuggestion:Z

.field private final mRemoveRotationProposal:Ljava/lang/Runnable;

.field private mRotWatcherListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRotateHideAnimator:Landroid/animation/Animator;

.field private mRotateSuggestionButtonShowRunnable:Ljava/lang/Runnable;

.field private mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

.field private final mRotationLockCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

.field private mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

.field private final mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

.field private mSkipOverrideUserLockPrefsOnce:Z

.field private mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

.field private mStyleRes:I

.field private mTaskStackListener:Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

.field private final mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

.field private final mViewRippler:Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;


# direct methods
.method public static synthetic $r8$lambda$EgQXKIsd5cCh73nIJ2ELKEupB0o(Lcom/android/systemui/navigationbar/RotationButtonController;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/RotationButtonController;->onRotateSuggestionHover(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$GxmebPWhsqfX95jJhWPMdJo7Oaw(Lcom/android/systemui/navigationbar/RotationButtonController;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->onRotateSuggestionClick(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HGQg5Xlyaj52-_PmjiqBk59RkKI(Lcom/android/systemui/navigationbar/RotationButtonController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->lambda$new$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$RKC8vc0YCMmgWzmB_75_A9Sb_NQ(Lcom/android/systemui/navigationbar/RotationButtonController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$ncH5Ht05_5MnAQzPuRR2eXGADlg(Lcom/android/systemui/navigationbar/RotationButtonController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->lambda$new$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$yaiomVmrMFBSqV7bVSK4_y6tQt8(Lcom/android/systemui/navigationbar/RotationButtonController;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/navigationbar/RotationButtonController;->lambda$new$3(ZZ)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;II)V
    .locals 6

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 87
    new-instance v0, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;Lcom/android/systemui/navigationbar/RotationButtonController$1;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mViewRippler:Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;

    const/4 v0, 0x0

    .line 99
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    const/4 v2, 0x1

    .line 101
    iput v2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mBehavior:I

    .line 105
    sget-boolean v3, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v3, :cond_0

    sget v4, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_rotate_button:I

    goto :goto_0

    :cond_0
    sget v4, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button_ccw_start_90:I

    :goto_0
    iput v4, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIconResId:I

    .line 107
    new-instance v4, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda4;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    iput-object v4, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    .line 109
    new-instance v4, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0}, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    iput-object v4, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    .line 113
    sget v4, Lcom/android/systemui/R$style;->SamsungRotateButtonCCWStart90:I

    iput v4, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mStyleRes:I

    const-wide/16 v4, 0x0

    .line 121
    iput-wide v4, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLastUnknownRotationProposedTick:J

    .line 123
    const-class v4, Lcom/android/internal/logging/MetricsLogger;

    .line 124
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/logging/MetricsLogger;

    iput-object v4, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 127
    iput v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mNavBarMode:I

    .line 130
    new-instance v0, Lcom/android/systemui/navigationbar/RotationButtonController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/RotationButtonController$1;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    .line 153
    new-instance v0, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateSuggestionButtonShowRunnable:Ljava/lang/Runnable;

    .line 156
    new-instance v0, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    iput-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationLockCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    .line 174
    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mContext:Landroid/content/Context;

    .line 175
    iput p2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLightIconColor:I

    .line 176
    iput p3, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mDarkIconColor:I

    .line 178
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsNavigationBarShowing:Z

    .line 179
    const-class p1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/RotationLockController;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    .line 180
    const-class p1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 181
    new-instance p1, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;Lcom/android/systemui/navigationbar/RotationButtonController$1;)V

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

    if-eqz v3, :cond_1

    .line 184
    const-class p1, Lcom/android/systemui/navigationbar/store/NavBarStore;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/navigationbar/store/NavBarStore;

    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    :cond_1
    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/navigationbar/RotationButtonController;)Landroid/os/Handler;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/navigationbar/RotationButtonController;)Lcom/android/systemui/statusbar/policy/RotationLockController;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/navigationbar/RotationButtonController;I)Z
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->shouldOverrideUserLockPrefs(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/navigationbar/RotationButtonController;)Ljava/util/function/Consumer;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotWatcherListener:Ljava/util/function/Consumer;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/navigationbar/RotationButtonController;)Lcom/android/systemui/navigationbar/RotationButton;
    .locals 0

    .line 76
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    return-object p0
.end method

.method private canShowRotationButton()Z
    .locals 2

    .line 461
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsNavigationBarShowing:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mBehavior:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private computeRotationProposalTimeout()I
    .locals 2

    .line 577
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mAccessibilityManagerWrapper:Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;

    .line 578
    iget-boolean p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mHoveringRotationSuggestion:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x3e80

    goto :goto_0

    :cond_0
    const/16 p0, 0x1388

    :goto_0
    const/4 v1, 0x4

    .line 577
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/policy/AccessibilityManagerWrapper;->getRecommendedTimeoutMillis(II)I

    move-result p0

    return p0
.end method

.method static hasDisable2RotateSuggestionFlag(I)Z
    .locals 0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private incrementNumAcceptedRotationSuggestionsIfNeeded()V
    .locals 3

    .line 590
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "num_rotation_suggestions_accepted"

    const/4 v1, 0x0

    .line 591
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    add-int/2addr v1, v2

    .line 596
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private isRotateSuggestionIntroduced()Z
    .locals 2

    .line 583
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "num_rotation_suggestions_accepted"

    const/4 v1, 0x0

    .line 584
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private isRotationAnimationCCW(II)Z
    .locals 3

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    return p0

    :cond_0
    const/4 v1, 0x2

    if-nez p1, :cond_1

    if-ne p2, v1, :cond_1

    return v0

    :cond_1
    const/4 v2, 0x3

    if-nez p1, :cond_2

    if-ne p2, v2, :cond_2

    return v0

    :cond_2
    if-ne p1, v0, :cond_3

    if-nez p2, :cond_3

    return v0

    :cond_3
    if-ne p1, v0, :cond_4

    if-ne p2, v1, :cond_4

    return p0

    :cond_4
    if-ne p1, v0, :cond_5

    if-ne p2, v2, :cond_5

    return v0

    :cond_5
    if-ne p1, v1, :cond_6

    if-nez p2, :cond_6

    return v0

    :cond_6
    if-ne p1, v1, :cond_7

    if-ne p2, v0, :cond_7

    return v0

    :cond_7
    if-ne p1, v1, :cond_8

    if-ne p2, v2, :cond_8

    return p0

    :cond_8
    if-ne p1, v2, :cond_9

    if-nez p2, :cond_9

    return p0

    :cond_9
    if-ne p1, v2, :cond_a

    if-ne p2, v0, :cond_a

    return v0

    :cond_a
    if-ne p1, v2, :cond_b

    if-ne p2, v1, :cond_b

    return v0

    :cond_b
    return p0
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    const/4 v0, 0x0

    .line 108
    invoke-virtual {p0, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void
.end method

.method private synthetic lambda$new$1()V
    .locals 1

    const/4 v0, 0x0

    .line 110
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mPendingRotationSuggestion:Z

    return-void
.end method

.method private synthetic lambda$new$2()V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 154
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    return-void
.end method

.method private synthetic lambda$new$3(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->resetUnknownRotationProposed()V

    :cond_0
    return-void
.end method

.method private onRotateSuggestionClick(Landroid/view/View;)V
    .locals 1

    .line 487
    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz p1, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->resetUnknownRotationProposed()V

    .line 489
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x507

    invoke-virtual {p1, v0}, Lcom/android/internal/logging/MetricsLogger;->action(I)V

    .line 491
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v0, Lcom/android/systemui/navigationbar/RotationButtonController$RotationButtonEvent;->ROTATION_SUGGESTION_ACCEPTED:Lcom/android/systemui/navigationbar/RotationButtonController$RotationButtonEvent;

    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 492
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->incrementNumAcceptedRotationSuggestionsIfNeeded()V

    .line 493
    iget p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLastRotationSuggestion:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotationLockedAtAngle(I)V

    return-void
.end method

.method private onRotateSuggestionHover(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .line 497
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    const/16 v1, 0x9

    if-eq p1, v1, :cond_1

    const/4 v1, 0x7

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move p1, p2

    goto :goto_1

    :cond_1
    :goto_0
    move p1, v0

    .line 498
    :goto_1
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mHoveringRotationSuggestion:Z

    .line 500
    invoke-direct {p0, v0}, Lcom/android/systemui/navigationbar/RotationButtonController;->rescheduleRotationTimeout(Z)V

    return p2
.end method

.method private onRotationSuggestionsDisabled()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 506
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    .line 507
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private rescheduleRotationTimeout(Z)V
    .locals 3

    if-eqz p1, :cond_1

    .line 564
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 566
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {p1}, Lcom/android/systemui/navigationbar/RotationButton;->isVisible()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 570
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 572
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    .line 573
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->computeRotationProposalTimeout()I

    move-result p0

    int-to-long v1, p0

    .line 572
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private resetUnknownRotationProposed()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 681
    iput-wide v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLastUnknownRotationProposedTick:J

    return-void
.end method

.method private shouldOverrideUserLockPrefs(I)Z
    .locals 2

    .line 534
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mSkipOverrideUserLockPrefsOnce:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 535
    iput-boolean v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mSkipOverrideUserLockPrefsOnce:Z

    return v1

    :cond_0
    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private showAndLogRotationSuggestion()V
    .locals 3

    .line 512
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {v1}, Lcom/android/systemui/navigationbar/RotationButton;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 513
    iget-object v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {v1}, Lcom/android/systemui/navigationbar/RotationButton;->hide()Z

    :cond_0
    const/4 v1, 0x1

    .line 515
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    const/4 v1, 0x0

    .line 516
    invoke-direct {p0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController;->rescheduleRotationTimeout(Z)V

    .line 517
    iget-object v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    sget-object v2, Lcom/android/systemui/navigationbar/RotationButtonController$RotationButtonEvent;->ROTATION_SUGGESTION_SHOWN:Lcom/android/systemui/navigationbar/RotationButtonController$RotationButtonEvent;

    invoke-interface {v1, v2}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    if-eqz v0, :cond_1

    .line 519
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->resetUnknownRotationProposed()V

    .line 520
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/16 v0, 0x508

    invoke-virtual {p0, v0}, Lcom/android/internal/logging/MetricsLogger;->visible(I)V

    :cond_1
    return-void
.end method

.method private showPendingRotationButtonIfNeeded()V
    .locals 1

    .line 454
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->canShowRotationButton()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mPendingRotationSuggestion:Z

    if-eqz v0, :cond_0

    .line 455
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->showAndLogRotationSuggestion()V

    :cond_0
    return-void
.end method

.method private updateRotationButtonStateInOverview()V
    .locals 2

    .line 350
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsRecentsAnimationRunning:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mHomeRotationEnabled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 351
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    :cond_0
    return-void
.end method


# virtual methods
.method addRotationCallback(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 243
    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotWatcherListener:Ljava/util/function/Consumer;

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .line 465
    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mStyleRes:I

    invoke-direct {v0, v1, p0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public getDarkIconColor()I
    .locals 0

    .line 483
    iget p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mDarkIconColor:I

    return p0
.end method

.method public getIconResId()I
    .locals 0

    .line 475
    iget p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIconResId:I

    return p0
.end method

.method public getLightIconColor()I
    .locals 0

    .line 479
    iget p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLightIconColor:I

    return p0
.end method

.method getRotationButton()Lcom/android/systemui/navigationbar/RotationButton;
    .locals 0

    .line 471
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    return-object p0
.end method

.method public isRotationLocked()Z
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result p0

    return p0
.end method

.method onBehaviorChanged(I)V
    .locals 1

    .line 447
    iget v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mBehavior:I

    if-eq v0, p1, :cond_0

    .line 448
    iput p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mBehavior:I

    .line 449
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->showPendingRotationButtonIfNeeded()V

    :cond_0
    return-void
.end method

.method onDisable2FlagChanged(I)V
    .locals 0

    .line 435
    invoke-static {p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->hasDisable2RotateSuggestionFlag(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 436
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->onRotationSuggestionsDisabled()V

    :cond_0
    return-void
.end method

.method onNavigationBarWindowVisibilityChange(Z)V
    .locals 1

    .line 440
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsNavigationBarShowing:Z

    if-eq v0, p1, :cond_0

    .line 441
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsNavigationBarShowing:Z

    .line 442
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->showPendingRotationButtonIfNeeded()V

    :cond_0
    return-void
.end method

.method public onNavigationModeChanged(I)V
    .locals 0

    .line 687
    iput p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mNavBarMode:I

    return-void
.end method

.method onRotationProposal(IIZ)V
    .locals 8

    .line 360
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {v0}, Lcom/android/systemui/navigationbar/RotationButton;->acceptRotationProposal()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mHomeRotationEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsRecentsAnimationRunning:Z

    if-eqz v0, :cond_0

    goto/16 :goto_5

    .line 366
    :cond_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, -0x1

    if-ne p1, v2, :cond_1

    .line 367
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLastUnknownRotationProposedTick:J

    .line 368
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void

    :cond_1
    if-nez p3, :cond_2

    .line 376
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void

    :cond_2
    if-ne p1, p2, :cond_4

    if-eqz v0, :cond_3

    .line 383
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->resetUnknownRotationProposed()V

    .line 385
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRemoveRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 386
    invoke-virtual {p0, v1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(Z)V

    return-void

    .line 390
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz v0, :cond_5

    .line 391
    iget-wide v4, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLastUnknownRotationProposedTick:J

    const-wide/16 v6, 0x0

    cmp-long p3, v4, v6

    if-eqz p3, :cond_5

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long p3, v4, v2

    if-gtz p3, :cond_5

    const-string p1, "StatusBar/RotationButtonController"

    const-string p2, "onRotationProposal rotation time over"

    .line 394
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->resetUnknownRotationProposed()V

    return-void

    .line 400
    :cond_5
    iput p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLastRotationSuggestion:I

    .line 401
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/navigationbar/RotationButtonController;->isRotationAnimationCCW(II)Z

    move-result p3

    if-eqz p2, :cond_8

    const/4 v2, 0x2

    if-ne p2, v2, :cond_6

    goto :goto_1

    :cond_6
    if-eqz p3, :cond_7

    .line 408
    sget p3, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button_ccw_start_0:I

    goto :goto_0

    .line 409
    :cond_7
    sget p3, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button_ccw_start_0:I

    :goto_0
    iput p3, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIconResId:I

    goto :goto_3

    :cond_8
    :goto_1
    if-eqz p3, :cond_9

    .line 404
    sget p3, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button_ccw_start_90:I

    goto :goto_2

    .line 405
    :cond_9
    sget p3, Lcom/android/systemui/R$drawable;->ic_sysbar_rotate_button_cw_start_90:I

    :goto_2
    iput p3, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIconResId:I

    :goto_3
    if-eqz v0, :cond_a

    .line 412
    sget p3, Lcom/android/systemui/R$drawable;->ic_samsung_sysbar_rotate_button:I

    iput p3, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIconResId:I

    .line 413
    iget-object p3, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mStore:Lcom/android/systemui/navigationbar/store/NavBarStore;

    sget-object v0, Lcom/android/systemui/navigationbar/store/EventType;->GET_INT_ROTATE_BUTTON_STYLE:Lcom/android/systemui/navigationbar/store/EventType;

    new-instance v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    invoke-direct {v2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;-><init>()V

    sget-object v3, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_WIN_ROTATION:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 414
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, v3, p2}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object p2

    sget-object v2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_ROTATION:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 415
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object p1

    sget-object p2, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;->KEYS_DEFAULT:Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;

    .line 416
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->add(Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder$Keys;Ljava/lang/Object;)Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/bandaid/ArgumentBuilder;->build()Ljava/util/Map;

    move-result-object p1

    .line 413
    invoke-interface {p3, p0, v0, p1}, Lcom/android/systemui/navigationbar/store/NavBarStore;->handleEvent(Ljava/lang/Object;Lcom/android/systemui/navigationbar/store/EventType;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mStyleRes:I

    .line 418
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    iget p2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mLightIconColor:I

    iget p3, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mDarkIconColor:I

    invoke-interface {p1, p2, p3}, Lcom/android/systemui/navigationbar/RotationButton;->updateIcon(II)V

    .line 420
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->canShowRotationButton()Z

    move-result p1

    if-nez p1, :cond_c

    sget-boolean p1, Lcom/android/systemui/BasicRune;->NAVBAR_GESTURE:Z

    if-eqz p1, :cond_b

    iget p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mNavBarMode:I

    .line 421
    invoke-static {p1}, Lcom/android/systemui/shared/system/QuickStepContract;->isGesturalMode(I)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    const/4 p1, 0x1

    .line 427
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mPendingRotationSuggestion:Z

    .line 428
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 429
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    const-wide/16 p2, 0x4e20

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_5

    .line 423
    :cond_c
    :goto_4
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->showAndLogRotationSuggestion()V

    :cond_d
    :goto_5
    return-void
.end method

.method registerListeners()V
    .locals 3

    .line 198
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 202
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    .line 204
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mContext:Landroid/content/Context;

    .line 205
    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/view/IWindowManager;->watchRotation(Landroid/view/IRotationWatcher;I)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 210
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0

    :catch_1
    const/4 v0, 0x0

    .line 207
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    const-string v0, "StatusBar/RotationButtonController"

    const-string v1, "RegisterListeners for the display failed"

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :goto_0
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    if-eqz v0, :cond_1

    .line 215
    const-class v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->addListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mNavBarMode:I

    .line 216
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationLockCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 219
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->registerTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void
.end method

.method setDarkIntensity(F)V
    .locals 0

    .line 356
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {p0, p1}, Lcom/android/systemui/navigationbar/RotationButton;->setDarkIntensity(F)V

    return-void
.end method

.method setHomeRotationEnabled(Z)V
    .locals 0

    .line 345
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mHomeRotationEnabled:Z

    .line 346
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->updateRotationButtonStateInOverview()V

    return-void
.end method

.method setRecentsAnimationRunning(Z)V
    .locals 0

    .line 340
    iput-boolean p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mIsRecentsAnimationRunning:Z

    .line 341
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->updateRotationButtonStateInOverview()V

    return-void
.end method

.method setRotateSuggestionButtonState(Z)V
    .locals 3

    .line 255
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 257
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateSuggestionButtonShowRunnable:Ljava/lang/Runnable;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateSuggestionButtonShowRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 260
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    goto :goto_0

    .line 263
    :cond_1
    invoke-virtual {p0, p1, v1}, Lcom/android/systemui/navigationbar/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    :goto_0
    return-void
.end method

.method setRotateSuggestionButtonState(ZZ)V
    .locals 5

    if-nez p1, :cond_0

    .line 276
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {v0}, Lcom/android/systemui/navigationbar/RotationButton;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {v0}, Lcom/android/systemui/navigationbar/RotationButton;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 281
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {v1}, Lcom/android/systemui/navigationbar/RotationButton;->getImageDrawable()Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;

    move-result-object v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    const/4 v2, 0x0

    .line 285
    iput-boolean v2, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mPendingRotationSuggestion:Z

    .line 286
    iget-object v3, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mMainThreadHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mCancelPendingRotationProposal:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    if-eqz p1, :cond_6

    .line 291
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 292
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    :cond_3
    const/4 p1, 0x0

    .line 294
    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 297
    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 300
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->canAnimate()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 301
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->resetAnimation()V

    .line 302
    invoke-virtual {v1}, Lcom/android/systemui/navigationbar/buttons/KeyButtonDrawable;->startAnimation()V

    .line 305
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/navigationbar/RotationButtonController;->isRotateSuggestionIntroduced()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mViewRippler:Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;

    invoke-virtual {p1, v0}, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->start(Landroid/view/View;)V

    .line 308
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {p0}, Lcom/android/systemui/navigationbar/RotationButton;->show()Z

    goto :goto_0

    .line 310
    :cond_6
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mViewRippler:Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;

    invoke-virtual {p1}, Lcom/android/systemui/navigationbar/RotationButtonController$ViewRippler;->stop()V

    if-eqz p2, :cond_8

    .line 314
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 315
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    invoke-virtual {p1}, Landroid/animation/Animator;->pause()V

    .line 317
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {p0}, Lcom/android/systemui/navigationbar/RotationButton;->hide()Z

    return-void

    .line 322
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Landroid/animation/Animator;->isRunning()Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    :cond_9
    const/4 p1, 0x1

    new-array p1, p1, [F

    const/4 p2, 0x0

    aput p2, p1, v2

    const-string p2, "alpha"

    .line 324
    invoke-static {v0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v0, 0x64

    .line 325
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 326
    sget-object p2, Lcom/android/systemui/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 327
    new-instance p2, Lcom/android/systemui/navigationbar/RotationButtonController$2;

    invoke-direct {p2, p0}, Lcom/android/systemui/navigationbar/RotationButtonController$2;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    invoke-virtual {p1, p2}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 334
    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotateHideAnimator:Landroid/animation/Animator;

    .line 335
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    :goto_0
    return-void
.end method

.method setRotationButton(Lcom/android/systemui/navigationbar/RotationButton;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/navigationbar/RotationButton;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 190
    iput-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    .line 191
    invoke-interface {p1, p0}, Lcom/android/systemui/navigationbar/RotationButton;->setRotationButtonController(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    .line 192
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    new-instance v0, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/navigationbar/RotationButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 193
    iget-object p1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    new-instance v0, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/navigationbar/RotationButtonController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/navigationbar/RotationButtonController;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/navigationbar/RotationButton;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    .line 194
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationButton:Lcom/android/systemui/navigationbar/RotationButton;

    invoke-interface {p0, p2}, Lcom/android/systemui/navigationbar/RotationButton;->setVisibilityChangedCallback(Ljava/util/function/Consumer;)V

    return-void
.end method

.method setRotationLockedAtAngle(I)V
    .locals 1

    .line 247
    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    const/4 v0, 0x1

    invoke-interface {p0, v0, p1}, Lcom/android/systemui/statusbar/policy/RotationLockController;->setRotationLockedAtAngle(ZI)V

    return-void
.end method

.method setSkipOverrideUserLockPrefsOnce()V
    .locals 1

    const/4 v0, 0x1

    .line 530
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mSkipOverrideUserLockPrefsOnce:Z

    return-void
.end method

.method unregisterListeners()V
    .locals 2

    .line 223
    iget-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 227
    iput-boolean v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mListenersRegistered:Z

    .line 229
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationWatcher:Landroid/view/IRotationWatcher$Stub;

    invoke-interface {v0, v1}, Landroid/view/IWindowManager;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    sget-boolean v0, Lcom/android/systemui/BasicRune;->NAVBAR_ENABLED:Z

    if-eqz v0, :cond_1

    .line 235
    const-class v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/navigationbar/NavigationModeController;

    invoke-virtual {v0, p0}, Lcom/android/systemui/navigationbar/NavigationModeController;->removeListener(Lcom/android/systemui/navigationbar/NavigationModeController$ModeChangedListener;)V

    .line 236
    iget-object v0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationLockController:Lcom/android/systemui/statusbar/policy/RotationLockController;

    iget-object v1, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mRotationLockCallback:Lcom/android/systemui/statusbar/policy/RotationLockController$RotationLockControllerCallback;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 239
    :cond_1
    invoke-static {}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->getInstance()Lcom/android/systemui/shared/system/TaskStackChangeListeners;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/navigationbar/RotationButtonController;->mTaskStackListener:Lcom/android/systemui/navigationbar/RotationButtonController$TaskStackListenerImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/shared/system/TaskStackChangeListeners;->unregisterTaskStackListener(Lcom/android/systemui/shared/system/TaskStackChangeListener;)V

    return-void

    :catch_0
    move-exception p0

    .line 231
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method
