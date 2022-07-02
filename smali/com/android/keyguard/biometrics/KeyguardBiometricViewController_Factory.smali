.class public final Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;
.super Ljava/lang/Object;
.source "KeyguardBiometricViewController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;",
        ">;"
    }
.end annotation


# instance fields
.field private final accessibilityManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardRotationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardRotationController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardUpdateMonitorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;"
        }
    .end annotation
.end field

.field private final pluginLockStarManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/lockstar/PluginLockStarManager;",
            ">;"
        }
    .end annotation
.end field

.field private final powerManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;"
        }
    .end annotation
.end field

.field private final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/biometrics/KeyguardBiometricView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/biometrics/KeyguardBiometricView;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardRotationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/lockstar/PluginLockStarManager;",
            ">;)V"
        }
    .end annotation

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;->viewProvider:Ljavax/inject/Provider;

    .line 40
    iput-object p2, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 41
    iput-object p3, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;->keyguardRotationControllerProvider:Ljavax/inject/Provider;

    .line 42
    iput-object p4, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    .line 43
    iput-object p5, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    .line 44
    iput-object p6, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;->pluginLockStarManagerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/biometrics/KeyguardBiometricView;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardRotationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/view/accessibility/AccessibilityManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/os/PowerManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/lockstar/PluginLockStarManager;",
            ">;)",
            "Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;"
        }
    .end annotation

    .line 59
    new-instance v7, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v7
.end method

.method public static newInstance(Lcom/android/keyguard/biometrics/KeyguardBiometricView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Landroid/os/PowerManager;Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;
    .locals 8

    .line 67
    new-instance v7, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;-><init>(Lcom/android/keyguard/biometrics/KeyguardBiometricView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Landroid/os/PowerManager;Lcom/android/systemui/lockstar/PluginLockStarManager;)V

    return-object v7
.end method


# virtual methods
.method public get()Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;
    .locals 7

    .line 49
    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/keyguard/biometrics/KeyguardBiometricView;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;->keyguardRotationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/keyguard/KeyguardRotationController;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;->accessibilityManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/view/accessibility/AccessibilityManager;

    iget-object v0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;->powerManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/os/PowerManager;

    iget-object p0, p0, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;->pluginLockStarManagerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v6, p0

    check-cast v6, Lcom/android/systemui/lockstar/PluginLockStarManager;

    invoke-static/range {v1 .. v6}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;->newInstance(Lcom/android/keyguard/biometrics/KeyguardBiometricView;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardRotationController;Landroid/view/accessibility/AccessibilityManager;Landroid/os/PowerManager;Lcom/android/systemui/lockstar/PluginLockStarManager;)Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 12
    invoke-virtual {p0}, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController_Factory;->get()Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    move-result-object p0

    return-object p0
.end method
