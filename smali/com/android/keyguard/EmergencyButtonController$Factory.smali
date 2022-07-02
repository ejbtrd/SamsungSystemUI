.class public Lcom/android/keyguard/EmergencyButtonController$Factory;
.super Ljava/lang/Object;
.source "EmergencyButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/EmergencyButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Factory"
.end annotation


# instance fields
.field private final mActivityTaskManager:Landroid/app/ActivityTaskManager;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private final mTelecomManager:Landroid/telecom/TelecomManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/telephony/TelephonyManager;Landroid/os/PowerManager;Landroid/app/ActivityTaskManager;Lcom/android/systemui/statusbar/phone/ShadeController;Landroid/telecom/TelecomManager;Lcom/android/internal/logging/MetricsLogger;)V
    .locals 0

    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 382
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 383
    iput-object p3, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 384
    iput-object p4, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 385
    iput-object p5, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mPowerManager:Landroid/os/PowerManager;

    .line 386
    iput-object p6, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    .line 387
    iput-object p7, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 388
    iput-object p8, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 389
    iput-object p9, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    .line 391
    iput-object p2, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-void
.end method


# virtual methods
.method public create(Lcom/android/keyguard/EmergencyButton;)Lcom/android/keyguard/EmergencyButtonController;
    .locals 13

    .line 396
    new-instance v12, Lcom/android/keyguard/EmergencyButtonController;

    iget-object v2, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v3, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v5, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v6, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mPowerManager:Landroid/os/PowerManager;

    iget-object v7, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mActivityTaskManager:Landroid/app/ActivityTaskManager;

    iget-object v8, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    iget-object v9, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mTelecomManager:Landroid/telecom/TelecomManager;

    iget-object v10, p0, Lcom/android/keyguard/EmergencyButtonController$Factory;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    const/4 v11, 0x0

    move-object v0, v12

    move-object v1, p1

    invoke-direct/range {v0 .. v11}, Lcom/android/keyguard/EmergencyButtonController;-><init>(Lcom/android/keyguard/EmergencyButton;Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/view/inputmethod/InputMethodManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/telephony/TelephonyManager;Landroid/os/PowerManager;Landroid/app/ActivityTaskManager;Lcom/android/systemui/statusbar/phone/ShadeController;Landroid/telecom/TelecomManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/keyguard/EmergencyButtonController$1;)V

    return-object v12
.end method
