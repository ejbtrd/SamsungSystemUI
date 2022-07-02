.class public Lcom/android/systemui/statusbar/ShortcutManager;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "ShortcutManager.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;,
        Lcom/android/systemui/statusbar/ShortcutManager$KeyguardBottomTaskCallback;,
        Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;
    }
.end annotation


# static fields
.field private static final DEF_SHORTCUT:Ljava/lang/String;

.field public static final INSECURE_CAMERA_INTENT:Landroid/content/Intent;

.field public static final PHONE_INTENT:Landroid/content/Intent;

.field private static final SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

.field public static final SECURE_CAMERA_INTENT:Landroid/content/Intent;


# instance fields
.field private final BLACK_BG_CONTRAST_60:Landroid/graphics/ColorMatrix;

.field private final WHITE_BG_CONTRAST_60:Landroid/graphics/ColorMatrix;

.field private final WHITE_BG_INVERT:Landroid/graphics/ColorMatrix;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mExecutor:Ljava/util/concurrent/Executor;

.field private final mHandler:Landroid/os/Handler;

.field private final mHasSPenFeature:Z

.field private mIconSize:I

.field protected final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mIsFlashlightSupported:Z

.field private mIsKidsModeRunning:Z

.field public mIsLocksTaskModeLocked:Z

.field private mIsPermDisabled:Z

.field private final mIsTablet:Z

.field protected mKeyguardBottomAreaShortcutDnd:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutDnd;

.field protected mKeyguardBottomAreaShortcutFlashLight:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutFlashLight;

.field private final mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

.field private final mKeyguardBottomTaskCallback:Lcom/android/systemui/statusbar/ShortcutManager$KeyguardBottomTaskCallback;

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private final mSb:Ljava/lang/StringBuilder;

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mShortcutVisibleForMDM:Z

.field private final mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mUpdateShortcutsRunnable:Ljava/lang/Runnable;


