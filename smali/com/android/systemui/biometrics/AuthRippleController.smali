.class public final Lcom/android/systemui/biometrics/AuthRippleController;
.super Lcom/android/systemui/util/ViewController;
.source "AuthRippleController.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/biometrics/AuthRippleController$AuthRippleCommand;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/util/ViewController<",
        "Lcom/android/systemui/biometrics/AuthRippleView;",
        ">;"
    }
.end annotation


# instance fields
.field private final authController:Lcom/android/systemui/biometrics/AuthController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final authControllerCallback:Lcom/android/systemui/biometrics/AuthController$Callback;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private circleReveal:Lcom/android/systemui/statusbar/LightRevealEffect;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final configurationChangedListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private faceSensorLocation:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fingerprintSensorLocation:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/Nullable;
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

.field private final notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final sysuiContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Context;Lcom/android/systemui/biometrics/AuthController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/biometrics/AuthRippleView;)V
    .locals 1
    .param p1    # Lcom/android/systemui/statusbar/phone/StatusBar;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/biometrics/AuthController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Lcom/android/systemui/statusbar/policy/ConfigurationController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/keyguard/KeyguardUpdateMonitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/android/systemui/statusbar/commandline/CommandRegistry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p7    # Lcom/android/systemui/statusbar/NotificationShadeWindowController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p8    # Lcom/android/systemui/statusbar/phone/KeyguardBypassController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p9    # Lcom/android/systemui/statusbar/phone/BiometricUnlockController;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p10    # Lcom/android/systemui/biometrics/AuthRippleView;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string/jumbo v0, "statusBar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sysuiContext"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authController"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configurationController"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keyguardUpdateMonitor"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "commandRegistry"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "notificationShadeWindowController"

    invoke-static {p7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bypassController"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "biometricUnlockController"

    invoke-static {p9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-direct {p0, p10}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 47
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 48
    iput-object p2, p0, Lcom/android/systemui/biometrics/AuthRippleController;->sysuiContext:Landroid/content/Context;

    .line 49
    iput-object p3, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authController:Lcom/android/systemui/biometrics/AuthController;

    .line 50
    iput-object p4, p0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 51
    iput-object p5, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 52
    iput-object p6, p0, Lcom/android/systemui/biometrics/AuthRippleController;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    .line 53
    iput-object p7, p0, Lcom/android/systemui/biometrics/AuthRippleController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 54
    iput-object p8, p0, Lcom/android/systemui/biometrics/AuthRippleController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 55
    iput-object p9, p0, Lcom/android/systemui/biometrics/AuthRippleController;->biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 150
    new-instance p1, Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/AuthRippleController$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 161
    new-instance p1, Lcom/android/systemui/biometrics/AuthRippleController$configurationChangedListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/AuthRippleController$configurationChangedListener$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationChangedListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 176
    new-instance p1, Lcom/android/systemui/biometrics/AuthRippleController$authControllerCallback$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/biometrics/AuthRippleController$authControllerCallback$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;)V

    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authControllerCallback:Lcom/android/systemui/biometrics/AuthController$Callback;

    return-void
.end method

.method public static final synthetic access$getFaceSensorLocation$p(Lcom/android/systemui/biometrics/AuthRippleController;)Landroid/graphics/PointF;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->faceSensorLocation:Landroid/graphics/PointF;

    return-object p0
.end method

.method public static final synthetic access$getMView$p(Lcom/android/systemui/biometrics/AuthRippleController;)Landroid/view/View;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    return-object p0
.end method

.method public static final synthetic access$getNotificationShadeWindowController$p(Lcom/android/systemui/biometrics/AuthRippleController;)Lcom/android/systemui/statusbar/NotificationShadeWindowController;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    return-object p0
.end method

.method public static final synthetic access$showRipple(Lcom/android/systemui/biometrics/AuthRippleController;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->showRipple()V

    return-void
.end method

.method public static final synthetic access$showRipple(Lcom/android/systemui/biometrics/AuthRippleController;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/systemui/biometrics/AuthRippleController;->showRipple(Landroid/hardware/biometrics/BiometricSourceType;)V

    return-void
.end method

.method public static final synthetic access$updateRippleColor(Lcom/android/systemui/biometrics/AuthRippleController;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->updateRippleColor()V

    return-void
.end method

.method private final showRipple()V
    .locals 4

    .line 103
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setForcePluginOpen(ZLjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->biometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/BiometricUnlockController;->getMode()I

    move-result v0

    .line 105
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleController;->circleReveal:Lcom/android/systemui/statusbar/LightRevealEffect;

    if-eqz v2, :cond_0

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x6

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 109
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getLightRevealScrim()Lcom/android/systemui/statusbar/LightRevealScrim;

    move-result-object v0

    if-eqz v1, :cond_3

    if-nez v0, :cond_2

    goto :goto_1

    .line 111
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthRippleController;->circleReveal:Lcom/android/systemui/statusbar/LightRevealEffect;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/LightRevealScrim;->setRevealEffect(Lcom/android/systemui/statusbar/LightRevealEffect;)V

    .line 114
    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v2, Lcom/android/systemui/biometrics/AuthRippleView;

    .line 116
    new-instance v3, Lcom/android/systemui/biometrics/AuthRippleController$showRipple$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/biometrics/AuthRippleController$showRipple$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;)V

    if-eqz v1, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    .line 114
    :goto_2
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/biometrics/AuthRippleView;->startRipple(Ljava/lang/Runnable;Lcom/android/systemui/statusbar/LightRevealScrim;)V

    return-void
.end method

.method private final showRipple(Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardVisible()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 84
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->userNeedsStrongAuth()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 88
    :cond_0
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_1

    .line 89
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->fingerprintSensorLocation:Landroid/graphics/PointF;

    if-eqz v0, :cond_1

    .line 90
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/biometrics/AuthRippleView;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/biometrics/AuthRippleView;->setSensorLocation(Landroid/graphics/PointF;)V

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->showRipple()V

    goto :goto_0

    .line 92
    :cond_1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p1, v0, :cond_3

    .line 93
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->faceSensorLocation:Landroid/graphics/PointF;

    if-eqz p1, :cond_3

    .line 94
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->canBypass()Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 97
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast p1, Lcom/android/systemui/biometrics/AuthRippleView;

    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->faceSensorLocation:Landroid/graphics/PointF;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Lcom/android/systemui/biometrics/AuthRippleView;->setSensorLocation(Landroid/graphics/PointF;)V

    .line 98
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->showRipple()V

    :cond_3
    :goto_0
    return-void
.end method

.method private final updateRippleColor()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    check-cast v0, Lcom/android/systemui/biometrics/AuthRippleView;

    .line 146
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->sysuiContext:Landroid/content/Context;

    const v1, 0x1010435

    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p0

    .line 145
    invoke-virtual {v0, p0}, Lcom/android/systemui/biometrics/AuthRippleView;->setColor(I)V

    return-void
.end method


# virtual methods
.method public final getFingerprintSensorLocation()Landroid/graphics/PointF;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 58
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->fingerprintSensorLocation:Landroid/graphics/PointF;

    return-object p0
.end method

.method public onViewAttached()V
    .locals 2

    .line 64
    invoke-direct {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->updateRippleColor()V

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthRippleController;->updateSensorLocation()V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authControllerCallback:Lcom/android/systemui/biometrics/AuthController$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthController;->addCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V

    .line 67
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationChangedListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 68
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 69
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    new-instance v1, Lcom/android/systemui/biometrics/AuthRippleController$onViewAttached$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthRippleController$onViewAttached$1;-><init>(Lcom/android/systemui/biometrics/AuthRippleController;)V

    const-string p0, "auth-ripple"

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public onViewDetached()V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authController:Lcom/android/systemui/biometrics/AuthController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authControllerCallback:Lcom/android/systemui/biometrics/AuthController$Callback;

    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthController;->removeCallback(Lcom/android/systemui/biometrics/AuthController$Callback;)V

    .line 75
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 76
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->configurationChangedListener:Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->removeCallback(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    const-string v1, "auth-ripple"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->unregisterCommand(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->notificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/statusbar/NotificationShadeWindowController;->setForcePluginOpen(ZLjava/lang/Object;)V

    return-void
.end method

.method public final updateSensorLocation()V
    .locals 8

    .line 129
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthController;->getFingerprintSensorLocation()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->fingerprintSensorLocation:Landroid/graphics/PointF;

    .line 130
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->authController:Lcom/android/systemui/biometrics/AuthController;

    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthController;->getFaceAuthSensorLocation()Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->faceSensorLocation:Landroid/graphics/PointF;

    .line 131
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthRippleController;->fingerprintSensorLocation:Landroid/graphics/PointF;

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    new-instance v1, Lcom/android/systemui/statusbar/CircleReveal;

    .line 133
    iget v2, v0, Landroid/graphics/PointF;->x:F

    .line 134
    iget v3, v0, Landroid/graphics/PointF;->y:F

    const/4 v4, 0x0

    .line 137
    iget-object v5, p0, Lcom/android/systemui/biometrics/AuthRippleController;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayWidth()F

    move-result v5

    iget v6, v0, Landroid/graphics/PointF;->x:F

    sub-float/2addr v5, v6

    invoke-static {v2, v5}, Ljava/lang/Math;->max(FF)F

    move-result v5

    .line 138
    iget v6, v0, Landroid/graphics/PointF;->y:F

    iget-object v7, p0, Lcom/android/systemui/biometrics/AuthRippleController;->statusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/phone/StatusBar;->getDisplayHeight()F

    move-result v7

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v7, v0

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 136
    invoke-static {v5, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 132
    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/CircleReveal;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/biometrics/AuthRippleController;->circleReveal:Lcom/android/systemui/statusbar/LightRevealEffect;

    :goto_0
    return-void
.end method
