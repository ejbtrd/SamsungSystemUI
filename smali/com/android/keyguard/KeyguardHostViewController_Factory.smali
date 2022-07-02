.class public final Lcom/android/keyguard/KeyguardHostViewController_Factory;
.super Ljava/lang/Object;
.source "KeyguardHostViewController_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/keyguard/KeyguardHostViewController;",
        ">;"
    }
.end annotation


# instance fields
.field private final audioManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/media/AudioManager;",
            ">;"
        }
    .end annotation
.end field

.field private final carrierTextControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/CarrierTextController;",
            ">;"
        }
    .end annotation
.end field

.field private final configurationControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;"
        }
    .end annotation
.end field

.field private final keyguardBiometricViewControllerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;",
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

.field private final keyguardSecurityContainerControllerFactoryProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;",
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

.field private final telephonyManagerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/telephony/TelephonyManager;",
            ">;"
        }
    .end annotation
.end field

.field private final viewMediatorCallbackProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final viewProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardHostView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardHostView;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/media/AudioManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/telephony/TelephonyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/CarrierTextController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardRotationController;",
            ">;)V"
        }
    .end annotation

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->viewProvider:Ljavax/inject/Provider;

    .line 51
    iput-object p2, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    .line 52
    iput-object p3, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->audioManagerProvider:Ljavax/inject/Provider;

    .line 53
    iput-object p4, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->telephonyManagerProvider:Ljavax/inject/Provider;

    .line 54
    iput-object p5, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->viewMediatorCallbackProvider:Ljavax/inject/Provider;

    .line 55
    iput-object p6, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->keyguardSecurityContainerControllerFactoryProvider:Ljavax/inject/Provider;

    .line 56
    iput-object p7, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->carrierTextControllerProvider:Ljavax/inject/Provider;

    .line 57
    iput-object p8, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    .line 58
    iput-object p9, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->keyguardBiometricViewControllerProvider:Ljavax/inject/Provider;

    .line 59
    iput-object p10, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->keyguardRotationControllerProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/android/keyguard/KeyguardHostViewController_Factory;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardHostView;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/media/AudioManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/telephony/TelephonyManager;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/ViewMediatorCallback;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/CarrierTextController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/android/keyguard/KeyguardRotationController;",
            ">;)",
            "Lcom/android/keyguard/KeyguardHostViewController_Factory;"
        }
    .end annotation

    .line 77
    new-instance v11, Lcom/android/keyguard/KeyguardHostViewController_Factory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/keyguard/KeyguardHostViewController_Factory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v11
.end method

.method public static newInstance(Lcom/android/keyguard/KeyguardHostView;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/media/AudioManager;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/ViewMediatorCallback;Ljava/lang/Object;Lcom/android/keyguard/CarrierTextController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Lcom/android/keyguard/KeyguardRotationController;)Lcom/android/keyguard/KeyguardHostViewController;
    .locals 12

    .line 87
    new-instance v11, Lcom/android/keyguard/KeyguardHostViewController;

    move-object/from16 v6, p5

    check-cast v6, Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;

    move-object v0, v11

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Lcom/android/keyguard/KeyguardHostViewController;-><init>(Lcom/android/keyguard/KeyguardHostView;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/media/AudioManager;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/keyguard/KeyguardSecurityContainerController$Factory;Lcom/android/keyguard/CarrierTextController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Lcom/android/keyguard/KeyguardRotationController;)V

    return-object v11
.end method


# virtual methods
.method public get()Lcom/android/keyguard/KeyguardHostViewController;
    .locals 11

    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->viewProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/keyguard/KeyguardHostView;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->keyguardUpdateMonitorProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->audioManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->telephonyManagerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->viewMediatorCallbackProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/keyguard/ViewMediatorCallback;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->keyguardSecurityContainerControllerFactoryProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->carrierTextControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/keyguard/CarrierTextController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->configurationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->keyguardBiometricViewControllerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardHostViewController_Factory;->keyguardRotationControllerProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lcom/android/keyguard/KeyguardRotationController;

    invoke-static/range {v1 .. v10}, Lcom/android/keyguard/KeyguardHostViewController_Factory;->newInstance(Lcom/android/keyguard/KeyguardHostView;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/media/AudioManager;Landroid/telephony/TelephonyManager;Lcom/android/keyguard/ViewMediatorCallback;Ljava/lang/Object;Lcom/android/keyguard/CarrierTextController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/biometrics/KeyguardBiometricViewController;Lcom/android/keyguard/KeyguardRotationController;)Lcom/android/keyguard/KeyguardHostViewController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 0

    .line 11
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardHostViewController_Factory;->get()Lcom/android/keyguard/KeyguardHostViewController;

    move-result-object p0

    return-object p0
.end method
