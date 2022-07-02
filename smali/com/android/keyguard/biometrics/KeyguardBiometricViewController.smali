.class public Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;
.super Lcom/android/systemui/util/ViewController;
.source "KeyguardBiometricViewController.kt"

# interfaces
.implements Lcom/android/systemui/widget/SystemUIWidgetCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/keyguard/biometrics/KeyguardBiometricView;",
        ">;",
        "Lcom/android/systemui/widget/SystemUIWidgetCallback;"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private alphaModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private biometricRetryContainer:Landroid/widget/FrameLayout;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private bouncerShowing:Z

.field private colorModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private debugCount:I

.field private final displayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private drawableResId:I

.field private errorString:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isAttached:Z

.field private isHiddenRetry:Z

.field private isLockOut:Z

.field private isRunning:Z

.field private final keyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyguardRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardRotationListener$1;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lockIcon:Lcom/android/systemui/widget/SystemUIImageView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lockIconDrawableModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private lockIconView:Lcom/android/keyguard/SecLockIconView;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final powerManager:Landroid/os/PowerManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private visibilityModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->Companion:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/biometrics/KeyguardBiometricView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Landroid/os/PowerManager;Lcom/android/systemui/lockstar/PluginLockStarManager;)V
    .locals 1
    .param p1    # Lcom/android/keyguard/biometrics/KeyguardBiometricView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/android/keyguard/KeyguardUpdateMonitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/keyguard/KeyguardRotationController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/view/accessibility/AccessibilityManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Landroid/os/PowerManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/lockstar/PluginLockStarManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardUpdateMonitor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardRotationController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accessibilityManager"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "powerManager"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "pluginLockStarManager"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 47
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 42
    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 43
    iput-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    .line 44
    iput-object p4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 45
    iput-object p5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->powerManager:Landroid/os/PowerManager;

    .line 46
    iput-object p6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    .line 58
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    sget p2, Lcom/android/systemui/R$id;->keyguard_biometric_retry_container:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "mView.findViewById(R.id.keyguard_biometric_retry_container)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    .line 59
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    sget p2, Lcom/android/systemui/R$id;->keyguard_biometric_error_text:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "mView.findViewById(R.id.keyguard_biometric_error_text)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    .line 60
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    sget p2, Lcom/android/systemui/R$id;->keyguard_biometric_retry_icon:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "mView.findViewById(R.id.keyguard_biometric_retry_icon)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 61
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    sget p2, Lcom/android/systemui/R$id;->bouncer_lock_icon:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "mView.findViewById(R.id.bouncer_lock_icon)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/systemui/widget/SystemUIImageView;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    .line 62
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    sget p2, Lcom/android/systemui/R$id;->bouncer_lock_icon_view:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "mView.findViewById(R.id.bouncer_lock_icon_view)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/keyguard/SecLockIconView;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    .line 63
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    sget p2, Lcom/android/systemui/R$id;->biometric_timeout_message:I

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string p2, "mView.findViewById(R.id.biometric_timeout_message)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/systemui/widget/SystemUITextView;

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    const-string p1, ""

    .line 66
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->errorString:Ljava/lang/String;

    .line 87
    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$settingsListener$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$settingsListener$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 92
    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardRotationListener$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardRotationListener$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardRotationListener$1;

    .line 107
    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 331
    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$displayListener$1;

    invoke-direct {p1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$displayListener$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->displayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    return-void
.end method

.method private final acceptLockStarModifier()V
    .locals 3

    .line 530
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {v0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->getPluginLockStar()Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 531
    :cond_0
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->isLockStarEnabled()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 532
    :goto_0
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "lockIconVisibility"

    .line 533
    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->visibilityModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    const-string v1, "lockIconAlpha"

    .line 534
    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->alphaModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    const-string v1, "lockIconColor"

    .line 535
    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v1

    iput-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->colorModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    const-string v1, "lockIconDrawable"

    .line 536
    invoke-interface {v0, v1}, Lcom/samsung/systemui/splugins/lockstar/PluginLockStar;->getModifier(Ljava/lang/String;)Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconDrawableModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    .line 538
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->visibilityModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 539
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->alphaModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 540
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->colorModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 541
    :goto_3
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconDrawableModifier:Lcom/samsung/systemui/splugins/lockstar/PluginLockStar$Modifier;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-interface {v0, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_5
    :goto_4
    return-void
.end method

.method public static final synthetic access$clearView(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->clearView()V

    return-void
.end method

.method public static final synthetic access$getBiometricErrorText$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/systemui/widget/SystemUITextView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    return-object p0
.end method

.method public static final synthetic access$getBiometricRetryIcon$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/systemui/widget/SystemUIImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    return-object p0
.end method

.method public static final synthetic access$getBouncerShowing$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    return p0
.end method

.method public static final synthetic access$getContext(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Landroid/content/Context;
    .locals 0

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getDebugCount$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)I
    .locals 0

    .line 38
    iget p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->debugCount:I

    return p0
.end method

.method public static final synthetic access$getErrorString$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Ljava/lang/String;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->errorString:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getKeyguardUpdateMonitor$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method public static final synthetic access$getLockIcon$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/systemui/widget/SystemUIImageView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    return-object p0
.end method

.method public static final synthetic access$getLockIconView$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Lcom/android/keyguard/SecLockIconView;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    return-object p0
.end method

.method public static final synthetic access$handleBiometricAttemptLockout(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;J)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->handleBiometricAttemptLockout(J)V

    return-void
.end method

.method public static final synthetic access$initBiometricErrorIndicationAnimationValue(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->initBiometricErrorIndicationAnimationValue()V

    return-void
.end method

.method public static final synthetic access$isLandscape(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Z
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLandscape()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$isLockOut$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockOut:Z

    return p0
.end method

.method public static final synthetic access$isRunning$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)Z
    .locals 0

    .line 38
    iget-boolean p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isRunning:Z

    return p0
.end method

.method public static final synthetic access$onClickRetryButton(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->onClickRetryButton()V

    return-void
.end method

.method public static final synthetic access$resetBiometricLockOutTimer(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->resetBiometricLockOutTimer()V

    return-void
.end method

.method public static final synthetic access$setBouncerShowing$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    return-void
.end method

.method public static final synthetic access$setDebugCount$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;I)V
    .locals 0

    .line 38
    iput p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->debugCount:I

    return-void
.end method

.method public static final synthetic access$setErrorString$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Ljava/lang/String;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->errorString:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$setHiddenRetry$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isHiddenRetry:Z

    return-void
.end method

.method public static final synthetic access$setLockOut$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockOut:Z

    return-void
.end method

.method public static final synthetic access$setRunning$p(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isRunning:Z

    return-void
.end method

.method public static final synthetic access$startShowingBiometricErrorAnimation(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Lcom/android/systemui/widget/SystemUITextView;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->startShowingBiometricErrorAnimation(Lcom/android/systemui/widget/SystemUITextView;)V

    return-void
.end method

.method public static final synthetic access$updateErrorText(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateErrorText(Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$updateLayout(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLayout()V

    return-void
.end method

.method public static final synthetic access$updateLockContainerMargin(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockContainerMargin()V

    return-void
.end method

.method public static final synthetic access$updateLockIcon(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIcon()V

    return-void
.end method

.method public static final synthetic access$updateLockIconOneHandModeEnabled(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIconOneHandModeEnabled()V

    return-void
.end method

.method public static final synthetic access$updateLockIconVisibility(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIconVisibility(Z)V

    return-void
.end method

.method public static final synthetic access$updateVisibility(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateVisibility()V

    return-void
.end method

.method private final changeBiometricErrorIndicationAnimation()V
    .locals 7

    .line 413
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->initBiometricErrorIndicationAnimationValue()V

    .line 415
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    sget-object v2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 416
    new-instance v1, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v1}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    const/high16 v2, 0x43af0000    # 350.0f

    .line 417
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    const v3, 0x3f47ae14    # 0.78f

    .line 418
    invoke-virtual {v1, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v1

    .line 416
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v0

    .line 419
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    sget-object v5, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v1, v4, v5}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 420
    new-instance v4, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v4}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 421
    invoke-virtual {v4, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    .line 422
    invoke-virtual {v4, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v4

    .line 420
    invoke-virtual {v1, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v1

    .line 423
    new-instance v4, Landroidx/dynamicanimation/animation/SpringAnimation;

    iget-object v5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    sget-object v6, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    invoke-direct {v4, v5, v6}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V

    .line 424
    new-instance v5, Landroidx/dynamicanimation/animation/SpringForce;

    invoke-direct {v5}, Landroidx/dynamicanimation/animation/SpringForce;-><init>()V

    .line 425
    invoke-virtual {v5, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    .line 426
    invoke-virtual {v2, v3}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    move-result-object v2

    .line 424
    invoke-virtual {v4, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;->setSpring(Landroidx/dynamicanimation/animation/SpringForce;)Landroidx/dynamicanimation/animation/SpringAnimation;

    move-result-object v2

    .line 427
    iget-boolean v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isAttached:Z

    if-eqz v3, :cond_0

    .line 428
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    new-instance v3, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$changeBiometricErrorIndicationAnimation$1;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$changeBiometricErrorIndicationAnimation$1;-><init>(Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;Landroidx/dynamicanimation/animation/SpringAnimation;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v3, v0, v1}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private final clearView()V
    .locals 2

    .line 261
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 262
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 264
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 265
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/SecLockIconView;->initBiometricErrorIndicationAnimationValue(Lcom/android/systemui/widget/SystemUIImageView;)V

    return-void
.end method

.method private final handleBiometricAttemptLockout(J)V
    .locals 9

    .line 473
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v4, p1, v0

    .line 475
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    :goto_0
    const/4 v0, 0x0

    .line 476
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 477
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleBiometricsAttemptLockout( elapsedRealtimeDeadline = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " )"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardBiometricView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    new-instance p1, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    move-result-object v3

    const-wide/16 v6, 0x3e8

    .line 480
    iget-object v8, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    move-object v2, p1

    .line 479
    invoke-direct/range {v2 .. v8}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;-><init>(Landroid/content/Context;JJLcom/android/systemui/widget/SystemUITextView;)V

    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 481
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 482
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    :goto_1
    return-void
.end method

.method private final inflateRetryView(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 339
    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$inflateRetryView$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$inflateRetryView$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private final initBiometricErrorIndicationAnimationValue()V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 438
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    const v1, 0x3f333333    # 0.7f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setScaleX(F)V

    .line 439
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setScaleY(F)V

    return-void
.end method

.method private final isLandscape()Z
    .locals 2

    .line 361
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricView;->getDeviceRotation()I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x3

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private final onClickRetryButton()V
    .locals 4

    .line 348
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isHiddenRetry:Z

    if-nez v0, :cond_0

    const-string v0, "KeyguardBiometricView"

    const-string v1, "onClick - Retry icon"

    .line 349
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->powerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 351
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateFaceListeningState()V

    .line 353
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateVisibility()V

    const-string p0, "102"

    const-string v0, "1013"

    const-string v1, "2"

    .line 354
    invoke-static {p0, v0, v1}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private final resetBiometricLockOutTimer()V
    .locals 4

    .line 491
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 493
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    :goto_0
    const/4 v0, 0x0

    .line 494
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 495
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method private final resetTimer()V
    .locals 0

    .line 486
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->resetBiometricLockOutTimer()V

    .line 487
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateBiometricLockOutMessage()V

    return-void
.end method

.method private final setErrorText(Ljava/lang/String;)V
    .locals 2

    .line 300
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1, v1}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    .line 305
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setErrorText$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setErrorText$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 319
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isHiddenRetry:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {p1, v1}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 320
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIcon()V

    return-void
.end method

.method private final setLockIconOnClickListener()V
    .locals 2

    .line 388
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    new-instance v1, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;

    invoke-direct {v1, p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$setLockIconOnClickListener$1;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 402
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    return-void
.end method

.method private final startShowingBiometricErrorAnimation(Lcom/android/systemui/widget/SystemUITextView;)V
    .locals 1

    .line 406
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockOut:Z

    if-nez v0, :cond_0

    .line 407
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->changeBiometricErrorIndicationAnimation()V

    .line 408
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getX()F

    move-result p1

    invoke-virtual {v0, p0, p1}, Lcom/android/keyguard/SecLockIconView;->showBiometricErrorAnimation(Lcom/android/systemui/widget/SystemUIImageView;F)V

    :cond_0
    return-void
.end method

.method private final updateBiometricLockOutMessage()V
    .locals 6

    .line 500
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->getLockoutAttemptDeadline()J

    move-result-wide v0

    .line 501
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-nez v0, :cond_0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 503
    invoke-direct {p0, v2, v3}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->handleBiometricAttemptLockout(J)V

    goto :goto_0

    .line 505
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 506
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/widget/SystemUITextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private final updateErrorText(Ljava/lang/String;)V
    .locals 1

    .line 290
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockOut:Z

    if-nez v0, :cond_0

    .line 291
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->clearView()V

    .line 292
    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->setErrorText(Ljava/lang/String;)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 295
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method private final updateLayout()V
    .locals 1

    .line 324
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    if-nez v0, :cond_0

    return-void

    .line 327
    :cond_0
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIcon()V

    .line 328
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->resetTimer()V

    return-void
.end method

.method private final updateLockContainerMargin()V
    .locals 5

    .line 443
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->status_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 444
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->kg_lock_icon_top_margin:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 445
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$dimen;->kg_lock_icon_top_margin_tablet:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 446
    iget-object v3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    const-string v4, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 447
    sget-boolean v4, Lcom/android/systemui/LsRune;->SECURITY_BIOMETRICS_TABLET:Z

    if-eqz v4, :cond_5

    .line 448
    iget-object v4, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v4, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    invoke-virtual {v4}, Lcom/android/keyguard/biometrics/KeyguardBiometricView;->getDeviceRotation()I

    move-result v4

    invoke-static {v4}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v1, 0x1

    if-eq v4, v1, :cond_2

    const/4 v1, 0x2

    if-eq v4, v1, :cond_0

    const/4 v1, 0x3

    if-eq v4, v1, :cond_2

    goto :goto_0

    .line 451
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isInDisplayFingerprintMarginAccepted()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 452
    invoke-static {}, Lcom/android/systemui/util/DeviceState;->getInDisplayFingerprintHeight()I

    move-result v0

    .line 450
    :cond_1
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_2
    if-eqz v2, :cond_3

    move v0, v2

    .line 454
    :cond_3
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_4
    add-int/2addr v0, v1

    .line 449
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    .line 462
    :cond_5
    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 463
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v1, 0x0

    :cond_6
    add-int/2addr v0, v1

    iput v0, v3, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 465
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final updateLockIcon()V
    .locals 5

    .line 366
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isFaceOptionEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 367
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 368
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getFaceStrongBiometric(I)Z

    move-result v2

    .line 367
    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isHiddenRetry:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isRunning:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLockOut:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-interface {v0}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isFullscreenBouncer()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 370
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isRemoteLockEnabled()Z

    move-result v2

    const/16 v3, 0x8

    if-eqz v2, :cond_1

    .line 371
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 372
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_1

    .line 373
    :cond_1
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isLandscape()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_3

    .line 374
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 375
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/android/systemui/R$bool;->small_tablet_landscape_lock_icon_policy:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 376
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIconDrawable(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {v0, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    goto :goto_1

    .line 379
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIconDrawable(Z)V

    .line 380
    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryIcon:Lcom/android/systemui/widget/SystemUIImageView;

    if-eqz v0, :cond_4

    move v3, v1

    :cond_4
    invoke-virtual {v2, v3}, Lcom/android/systemui/widget/SystemUIImageView;->setVisibility(I)V

    .line 383
    :goto_1
    iput v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->debugCount:I

    return-void
.end method

.method private final updateLockIconDrawable(Z)V
    .locals 3

    const-string v0, "background"

    .line 511
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_0

    .line 513
    sget v0, Lcom/android/systemui/R$drawable;->ic_biometric_retry_button_whitebg:I

    goto :goto_0

    .line 514
    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->ic_biometric_retry_button:I

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 516
    sget v0, Lcom/android/systemui/R$drawable;->lock_whitebg_ic_lock_mtrl_00:I

    goto :goto_0

    .line 517
    :cond_2
    sget v0, Lcom/android/systemui/R$drawable;->lock_ic_lock_mtrl_00:I

    .line 519
    :goto_0
    iget v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->drawableResId:I

    if-eq v0, v1, :cond_3

    .line 520
    iput v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->drawableResId:I

    .line 521
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIcon:Lcom/android/systemui/widget/SystemUIImageView;

    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->drawableResId:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-nez p1, :cond_3

    .line 523
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->acceptLockStarModifier()V

    :cond_3
    return-void
.end method

.method private final updateLockIconOneHandModeEnabled()V
    .locals 1

    .line 469
    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isOneHandModeRunning()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/keyguard/SecLockIconView;->setOneHandModeEnabled(Z)V

    return-void
.end method

.method private final updateLockIconVisibility(Z)V
    .locals 7

    .line 279
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    .line 280
    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 281
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v3, Lcom/android/systemui/R$bool;->hidden_lock_icon_for_lock_out_policy:I

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 282
    iget-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getLockoutBiometricAttemptDeadline()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-lez p1, :cond_2

    .line 283
    sget-boolean p1, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 285
    :cond_2
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->acceptLockStarModifier()V

    return-void
.end method

.method private final updateVisibility()V
    .locals 1

    .line 269
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->clearView()V

    .line 270
    iget-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->bouncerShowing:Z

    invoke-virtual {p0, v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateVisibility(Z)V

    return-void
.end method


# virtual methods
.method protected onViewAttached()V
    .locals 5

    const/4 v0, 0x1

    .line 218
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isAttached:Z

    .line 219
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 220
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardRotationListener$1;

    invoke-interface {v1, v2}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 222
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->inflateRetryView(Landroid/widget/FrameLayout;)V

    .line 223
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 224
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricRetryContainer:Landroid/widget/FrameLayout;

    const-string v2, "background"

    .line 225
    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 226
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->retry_container_ripple_whitebg_drawable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 227
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->retry_container_ripple_drawable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 224
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 229
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricErrorText:Lcom/android/systemui/widget/SystemUITextView;

    const v2, 0x3f8ccccd    # 1.1f

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 230
    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricLockOutMessage:Lcom/android/systemui/widget/SystemUITextView;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/android/systemui/widget/SystemUITextView;->setMaxFontScale(F)V

    .line 232
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLayout()V

    .line 233
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockContainerMargin()V

    .line 234
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->setLockIconOnClickListener()V

    .line 235
    invoke-direct {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIconOneHandModeEnabled()V

    const-class v1, Lcom/android/systemui/util/SettingsHelper;

    .line 237
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/SettingsHelper;

    iget-object v2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array v0, v0, [Landroid/net/Uri;

    const/4 v3, 0x0

    const-string v4, "any_screen_running"

    .line 238
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    aput-object v4, v0, v3

    .line 237
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 239
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 240
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->displayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->lockIconView:Lcom/android/keyguard/SecLockIconView;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->pluginLockStarManager:Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-virtual {p0}, Lcom/android/systemui/lockstar/PluginLockStarManager;->isLockStarEnabled()Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/keyguard/SecLockIconView;->setLockStarEnabled(Z)V

    return-void
.end method

.method protected onViewDetached()V
    .locals 2

    const/4 v0, 0x0

    .line 249
    iput-boolean v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->isAttached:Z

    .line 250
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;->stop()V

    :goto_0
    const/4 v0, 0x0

    .line 251
    iput-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->biometricCountDownTimer:Lcom/android/keyguard/biometrics/KeyguardBiometricsCountDownTimer;

    .line 252
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 253
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardRotationController:Lcom/android/keyguard/KeyguardRotationController;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->keyguardRotationListener:Lcom/android/keyguard/biometrics/KeyguardBiometricViewController$keyguardRotationListener$1;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 254
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    iget-object v1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->settingsListener:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 255
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_SUB_DISPLAY_LOCK:Z

    if-eqz v0, :cond_1

    const-class v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    .line 256
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/DisplayLifecycle;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->displayListener:Lcom/android/systemui/keyguard/DisplayLifecycle$Observer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public final updateVisibility(Z)V
    .locals 0

    .line 274
    invoke-direct {p0, p1}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;->updateLockIconVisibility(Z)V

    .line 275
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p0, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method