# direct methods
.method public static synthetic $r8$lambda$0dHTky6k_9-FZhVKROmLXLFrnwM(Lcom/android/systemui/statusbar/ShortcutManager;II)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ShortcutManager;->lambda$updateShortcutsIcon$8(II)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$1ZIev91tmaN26ZNvfnSJwbqmhGM(Lcom/android/systemui/statusbar/ShortcutManager;ILandroid/content/ComponentName;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ShortcutManager;->lambda$updateShortcut$3(ILandroid/content/ComponentName;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6NaNEX50D6PmgMyHvOgnlk67dhI(Lcom/android/systemui/statusbar/ShortcutManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->lambda$updateShortcut$2(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$6U_MQBaGfskBNfZcSXSP2vKCS48(Lcom/android/systemui/statusbar/ShortcutManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->lambda$updateTaskShortcut$6(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$D0Lb1DGPovDnl1-Po2HRBKtU21E(Lcom/android/systemui/statusbar/ShortcutManager;ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/ShortcutManager;->lambda$updateTaskShortcut$4(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EuJl1y6rk3WjVa-t_XT090gkAmk(Lcom/android/systemui/statusbar/ShortcutManager;ILandroid/content/ComponentName;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ShortcutManager;->lambda$updateShortcut$0(ILandroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IKLVX5hknInJrWPKOKfMnLwK4O4(Lcom/android/systemui/statusbar/ShortcutManager;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->lambda$updateShortcutsIcon$11(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$MMcRn19Hcz66iJ2xwpilpF8JW-0(Lcom/android/systemui/statusbar/ShortcutManager;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ShortcutManager;->lambda$updateTaskShortcut$7(ILjava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$PUKQSSJelel6crvQ-JZtuObhQxo(Lcom/android/systemui/statusbar/ShortcutManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->lambda$updateShortcutsIcon$12(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$RHsa4QdmyeXYvaflbSSLAc4RNfU(Lcom/android/systemui/statusbar/ShortcutManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->lambda$updateShortcutsIcon$9(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$UwsAC5TFw_BCvvVqwZ_oseOx128(Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->lambda$unregisterCallback$14(Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;Ljava/lang/ref/WeakReference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$ptfcOJZnoaKqDJsDeSiP_eg_u_I(Lcom/android/systemui/statusbar/ShortcutManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->lambda$updateShortcut$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$rOxeKXenxQ50T1KRmFRbcKma1rs(Lcom/android/systemui/statusbar/ShortcutManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->handleUpdateShortcuts()V

    return-void
.end method

.method public static synthetic $r8$lambda$tFRIZTTJYRz85570IDeAnYdv3YQ(Lcom/android/systemui/statusbar/ShortcutManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->lambda$updateTaskShortcut$5(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wBKF8_KDSclDxyMzKpQ9XCF1VD8(Lcom/android/systemui/statusbar/ShortcutManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->lambda$updateShortcutsIcon$10(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$x61dZI-kBARHtJ3KZYfi06mjRpQ(Lcom/android/systemui/statusbar/ShortcutManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->lambda$updateShortcutsIcon$13(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 125
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Setting_ConfigDefAppShortcutForLockScreen"

    .line 126
    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/ShortcutManager;->DEF_SHORTCUT:Ljava/lang/String;

    const-string v0, "com.samsung.android.calendar"

    const-string v1, "com.android.calendar"

    const-string v2, "com.sec.android.app.clockpackage"

    .line 129
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/ShortcutManager;->SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

    .line 135
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.LAUNCHER"

    .line 136
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v3, "com.sec.android.app.camera"

    const-string v4, "com.sec.android.app.camera.Camera"

    .line 137
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/ShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 140
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 142
    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/ShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    .line 145
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.DIAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.dialer"

    const-string v2, "com.samsung.android.dialer.DialtactsActivity"

    .line 146
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/statusbar/ShortcutManager;->PHONE_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Ljava/util/concurrent/Executor;Landroid/os/Handler;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/util/SettingsHelper;Landroid/content/pm/PackageManager;Lcom/android/systemui/statusbar/policy/KeyguardStateController;)V
    .locals 5

    .line 283
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    const/4 v0, 0x2

    new-array v1, v0, [Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    .line 155
    iput-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    .line 156
    new-instance v1, Lcom/android/systemui/statusbar/ShortcutManager$KeyguardBottomTaskCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/ShortcutManager$KeyguardBottomTaskCallback;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;Lcom/android/systemui/statusbar/ShortcutManager$1;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomTaskCallback:Lcom/android/systemui/statusbar/ShortcutManager$KeyguardBottomTaskCallback;

    new-array v1, v0, [Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    .line 157
    iput-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    .line 159
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    .line 160
    new-instance v1, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mUpdateShortcutsRunnable:Ljava/lang/Runnable;

    .line 164
    new-instance v1, Landroid/graphics/ColorMatrix;

    const/16 v3, 0x14

    new-array v4, v3, [F

    fill-array-data v4, :array_0

    invoke-direct {v1, v4}, Landroid/graphics/ColorMatrix;-><init>([F)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->WHITE_BG_INVERT:Landroid/graphics/ColorMatrix;

    .line 172
    new-instance v1, Landroid/graphics/ColorMatrix;

    new-array v4, v3, [F

    fill-array-data v4, :array_1

    invoke-direct {v1, v4}, Landroid/graphics/ColorMatrix;-><init>([F)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->WHITE_BG_CONTRAST_60:Landroid/graphics/ColorMatrix;

    .line 180
    new-instance v1, Landroid/graphics/ColorMatrix;

    new-array v3, v3, [F

    fill-array-data v3, :array_2

    invoke-direct {v1, v3}, Landroid/graphics/ColorMatrix;-><init>([F)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->BLACK_BG_CONTRAST_60:Landroid/graphics/ColorMatrix;

    const/4 v1, 0x0

    .line 196
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIsLocksTaskModeLocked:Z

    .line 198
    new-instance v3, Lcom/android/systemui/statusbar/ShortcutManager$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/ShortcutManager$1;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;)V

    iput-object v3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 286
    iput-object p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mContext:Landroid/content/Context;

    .line 287
    iput-object p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mExecutor:Ljava/util/concurrent/Executor;

    .line 288
    iput-object p4, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mHandler:Landroid/os/Handler;

    .line 289
    iput-object p7, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    .line 290
    iput-object p6, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 291
    iput-object p5, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 292
    iput-object p8, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 293
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/android/systemui/R$dimen;->keyguard_affordance_height:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIconSize:I

    .line 294
    invoke-virtual {p6}, Lcom/android/systemui/util/SettingsHelper;->isShortcutsVisibleForMDM()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcutVisibleForMDM:Z

    .line 295
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIsTablet:Z

    .line 296
    invoke-static {p1}, Lcom/android/systemui/util/DeviceType;->hasSPenFeature(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mHasSPenFeature:Z

    .line 297
    const-class p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->hasFlashlight()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIsFlashlightSupported:Z

    move p1, v1

    :goto_0
    if-ge p1, v0, :cond_0

    .line 300
    iget-object p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    new-instance p4, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    invoke-direct {p4, v2}, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;-><init>(Lcom/android/systemui/statusbar/ShortcutManager$1;)V

    aput-object p4, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 303
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 p3, 0x3

    new-array p3, p3, [Landroid/net/Uri;

    const-string p4, "lock_application_shortcut"

    .line 304
    invoke-static {p4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    aput-object p4, p3, v1

    const-string/jumbo p4, "set_shortcuts_mode"

    .line 305
    invoke-static {p4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    const/4 p5, 0x1

    aput-object p4, p3, p5

    const-string p4, "current_sec_appicon_theme_package"

    .line 306
    invoke-static {p4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    aput-object p4, p3, v0

    .line 303
    invoke-virtual {p1, p0, p3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 307
    iget-object p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 309
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.PACKAGE_REMOVED"

    .line 310
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.PACKAGE_REPLACED"

    .line 311
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.PACKAGE_CHANGED"

    .line 312
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.PACKAGE_ADDED"

    .line 313
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo p3, "package"

    .line 314
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 315
    iget-object p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object p4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p2, p3, p1, v2, p4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 317
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.LOCALE_CHANGED"

    .line 318
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.USER_SWITCHED"

    .line 319
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 320
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 321
    iget-object p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object p4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p2, p3, p1, v2, p4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 323
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "android.intent.action.PACKAGES_SUSPENDED"

    .line 324
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.PACKAGES_UNSUSPENDED"

    .line 325
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 326
    iget-object p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object p4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p2, p3, p1, v2, p4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 328
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "com.samsung.applock.intent.action.APPLOCK_ENABLE_CHANGED"

    .line 329
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.samsung.applock.intent.action.SSECURE_UPDATE"

    .line 330
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.samsung.android.action.LOCK_TASK_MODE"

    .line 331
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "com.sec.android.app.kidshome.action.DEFAULT_HOME_CHANGE"

    .line 332
    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 333
    iget-object p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    sget-object p4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p2, p3, p1, v2, p4}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;)V

    .line 335
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->isKidsModeRunning()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIsKidsModeRunning:Z

    return-void

    nop

    :array_0
    .array-data 4
        -0x40800000    # -1.0f
        0x0
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x437f0000    # 255.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x40466666    # 3.1f
        0x0
        0x0
        0x0
        -0x3cab0000    # -213.0f
        0x0
        0x40466666    # 3.1f
        0x0
        0x0
        -0x3cab0000    # -213.0f
        0x0
        0x0
        0x40466666    # 3.1f
        0x0
        -0x3cab0000    # -213.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x40133333    # 2.3f
        0x0
        0x0
        0x0
        -0x3cab0000    # -213.0f
        0x0
        0x40133333    # 2.3f
        0x0
        0x0
        -0x3cab0000    # -213.0f
        0x0
        0x0
        0x40133333    # 2.3f
        0x0
        -0x3cab0000    # -213.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/ShortcutManager;)Z
    .locals 0

    .line 91
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIsKidsModeRunning:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/statusbar/ShortcutManager;Z)Z
    .locals 0

    .line 91
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIsKidsModeRunning:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/ShortcutManager;)Z
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->isLockTaskModeLocked()Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/ShortcutManager;)[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/ShortcutManager;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->resetShortcut(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/ShortcutManager;ILandroid/content/ComponentName;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/ShortcutManager;->updateShortcut(ILandroid/content/ComponentName;)V

    return-void
.end method

.method private drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;
    .locals 3

    if-nez p1, :cond_0

    const-string p0, "ShortcutManager"

    const-string p1, "drawableToScaledBitmapDrawable : drawable is null"

    .line 418
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 421
    :cond_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 422
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 423
    invoke-virtual {p3}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    invoke-virtual {p3}, Landroid/graphics/Canvas;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 424
    invoke-virtual {p1, p3}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 425
    iget-object p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p2, p1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 426
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-direct {p1, p0, p2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method private enc(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 339
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 341
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 343
    rem-int/lit8 v2, v1, 0x5

    if-nez v2, :cond_0

    .line 344
    iget-object v2, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->codePointAt(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 346
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mSb:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getBgResId(ZZZ)I
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 1232
    sget p0, Lcom/android/systemui/R$drawable;->bg_bk_on:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/systemui/R$drawable;->bg_wh_on:I

    :goto_0
    return p0

    :cond_1
    if-eqz p3, :cond_2

    .line 1234
    sget p0, Lcom/android/systemui/R$drawable;->bg_bk:I

    goto :goto_1

    :cond_2
    sget p0, Lcom/android/systemui/R$drawable;->bg_wh:I

    :goto_1
    return p0
.end method

.method private getBlendingFgIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;
    .locals 3

    const-string v0, "bottom"

    .line 1245
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result v0

    .line 1248
    :try_start_0
    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1249
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1250
    invoke-direct {p0, p3, p4, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->getBgResId(ZZZ)I

    move-result v2

    .line 1249
    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    move p3, v2

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 1253
    :goto_0
    invoke-virtual {p0, p2, v0, p1, p3}, Lcom/android/systemui/statusbar/ShortcutManager;->grayInvertDrawble(Landroid/graphics/Bitmap;ZLjava/lang/String;Z)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1256
    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/ShortcutManager;->getCropFg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1259
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p3

    .line 1260
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p4

    .line 1262
    invoke-static {p2, p3, p4, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 1265
    iget-object v2, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 1266
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->isSmartThingsShortcutIcon(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1267
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->isARShortcutIcon(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1268
    sget p1, Lcom/android/systemui/R$color;->shortcut_whitebg_tint:I

    goto :goto_1

    :cond_1
    sget p1, Lcom/android/systemui/R$color;->shortcut_blackbg_tint:I

    .line 1265
    :goto_1
    invoke-virtual {v2, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->imgShadow(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1271
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p3, p4, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1273
    new-instance p2, Landroid/graphics/Canvas;

    invoke-direct {p2, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1274
    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    const/4 p4, 0x0

    .line 1275
    invoke-virtual {p2, v1, p4, p4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1276
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    .line 1277
    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v1, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p3, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1279
    invoke-virtual {p2, p0, p4, p4, p3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1280
    new-instance p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1283
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Making samsung Icon error : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private getCropFg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1239
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$dimen;->keyguard_affordance_fg_margin:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

    .line 1241
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/lit8 v1, p0, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    sub-int/2addr v2, v1

    .line 1240
    invoke-static {p1, p0, p0, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getFgPanelIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1289
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->getCropFg(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1290
    new-instance p1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {p1, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    return-object p1
.end method

.method private getKeyguardBottomAreaShortcutTask(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;
    .locals 2

    .line 984
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "Dnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "Flashlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 991
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutFlashLight:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutFlashLight;

    if-nez p1, :cond_1

    .line 992
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutFlashLight;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomTaskCallback:Lcom/android/systemui/statusbar/ShortcutManager$KeyguardBottomTaskCallback;

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutFlashLight;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask$Callback;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutFlashLight:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutFlashLight;

    .line 994
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutFlashLight:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutFlashLight;

    return-object p0

    .line 986
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutDnd:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutDnd;

    if-nez p1, :cond_3

    .line 987
    new-instance p1, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutDnd;

    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomTaskCallback:Lcom/android/systemui/statusbar/ShortcutManager$KeyguardBottomTaskCallback;

    invoke-direct {p1, v0, v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutDnd;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask$Callback;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutDnd:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutDnd;

    .line 989
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutDnd:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutDnd;

    return-object p0
.end method

.method private getSamsungAppIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1018
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->isDefaultShortcutIcon(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const-string v2, "com.sec.android.app.camera"

    .line 1023
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 1025
    :cond_1
    sget v1, Lcom/android/systemui/R$drawable;->fg_camera:I

    :goto_0
    if-eqz v1, :cond_2

    .line 1033
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    :cond_2
    :goto_1
    return-object v0
.end method

.method private getSamsungAppsIconTheme(Landroid/os/Bundle;)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x0

    if-eqz p1, :cond_0

    const-string v0, "com.sec.android.app.launcher.icon_theme"

    .line 1221
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private getSettingValues()V
    .locals 12

    .line 354
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->getShortcutAppList()Ljava/lang/String;

    move-result-object v0

    .line 356
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_4

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSettingValues("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->enc(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ShortcutManager"

    invoke-static {v5, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, ";"

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 362
    array-length v1, v0

    const/4 v6, 0x2

    if-ge v1, v6, :cond_0

    .line 363
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v0, p0, v2

    iput-object v4, v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 364
    aget-object v0, p0, v3

    iput-object v4, v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 365
    aget-object v0, p0, v2

    iput-object v4, v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 366
    aget-object p0, p0, v3

    iput-object v4, p0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    return-void

    .line 370
    :cond_0
    array-length v1, v0

    div-int/2addr v1, v6

    move v7, v2

    :goto_0
    if-ge v7, v1, :cond_5

    if-ge v7, v6, :cond_5

    mul-int/lit8 v8, v7, 0x2

    .line 373
    aget-object v9, v0, v8

    const-string v10, "1"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    add-int/lit8 v8, v8, 0x1

    .line 374
    aget-object v9, v0, v8

    if-eqz v9, :cond_1

    aget-object v9, v0, v8

    const-string v10, "NoUnlockNeeded"

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 375
    iget-object v9, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v10, v9, v7

    iput v3, v10, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->shortcutProperty:I

    .line 376
    aget-object v9, v9, v7

    aget-object v10, v0, v8

    aget-object v8, v0, v8

    const-string v11, "/"

    invoke-virtual {v8, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v8

    add-int/2addr v8, v3

    invoke-virtual {v10, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v9, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    goto :goto_1

    .line 378
    :cond_1
    iget-object v9, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v9, v9, v7

    iput v2, v9, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->shortcutProperty:I

    .line 379
    aget-object v9, v0, v8

    invoke-static {v9}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v9

    if-nez v9, :cond_2

    .line 382
    iget-object v10, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    aget-object v8, v0, v8

    invoke-virtual {v10, v8}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    if-eqz v8, :cond_2

    .line 384
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v9

    .line 388
    :cond_2
    iget-object v8, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v8, v8, v7

    iput-object v9, v8, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    goto :goto_1

    .line 392
    :cond_3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSettingValues"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v0, v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v8, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v9, v8, v7

    iput-object v4, v9, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 395
    aget-object v8, v8, v7

    iput-object v4, v8, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 399
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v0, p0, v2

    iput-object v4, v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 400
    aget-object v0, p0, v3

    iput-object v4, v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 401
    aget-object v0, p0, v2

    iput-object v4, v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 402
    aget-object p0, p0, v3

    iput-object v4, p0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    :cond_5
    return-void
.end method

.method private getShortcutIcon(Landroid/content/pm/ActivityInfo;Z)Landroid/graphics/drawable/Drawable;
    .locals 3

    .line 431
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 432
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v1}, Lcom/android/systemui/util/SettingsHelper;->getActiveIconPackage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    .line 433
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->getSamsungAppIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    .line 437
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2, v2}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 441
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ActivityInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 444
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->isblendNeeded(Landroid/content/pm/ActivityInfo;Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 446
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->isInternalShortcutIcon(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 447
    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->getSamsungAppIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    .line 448
    :cond_3
    move-object p1, v1

    check-cast p1, Landroid/graphics/drawable/DrawableWrapper;

    invoke-virtual {p1}, Landroid/graphics/drawable/DrawableWrapper;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroid/graphics/drawable/AdaptiveIconDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/AdaptiveIconDrawable;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    :goto_2
    move-object v1, p1

    goto :goto_3

    :cond_4
    const/4 p2, 0x0

    .line 453
    invoke-direct {p0, v0, p1, p2, p2}, Lcom/android/systemui/statusbar/ShortcutManager;->getBlendingFgIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_5

    goto :goto_2

    :catch_0
    move-exception p1

    .line 460
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Making samsung Icon error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ShortcutManager"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    :cond_5
    :goto_3
    iget p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIconSize:I

    invoke-direct {p0, v1, p1, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object p0

    return-object p0
.end method

.method private handleUpdateShortcuts()V
    .locals 2

    .line 587
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->getSettingValues()V

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 589
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->isTaskType(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 590
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->updateTaskShortcut(ILjava/lang/String;)V

    goto :goto_1

    .line 592
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->updateShortcut(ILandroid/content/ComponentName;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private imgShadow(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 10

    .line 1330
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    .line 1331
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    .line 1332
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1334
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 1335
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    int-to-float v5, v5

    const/4 v6, 0x0

    invoke-direct {v3, v6, v6, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1336
    new-instance v4, Landroid/graphics/RectF;

    int-to-float v5, p0

    int-to-float v7, v0

    invoke-direct {v4, v6, v6, v5, v7}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 1337
    sget-object v5, Landroid/graphics/Matrix$ScaleToFit;->CENTER:Landroid/graphics/Matrix$ScaleToFit;

    invoke-virtual {v2, v3, v4, v5}, Landroid/graphics/Matrix;->setRectToRect(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Matrix$ScaleToFit;)Z

    .line 1339
    new-instance v3, Landroid/graphics/Matrix;

    invoke-direct {v3, v2}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 1340
    invoke-virtual {v3, v6, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 1342
    new-instance v4, Landroid/graphics/Canvas;

    invoke-direct {v4, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1343
    new-instance v5, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v5, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 1344
    invoke-virtual {v4, p1, v2, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1345
    new-instance v8, Landroid/graphics/PorterDuffXfermode;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v9}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v8}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 1346
    invoke-virtual {v4, p1, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1348
    new-instance v3, Landroid/graphics/BlurMaskFilter;

    sget-object v4, Landroid/graphics/BlurMaskFilter$Blur;->SOLID:Landroid/graphics/BlurMaskFilter$Blur;

    const/high16 v8, 0x40800000    # 4.0f

    invoke-direct {v3, v8, v4}, Landroid/graphics/BlurMaskFilter;-><init>(FLandroid/graphics/BlurMaskFilter$Blur;)V

    .line 1349
    invoke-virtual {v5}, Landroid/graphics/Paint;->reset()V

    .line 1350
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 1351
    invoke-virtual {v5, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 1352
    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;

    .line 1353
    invoke-virtual {v5, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1355
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, v7}, Landroid/graphics/Paint;-><init>(I)V

    .line 1357
    invoke-virtual {p2, v7}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 1359
    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1360
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1361
    invoke-virtual {v0, v1, v6, v6, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 1362
    invoke-virtual {v0, p1, v2, p2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 1363
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0
.end method

.method private isARShortcutIcon(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.samsung.android.aremoji"

    .line 1212
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.sec.android.mimage.avatarstickers"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isAllowedNoUnlockNeeded(Ljava/lang/String;)Z
    .locals 1

    .line 1053
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    const-string v0, "com.samsung.keyguard.SHORTCUT_PERMISSION"

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "com.sec.android.app.popupcalculator"

    .line 1055
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isInternalShortcutIcon(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "com.sec.android.app.camera"

    .line 1227
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->getActiveIconPackage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isLockTaskModeLocked()Z
    .locals 1

    .line 1153
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mContext:Landroid/content/Context;

    const-string v0, "activity"

    .line 1154
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager;

    .line 1155
    invoke-virtual {p0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isShortcutMasterEnabled()Z
    .locals 0

    .line 955
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper;->isShortcutMasterEnabled()Z

    move-result p0

    return p0
.end method

.method private isSmartThingsShortcutIcon(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.samsung.android.oneconnect"

    .line 1216
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.samsung.android.tvplus"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private isblendNeeded(Landroid/content/pm/ActivityInfo;Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1325
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->isInternalShortcutIcon(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    instance-of p2, p2, Landroid/graphics/drawable/DrawableWrapper;

    if-eqz p2, :cond_0

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 1326
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->getSamsungAppsIconTheme(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private static synthetic lambda$unregisterCallback$14(Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;Ljava/lang/ref/WeakReference;)Z
    .locals 0

    .line 891
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateShortcut$0(ILandroid/content/ComponentName;)Z
    .locals 8

    .line 471
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->enabled:Z

    const-string/jumbo v0, "updateShortcut : "

    const-string v2, "ShortcutManager"

    if-eqz p2, :cond_7

    .line 474
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ShortcutManager;->getSuspended(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 479
    :cond_0
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 481
    iget-object v4, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p2}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v5

    const/16 v6, 0x81

    .line 482
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    .line 481
    invoke-virtual {v4, v5, v6, v7}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    .line 484
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_1
    move-object v6, v5

    :goto_0
    if-nez v6, :cond_2

    .line 489
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " activityInfo is null, resolveInfo is : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",  return FALSE"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 494
    :cond_2
    iget-boolean v0, v6, Landroid/content/pm/ActivityInfo;->enabled:Z

    const/4 v4, 0x1

    if-nez v0, :cond_3

    .line 495
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result v0

    if-eq v0, v4, :cond_3

    const-string p0, "getComponentEnabled ... !COMPONENT_...STATE_ENABLED."

    .line 497
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 503
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object v7, v0, p1

    if-eqz v7, :cond_4

    .line 504
    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->removeListener()V

    .line 505
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aput-object v5, v0, p1

    .line 508
    :cond_4
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_5

    const-string v7, "com.samsung.keyguard.SHOW_WHEN_LOCKED_SHORTCUT"

    .line 511
    invoke-virtual {v0, v7, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_1

    :cond_5
    move v0, v1

    .line 514
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v7, v7, p1

    if-eqz v0, :cond_6

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/ShortcutManager;->isAllowedNoUnlockNeeded(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v4

    goto :goto_2

    :cond_6
    move v0, v1

    :goto_2
    iput-boolean v0, v7, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mNoUnlockNeeded:Z

    .line 516
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/ShortcutManager;->isDefaultShortcutIcon(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mDefaultShortcut:Z

    .line 517
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v3, v0, p1

    iput-boolean v4, v3, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->enabled:Z

    .line 518
    aget-object v0, v0, p1

    invoke-direct {p0, v6, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->getShortcutIcon(Landroid/content/pm/ActivityInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 519
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    invoke-direct {p0, v6, v4}, Lcom/android/systemui/statusbar/ShortcutManager;->getShortcutIcon(Landroid/content/pm/ActivityInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mPanelDrawable:Landroid/graphics/drawable/Drawable;

    .line 520
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v1, v0, p1

    iput-object p2, v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 521
    aget-object p2, v0, p1

    iput-object v5, p2, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    .line 522
    aget-object p2, v0, p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v6, v0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p2, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    .line 523
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateShortcut th : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " class : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 475
    :cond_7
    :goto_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is disabled from settings"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private synthetic lambda$updateShortcut$1(I)V
    .locals 0

    .line 526
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->sendUpdateShortcutViewToCallback(I)V

    return-void
.end method

.method private synthetic lambda$updateShortcut$2(I)V
    .locals 0

    .line 528
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->resetShortcut(I)V

    return-void
.end method

.method private synthetic lambda$updateShortcut$3(ILandroid/content/ComponentName;)V
    .locals 1

    .line 470
    new-instance v0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;I)V

    .line 525
    invoke-interface {v0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 526
    iget-object p2, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 528
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private synthetic lambda$updateShortcutsIcon$10(I)V
    .locals 2

    .line 812
    new-instance v0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;I)V

    .line 826
    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 827
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateShortcutsIcon$11(I)Z
    .locals 5

    const/4 v0, 0x0

    .line 836
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v2}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x81

    .line 837
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    .line 836
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 839
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 846
    iget-object v3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v3, v3, p1

    invoke-direct {p0, v1, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->getShortcutIcon(Landroid/content/pm/ActivityInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v3, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 847
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p1, v0, p1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/ShortcutManager;->getShortcutIcon(Landroid/content/pm/ActivityInfo;Z)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, p1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mPanelDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    return v2

    :catch_0
    move-exception p0

    .line 842
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NameNotFoundException while updating icon : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private synthetic lambda$updateShortcutsIcon$12(I)V
    .locals 0

    .line 851
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->sendUpdateIconOnlyToCallback(I)V

    return-void
.end method

.method private synthetic lambda$updateShortcutsIcon$13(I)V
    .locals 2

    .line 832
    new-instance v0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;)V

    .line 850
    invoke-interface {v0, p1}, Ljava/util/function/IntPredicate;->test(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 851
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private synthetic lambda$updateShortcutsIcon$8(II)Z
    .locals 4

    .line 813
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object v0, v0, p2

    if-nez v0, :cond_0

    .line 814
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "updateShortcutsIcon : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid task name"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 817
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->isTaskTypeEnabled(I)Z

    move-result v0

    .line 818
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p2, v1, p2

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object v2, v2, p1

    .line 819
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->getDrawble()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x1

    .line 818
    invoke-direct {p0, v1, v2, v3, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->getBlendingFgIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget v2, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIconSize:I

    invoke-direct {p0, v1, v2, v2}, Lcom/android/systemui/statusbar/ShortcutManager;->drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p2, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 820
    iget-object p2, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p2, p2, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object v1, v1, p1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->getPanelDrawble(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->getFgPanelIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p2, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mPanelDrawable:Landroid/graphics/drawable/Drawable;

    .line 822
    iget-object p2, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object p2, p2, p1

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->isPanelIconTransitionNeeded()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 823
    iget-object p2, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p2, p2, p1

    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object p1, v1, p1

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->getPanelDrawble(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->getFgPanelIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    iput-object p0, p2, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mPanelTransitDrawable:Landroid/graphics/drawable/Drawable;

    :cond_1
    return v3
.end method

.method private synthetic lambda$updateShortcutsIcon$9(I)V
    .locals 0

    .line 827
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->sendUpdateIconOnlyToCallback(I)V

    return-void
.end method

.method private synthetic lambda$updateTaskShortcut$4(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const-string/jumbo v1, "updateTaskShortcut : "

    const-string v2, "ShortcutManager"

    if-nez p3, :cond_0

    .line 537
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is disabled from settings"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 541
    :cond_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object v3, p3, p1

    .line 542
    iget-object v4, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v4, v4, p1

    iget-object v4, v4, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/systemui/statusbar/ShortcutManager;->getKeyguardBottomAreaShortcutTask(Ljava/lang/String;)Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    move-result-object v4

    aput-object v4, p3, p1

    .line 543
    iget-object p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object p3, p3, p1

    if-nez p3, :cond_1

    .line 544
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid task name"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string p3, "Flashlight"

    .line 548
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIsFlashlightSupported:Z

    if-nez p3, :cond_2

    .line 549
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Shortcut set to Flashlight but Flashlight is not supported for the device"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 553
    :cond_2
    iget-object p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object p3, p3, p1

    if-eq v3, p3, :cond_4

    if-eqz v3, :cond_3

    .line 555
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->removeListener()V

    .line 557
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object p3, p3, p1

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->addListener()V

    .line 560
    :cond_4
    iget-object p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p3, p3, p1

    const/4 v0, 0x1

    iput-boolean v0, p3, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->enabled:Z

    .line 561
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->isTaskTypeEnabled(I)Z

    move-result p3

    .line 562
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object v3, v3, p1

    .line 563
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->getDrawble()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    .line 562
    invoke-direct {p0, v4, v3, v0, p3}, Lcom/android/systemui/statusbar/ShortcutManager;->getBlendingFgIcon(Ljava/lang/String;Landroid/graphics/drawable/Drawable;ZZ)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v5, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIconSize:I

    invoke-direct {p0, v3, v5, v5}, Lcom/android/systemui/statusbar/ShortcutManager;->drawableToScaledBitmapDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 564
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object v3, v3, p1

    invoke-virtual {v3, p3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->getPanelDrawble(Z)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/ShortcutManager;->getFgPanelIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mPanelDrawable:Landroid/graphics/drawable/Drawable;

    .line 565
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->isPanelIconTransitionNeeded()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 566
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-object v3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object v3, v3, p1

    xor-int/2addr p3, v0

    invoke-virtual {v3, p3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->getPanelDrawble(Z)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/ShortcutManager;->getFgPanelIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mPanelTransitDrawable:Landroid/graphics/drawable/Drawable;

    .line 568
    :cond_5
    iget-object p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v1, p3, p1

    iput-object v4, v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 569
    aget-object p3, p3, p1

    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/ShortcutManager;->isDefaultShortcutIcon(Ljava/lang/String;)Z

    move-result p2

    iput-boolean p2, p3, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mDefaultShortcut:Z

    .line 570
    iget-object p2, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p2, p2, p1

    iget-object p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object p3, p3, p1

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->getAppLabel()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p2, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    .line 571
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "updateTaskShortcut th : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " class : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private synthetic lambda$updateTaskShortcut$5(I)V
    .locals 0

    .line 574
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->sendUpdateShortcutViewToCallback(I)V

    return-void
.end method

.method private synthetic lambda$updateTaskShortcut$6(I)V
    .locals 0

    .line 576
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->resetShortcut(I)V

    return-void
.end method

.method private synthetic lambda$updateTaskShortcut$7(ILjava/lang/String;)V
    .locals 1

    .line 535
    new-instance v0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda15;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda15;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;ILjava/lang/String;)V

    .line 573
    invoke-interface {v0, p2}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 574
    iget-object p2, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 576
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method private resetShortcut(I)V
    .locals 3

    .line 407
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v1, v0, p1

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->enabled:Z

    .line 408
    aget-object v1, v0, p1

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 409
    aget-object v1, v0, p1

    iput-object v2, v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mPanelDrawable:Landroid/graphics/drawable/Drawable;

    .line 410
    aget-object v1, v0, p1

    iput-object v2, v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mPanelTransitDrawable:Landroid/graphics/drawable/Drawable;

    .line 411
    aget-object v0, v0, p1

    iput-object v2, v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    .line 413
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->sendUpdateShortcutViewToCallback(I)V

    return-void
.end method

.method private sendUpdateIconOnlyToCallback(I)V
    .locals 2

    .line 918
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 919
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;

    if-eqz v1, :cond_0

    .line 921
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;->updateShortcutIconOnly(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendUpdateShortcutViewToCallback(I)V
    .locals 2

    .line 909
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 910
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;

    if-eqz v1, :cond_0

    .line 912
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;

    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;->updateShortcutView(I)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private sendUpdateWholeShortcutViewToCallback(Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;)V
    .locals 1

    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    .line 928
    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;->updateShortcutView(I)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private updateShortcut(ILandroid/content/ComponentName;)V
    .locals 2

    .line 469
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateTaskShortcut(ILjava/lang/String;)V
    .locals 2

    .line 534
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;ILjava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "ShortcutManager state:"

    .line 960
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 961
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  CurrentUserId = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  Shortcut count = 2"

    .line 962
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 963
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  Master switch = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->isShortcutMasterEnabled()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 964
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "  disabled shortcut by MDM = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->shouldDisableShortcutWithMdm()Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 966
    :goto_0
    iget-object p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    array-length p3, p3

    if-ge p1, p3, :cond_2

    .line 967
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "  Shortcut "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 968
    iget-object p3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p3, p3, p1

    if-nez p3, :cond_0

    const-string p3, "    null"

    .line 970
    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 973
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    enabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p3, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->enabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 974
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    component = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 975
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    label = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 976
    iget-object v0, p3, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 977
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    isSuspended = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p3, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->getSuspended(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 978
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    isLockTaskPermitted = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p3, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3}, Lcom/android/systemui/statusbar/ShortcutManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto/16 :goto_0

    :cond_2
    return-void
.end method

.method public getAppShortcutDrawable(IZ)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-ltz p1, :cond_2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 692
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mPanelTransitDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 694
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mPanelDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 688
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "IllegalArgument : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getApplicationLabel(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_2

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 803
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "Shortcut"

    return-object p0

    .line 806
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mAppLabel:Ljava/lang/String;

    return-object p0

    .line 799
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IllegalArgument : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getCameraIntent()Landroid/content/Intent;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->canDismissLockScreen()Z

    move-result v0

    .line 616
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isMethodSecure()Z

    move-result p0

    if-eqz p0, :cond_0

    if-nez v0, :cond_0

    .line 618
    sget-object p0, Lcom/android/systemui/statusbar/ShortcutManager;->SECURE_CAMERA_INTENT:Landroid/content/Intent;

    return-object p0

    .line 620
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/ShortcutManager;->INSECURE_CAMERA_INTENT:Landroid/content/Intent;

    return-object p0
.end method

.method public getIntent(I)Landroid/content/Intent;
    .locals 3

    const-string v0, "ShortcutManager"

    if-ltz p1, :cond_3

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    goto :goto_1

    .line 648
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "th = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is camera package"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->getCameraIntent()Landroid/content/Intent;

    move-result-object p0

    goto :goto_0

    .line 654
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-static {p0}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_2

    .line 656
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.MAIN"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_2
    const-string p1, "android.intent.category.LAUNCHER"

    .line 658
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const/high16 p1, 0x10010000

    .line 659
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p0

    :goto_0
    return-object p0

    .line 643
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getIntent wrong param : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNoUnlockNeedAppIntent(Landroid/content/ComponentName;)Landroid/content/Intent;
    .locals 0

    .line 626
    invoke-static {p1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p0

    if-nez p0, :cond_0

    .line 628
    new-instance p0, Landroid/content/Intent;

    const-string p1, "android.intent.action.MAIN"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    :cond_0
    const-string p1, "android.intent.category.LAUNCHER"

    .line 630
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10010000

    .line 631
    invoke-virtual {p0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    return-object p0
.end method

.method public getShortcutContentDescription(I)Ljava/lang/CharSequence;
    .locals 0

    .line 761
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->getApplicationLabel(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortcutDrawable(I)Landroid/graphics/drawable/Drawable;
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 676
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0

    .line 672
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IllegalArgument : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public getShortcutHintText(I)Ljava/lang/CharSequence;
    .locals 3

    .line 765
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$string;->kg_tts_shortcut_app:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->getApplicationLabel(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getShortcutProperty(I)I
    .locals 2

    const/4 v0, 0x2

    if-ltz p1, :cond_1

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1006
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->shortcutProperty:I

    return p0

    .line 1002
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getShortcutProperty wrong param: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public getSuspended(Ljava/lang/String;)Z
    .locals 1

    .line 739
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    if-eqz p0, :cond_0

    .line 741
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->isPackageSuspended(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 743
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getSuspended() - Not found package name = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public grayInvertDrawble(Landroid/graphics/Bitmap;ZLjava/lang/String;Z)Landroid/graphics/Bitmap;
    .locals 3

    .line 1371
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    .line 1370
    invoke-static {p1, v2, v2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p1

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    .line 1371
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 1373
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 1375
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/ShortcutManager;->isARShortcutIcon(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    if-nez p3, :cond_2

    if-eqz p4, :cond_2

    .line 1377
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_1

    .line 1378
    sget p2, Lcom/android/systemui/R$color;->shortcut_smartthing_tint:I

    goto :goto_0

    :cond_1
    sget p2, Lcom/android/systemui/R$color;->shortcut_smartthing_tint_whitebg:I

    .line 1377
    :goto_0
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_3

    .line 1379
    :cond_2
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/ShortcutManager;->isSmartThingsShortcutIcon(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_4

    .line 1380
    new-instance p3, Landroid/graphics/PorterDuffColorFilter;

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mContext:Landroid/content/Context;

    if-eqz p2, :cond_3

    .line 1381
    sget p2, Lcom/android/systemui/R$color;->shortcut_smartthing_tint_whitebg:I

    goto :goto_1

    :cond_3
    sget p2, Lcom/android/systemui/R$color;->shortcut_smartthing_tint:I

    .line 1380
    :goto_1
    invoke-virtual {p0, p2}, Landroid/content/Context;->getColor(I)I

    move-result p0

    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p3, p0, p2}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_3

    .line 1383
    :cond_4
    new-instance p3, Landroid/graphics/ColorMatrix;

    invoke-direct {p3}, Landroid/graphics/ColorMatrix;-><init>()V

    .line 1384
    invoke-virtual {p3, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    if-eqz p2, :cond_5

    .line 1386
    iget-object p2, p0, Lcom/android/systemui/statusbar/ShortcutManager;->WHITE_BG_INVERT:Landroid/graphics/ColorMatrix;

    invoke-virtual {p3, p2}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 1387
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->WHITE_BG_CONTRAST_60:Landroid/graphics/ColorMatrix;

    invoke-virtual {p3, p0}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    goto :goto_2

    .line 1389
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->BLACK_BG_CONTRAST_60:Landroid/graphics/ColorMatrix;

    invoke-virtual {p3, p0}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 1391
    :goto_2
    new-instance p0, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {p0, p3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 1394
    :goto_3
    new-instance p0, Landroid/graphics/Canvas;

    invoke-direct {p0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 1395
    invoke-virtual {p0, p1, v2, v2, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-object p1
.end method

.method public hasShortcut(I)Z
    .locals 2

    .line 725
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->isShortcutEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 726
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->isTaskType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->taskName:Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v1, v0, p1

    iget-object v1, v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_2

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    .line 728
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDefaultShortcutIcon(Ljava/lang/String;)Z
    .locals 4

    .line 1059
    sget-object v0, Lcom/android/systemui/statusbar/ShortcutManager;->DEF_SHORTCUT:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1060
    invoke-virtual {v0, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    return v2

    .line 1065
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "com.sec.android.app.camera"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    goto :goto_0

    :sswitch_1
    const-string v1, "com.samsung.android.app.notes"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_2
    const-string v1, "Flashlight"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    goto :goto_0

    :sswitch_3
    const-string v1, "com.samsung.android.dialer"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_4
    const-string v1, "com.sec.android.app.sbrowser"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    goto :goto_0

    :cond_5
    move v0, v3

    goto :goto_0

    :sswitch_5
    const-string v1, "Dnd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_0

    :cond_6
    move v0, v2

    :goto_0
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    .line 1075
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIsTablet:Z

    if-eqz p1, :cond_7

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mHasSPenFeature:Z

    if-eqz p0, :cond_7

    goto :goto_1

    .line 1072
    :pswitch_1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIsTablet:Z

    xor-int/lit8 v2, p0, 0x1

    goto :goto_2

    .line 1078
    :pswitch_2
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIsTablet:Z

    if-eqz p1, :cond_7

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mHasSPenFeature:Z

    if-nez p0, :cond_7

    :goto_1
    :pswitch_3
    move v2, v3

    :cond_7
    :goto_2
    return v2

    :sswitch_data_0
    .sparse-switch
        0x10cfa -> :sswitch_5
        0x263106eb -> :sswitch_4
        0x2a3b2bfd -> :sswitch_3
        0x304d9746 -> :sswitch_2
        0x466f1cd4 -> :sswitch_1
        0x72a8643b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public isKidsMode()Z
    .locals 0

    .line 1166
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIsKidsModeRunning:Z

    return p0
.end method

.method public isKidsModeRunning()Z
    .locals 3

    .line 1170
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.sec.android.app.kidshome"

    const-string v2, "com.sec.android.app.kidshome.apps.ui.AppsActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1172
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1173
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.category.HOME"

    .line 1174
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000

    .line 1175
    invoke-virtual {p0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1179
    :cond_0
    new-instance v1, Landroid/content/ComponentName;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1180
    invoke-virtual {v1, v0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isLeftShortcutForLiveIcon()Z
    .locals 1

    const/4 v0, 0x0

    .line 790
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->isShortcutForLiveIcon(I)Z

    move-result p0

    return p0
.end method

.method public isLeftShortcutForPhone()Z
    .locals 2

    .line 769
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->isSamsungPhonePackage(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isLockTaskMode()Z
    .locals 0

    .line 1162
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIsLocksTaskModeLocked:Z

    return p0
.end method

.method public isLockTaskPermitted(Ljava/lang/String;)Z
    .locals 1

    .line 750
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->isLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 751
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    .line 752
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    .line 753
    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isNoUnlockNeed(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1040
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "com.sec.android.app.camera"

    .line 1041
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->isAllowedNoUnlockNeeded(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNoUnlockNeeded(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1049
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mNoUnlockNeeded:Z

    return p0

    .line 1046
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isNoUnlockNeeded wrong param: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isPanelIconTransitionNeeded(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 712
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object v0, p0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 716
    :cond_0
    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->isPanelIconTransitionNeeded()Z

    move-result p0

    return p0

    .line 713
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IllegalArgument : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isRightShortcutForLiveIcon()Z
    .locals 1

    const/4 v0, 0x1

    .line 794
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->isShortcutForLiveIcon(I)Z

    move-result p0

    return p0
.end method

.method public isRightShortcutForPhone()Z
    .locals 2

    .line 773
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->isSamsungPhonePackage(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isSamsungCameraPackage(I)Z
    .locals 1

    .line 1401
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isSamsungCameraPackage(Landroid/content/ComponentName;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 602
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.sec.android.app.camera"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isSamsungCameraPackageLockTaskPermitted()Z
    .locals 1

    const-string v0, "com.sec.android.app.camera"

    .line 606
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->isLockTaskPermitted(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isSamsungPhonePackage(Landroid/content/ComponentName;)Z
    .locals 1

    if-eqz p1, :cond_0

    .line 610
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.samsung.android.dialer"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 611
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    const-string p1, "com.samsung.android.dialer.DialtactsActivity"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShortcutEnabled(I)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-gt v1, p1, :cond_0

    return v0

    .line 735
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->isShortcutMasterEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->enabled:Z

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public isShortcutForCamera(I)Z
    .locals 1

    .line 947
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->isSamsungCameraPackage(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isShortcutForLiveIcon(I)Z
    .locals 4

    .line 777
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v0, p0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 780
    :cond_0
    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    .line 781
    sget-object p1, Lcom/android/systemui/statusbar/ShortcutManager;->SAMSUNG_LIVE_ICON_PACKAGES:[Ljava/lang/String;

    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 782
    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public isShortcutForPhone(I)Z
    .locals 1

    .line 943
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p1, v0, p1

    iget-object p1, p1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->isSamsungPhonePackage(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public isTaskType(I)Z
    .locals 2

    const/4 v0, 0x0

    if-ltz p1, :cond_2

    const/4 v1, 0x2

    if-lt p1, v1, :cond_0

    goto :goto_0

    .line 1097
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object p0, p0, p1

    iget p0, p0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->shortcutProperty:I

    const/4 p1, 0x1

    if-ne p0, p1, :cond_1

    move v0, p1

    :cond_1
    return v0

    .line 1094
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isTaskType wrong param: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public isTaskTypeEnabled(I)Z
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-ge p1, v0, :cond_1

    .line 701
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object v0, p0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 705
    :cond_0
    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->isEnabled()Z

    move-result p0

    return p0

    .line 702
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IllegalArgument : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public isblendNeeded(I)Z
    .locals 4

    .line 1296
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    invoke-static {v1}, Landroid/content/Intent;->makeMainActivity(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    .line 1297
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    const/16 v3, 0x81

    .line 1296
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1299
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-eqz v2, :cond_4

    .line 1302
    iget-object p1, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1303
    iget-object v3, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v3}, Lcom/android/systemui/util/SettingsHelper;->getActiveIconPackage()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    .line 1304
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->getSamsungAppIconDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    .line 1308
    iget-object p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    const/4 v1, 0x1

    invoke-virtual {v2, p1, v1, v1}, Landroid/content/pm/ActivityInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :cond_2
    if-nez v1, :cond_3

    .line 1312
    iget-object p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v2, p1}, Landroid/content/pm/ActivityInfo;->loadDefaultIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1321
    :cond_3
    iget-object p1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {p0, p1, v1}, Lcom/android/systemui/statusbar/ShortcutManager;->isblendNeeded(Landroid/content/pm/ActivityInfo;Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    return p0

    .line 1316
    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateShortcut : "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " activityInfo is null, resolveInfo is : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ",  return FALSE"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public launchAffordanceForTask(I)V
    .locals 1

    if-ltz p1, :cond_1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    goto :goto_0

    .line 1014
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object p0, p0, p1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->execute()V

    return-void

    .line 1011
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "launchAffordanceForTask wrong param: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onChanged(Landroid/net/Uri;)V
    .locals 2

    const-string v0, "lock_application_shortcut"

    .line 1102
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->updateShortcuts()V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "set_shortcuts_mode"

    .line 1104
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1105
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcutVisibleForMDM:Z

    .line 1106
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isShortcutsVisibleForMDM()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcutVisibleForMDM:Z

    .line 1107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onSystemSettingsChanged oldShortcutVisibleForMDM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mShortcutVisibleForMDM = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcutVisibleForMDM:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcutVisibleForMDM:Z

    if-eq p1, v0, :cond_2

    .line 1112
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->updateShortcuts()V

    goto :goto_0

    :cond_1
    const-string v0, "current_sec_appicon_theme_package"

    .line 1114
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1115
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->updateShortcuts()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDensityOrFontScaleChanged()V
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->keyguard_affordance_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIconSize:I

    .line 863
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->updateShortcuts()V

    return-void
.end method

.method public onSimStateChanged(III)V
    .locals 0

    .line 1132
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIsPermDisabled:Z

    .line 1133
    sget-boolean p2, Lcom/android/systemui/LsRune;->SECURITY_SIM_PERM_DISABLED:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 1134
    invoke-interface {p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitorBase;->isIccBlockedPermanently()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mIsPermDisabled:Z

    if-eq p1, p2, :cond_1

    .line 1136
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->updateShortcuts()V

    :cond_1
    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    .line 1121
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->isLeftShortcutForLiveIcon()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 1122
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->updateShortcutsIcon(I)V

    .line 1125
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->isRightShortcutForLiveIcon()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1126
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/ShortcutManager;->updateShortcutsIcon(I)V

    :cond_1
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    .line 1142
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->updateShortcuts()V

    return-void
.end method

.method public onUserUnlocked()V
    .locals 0

    .line 1147
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/ShortcutManager;->updateShortcuts()V

    return-void
.end method

.method public registerCallback(Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;)V
    .locals 3

    .line 867
    monitor-enter p0

    const/4 v0, 0x0

    .line 868
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 869
    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    const-string v0, "ShortcutManager"

    .line 870
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCallback already registered: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "ShortcutManager"

    .line 876
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shortcut callback registered successfully, callback is : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 880
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ShortcutManager"

    const-string/jumbo v1, "send updateShortcutView to registered callback"

    .line 882
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->sendUpdateWholeShortcutViewToCallback(Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;)V

    .line 886
    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public shouldDisableShortcutWithMdm()Z
    .locals 0

    .line 939
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcutVisibleForMDM:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public unregisterCallback(Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;)V
    .locals 3

    .line 890
    monitor-enter p0

    .line 891
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mCallbacks:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda13;

    invoke-direct {v1, p1}, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/statusbar/ShortcutManager$ShortcutCallback;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ShortcutManager"

    .line 893
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Callback removed successfully , callback was : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x0

    :goto_0
    const/4 v0, 0x2

    if-ge p1, v0, :cond_2

    .line 899
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->isTaskType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 900
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    aget-object v1, v0, p1

    if-eqz v1, :cond_1

    .line 901
    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;->removeListener()V

    .line 902
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mKeyguardBottomAreaShortcutTask:[Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaShortcutTask;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catchall_0
    move-exception p1

    .line 896
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public updateShortcuts()V
    .locals 2

    .line 582
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mUpdateShortcutsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 583
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mUpdateShortcutsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateShortcutsIcon(I)V
    .locals 2

    .line 810
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager;->isTaskType(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 811
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 830
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mShortcuts:[Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/android/systemui/statusbar/ShortcutManager$ShortcutData;->mComponentName:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 831
    iget-object v0, p0, Lcom/android/systemui/statusbar/ShortcutManager;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/ShortcutManager$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/statusbar/ShortcutManager;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
