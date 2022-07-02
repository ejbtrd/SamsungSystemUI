.class public Lcom/android/systemui/util/DesktopManager;
.super Ljava/lang/Object;
.source "DesktopManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/util/DesktopManager$Callback;
    }
.end annotation


# static fields
.field private static final DESKTOP_SETTINGS_URI:Landroid/net/Uri;


# instance fields
.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/util/DesktopManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mCustomDeviceControlsController:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/controller/CustomDeviceControlsController;",
            ">;"
        }
    .end annotation
.end field

.field private mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

.field private mDesktopMode:I

.field private mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

.field private final mDesktopSettingsObserver:Landroid/database/ContentObserver;

.field private mHandler:Landroid/os/Handler;

.field private mIDesktopCallback:Lcom/android/internal/desktop/IDesktopBarCallback;

.field private mIsTouchpadEnabled:Z

.field private final mKeyguardViewControllerLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;"
        }
    .end annotation
.end field

.field private mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mViewMediatorHelperLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.sec.android.desktopmode.uiservice.SettingsProvider/settings"

    .line 52
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/DesktopManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Ldagger/Lazy;Lcom/android/keyguard/KeyguardUpdateMonitor;Ldagger/Lazy;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/android/keyguard/KeyguardViewController;",
            ">;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/controls/controller/CustomDeviceControlsController;",
            ">;)V"
        }
    .end annotation

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x2c6

    .line 71
    iput v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    .line 83
    new-instance v0, Lcom/android/systemui/util/DesktopManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/DesktopManager$1;-><init>(Lcom/android/systemui/util/DesktopManager;)V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 135
    new-instance v0, Lcom/android/systemui/util/DesktopManager$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/DesktopManager$2;-><init>(Lcom/android/systemui/util/DesktopManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mHandler:Landroid/os/Handler;

    .line 176
    new-instance v0, Lcom/android/systemui/util/DesktopManager$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/DesktopManager$3;-><init>(Lcom/android/systemui/util/DesktopManager;)V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mIDesktopCallback:Lcom/android/internal/desktop/IDesktopBarCallback;

    .line 222
    new-instance v0, Lcom/android/systemui/util/DesktopManager$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/DesktopManager$4;-><init>(Lcom/android/systemui/util/DesktopManager;)V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    .line 238
    new-instance v0, Lcom/android/systemui/util/DesktopManager$5;

    iget-object v1, p0, Lcom/android/systemui/util/DesktopManager;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/util/DesktopManager$5;-><init>(Lcom/android/systemui/util/DesktopManager;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopSettingsObserver:Landroid/database/ContentObserver;

    .line 260
    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    .line 261
    iput-object p2, p0, Lcom/android/systemui/util/DesktopManager;->mViewMediatorHelperLazy:Ldagger/Lazy;

    .line 262
    iput-object p3, p0, Lcom/android/systemui/util/DesktopManager;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 263
    iput-object p4, p0, Lcom/android/systemui/util/DesktopManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 264
    sget-boolean p2, Lcom/android/systemui/BasicRune;->CONTROLS_DEX_SUPPORT:Z

    if-eqz p2, :cond_0

    .line 265
    iput-object p5, p0, Lcom/android/systemui/util/DesktopManager;->mCustomDeviceControlsController:Ldagger/Lazy;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 267
    iput-object p2, p0, Lcom/android/systemui/util/DesktopManager;->mCustomDeviceControlsController:Ldagger/Lazy;

    :goto_0
    const-string p2, "desktopmode"

    .line 270
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz p1, :cond_1

    .line 273
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p1, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 274
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iget-object p2, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopModeListener:Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;

    invoke-virtual {p1, p2}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->registerListener(Lcom/samsung/android/desktopmode/SemDesktopModeManager$DesktopModeListener;)V

    .line 275
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p1

    .line 276
    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManager;->updateDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    const/4 p2, 0x0

    .line 277
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopIfNeeded(Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/util/DesktopManager;)Lcom/android/internal/desktop/IDesktopBar;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/util/DesktopManager;Lcom/android/internal/desktop/IDesktopBar;)Lcom/android/internal/desktop/IDesktopBar;
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/util/DesktopManager;)Lcom/android/internal/desktop/IDesktopBarCallback;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mIDesktopCallback:Lcom/android/internal/desktop/IDesktopBarCallback;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/util/DesktopManager;)Ldagger/Lazy;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mCustomDeviceControlsController:Ldagger/Lazy;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/util/DesktopManager;)Z
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->handleNotifyDismissKeyguard()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/util/DesktopManager;)Landroid/os/Handler;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/util/DesktopManager;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManager;->updateDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/util/DesktopManager;Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopIfNeeded(Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/util/DesktopManager;Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManager;->controlDesktopSettingsObserver(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V

    return-void
.end method

.method static synthetic access$1602(Lcom/android/systemui/util/DesktopManager;Z)Z
    .locals 0

    .line 48
    iput-boolean p1, p0, Lcom/android/systemui/util/DesktopManager;->mIsTouchpadEnabled:Z

    return p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/util/DesktopManager;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/util/DesktopManager;->getDesktopSettingsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/util/DesktopManager;)Ldagger/Lazy;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mViewMediatorHelperLazy:Ldagger/Lazy;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/util/DesktopManager;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/util/DesktopManager;)Ljava/util/ArrayList;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/util/DesktopManager;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->stopSystemUIDesktopService()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/util/DesktopManager;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopService()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/util/DesktopManager;)Ldagger/Lazy;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/util/DesktopManager;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->handleNotifyLockout()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/systemui/util/DesktopManager;Z)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/systemui/util/DesktopManager;->handleFaceRunningStateChanged(Z)V

    return-void
.end method

.method private bindDesktopSystemUI()V
    .locals 4

    const-string v0, "DesktopManager"

    const-string v1, "bindDesktopSystemUI"

    .line 355
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.samsung.desktopsystemui"

    const-string v3, "com.samsung.desktopsystemui.SystemUIDesktopService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 358
    iget-object v1, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mServiceConnection:Landroid/content/ServiceConnection;

    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    const v3, 0x2000001

    invoke-virtual {v1, v0, p0, v3, v2}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    return-void
.end method

.method private controlDesktopSettingsObserver(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    .line 415
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result v0

    const/16 v1, 0x32

    if-ne v0, v1, :cond_1

    .line 416
    iget p1, p1, Lcom/samsung/android/desktopmode/SemDesktopModeState;->enabled:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 417
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    sget-object v0, Lcom/android/systemui/util/DesktopManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    const/4 v1, 0x1

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 420
    iget-object p1, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private getCallers()Ljava/lang/String;
    .locals 1

    const/4 p0, 0x3

    const-string v0, " "

    .line 394
    invoke-static {p0, v0}, Landroid/os/Debug;->getCallers(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getDesktopSettingsValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 398
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "key"

    .line 399
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "def"

    .line 400
    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v1, Lcom/android/systemui/util/DesktopManager;->DESKTOP_SETTINGS_URI:Landroid/net/Uri;

    const-string v2, "getSettings"

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 406
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "DesktopManager"

    const-string v0, "Failed to get settings"

    .line 409
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-object p2
.end method

.method private handleFaceRunningStateChanged(Z)V
    .locals 2

    .line 625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFaceRunningStateChanged-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DesktopManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager$Callback;

    .line 627
    invoke-interface {v0, p1}, Lcom/android/systemui/util/DesktopManager$Callback;->onFaceRunningStateChanged(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private handleNotifyDismissKeyguard()Z
    .locals 2

    const-string v0, "DesktopManager"

    const-string v1, "handleNotifyDismissKeyguard"

    .line 608
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/util/DesktopManager$Callback;

    .line 611
    invoke-interface {v1}, Lcom/android/systemui/util/DesktopManager$Callback;->onDismissKeyguard()V

    goto :goto_0

    .line 613
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mViewMediatorHelperLazy:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediatorHelper;->onNotifyDismissKeyguard()Z

    move-result p0

    return p0
.end method

.method private handleNotifyLockout()V
    .locals 2

    const-string v0, "DesktopManager"

    const-string v1, "handleNotifyLockout"

    .line 618
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/DesktopManager$Callback;

    .line 620
    invoke-interface {v0}, Lcom/android/systemui/util/DesktopManager$Callback;->onLockout()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startSystemUIDesktopIfNeeded(Lcom/samsung/android/desktopmode/SemDesktopModeState;Z)V
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x28

    if-eqz p2, :cond_3

    .line 323
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isStandalone()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 324
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 325
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result p2

    const/16 v0, 0x1e

    if-ne p2, v0, :cond_0

    .line 326
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->stopSystemUIDesktopService()V

    goto :goto_0

    .line 327
    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p2

    const/4 v0, 0x4

    if-ne p2, v0, :cond_5

    .line 328
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result p1

    const/16 p2, 0x32

    if-ne p1, p2, :cond_5

    .line 329
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopService()V

    goto :goto_0

    .line 332
    :cond_1
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result p2

    if-ne p2, v1, :cond_5

    .line 333
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p1

    if-ne p1, v0, :cond_2

    .line 334
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->stopSystemUIDesktopService()V

    goto :goto_0

    .line 336
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 337
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopService()V

    goto :goto_0

    .line 343
    :cond_3
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getState()I

    move-result p2

    if-ne p2, v1, :cond_4

    .line 344
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 345
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->stopSystemUIDesktopService()V

    goto :goto_0

    .line 347
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 348
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->startSystemUIDesktopService()V

    :cond_5
    :goto_0
    return-void
.end method

.method private startSystemUIDesktopService()V
    .locals 2

    const-string v0, "DesktopManager"

    const-string/jumbo v1, "startSystemUIDesktopService"

    .line 364
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->getCallers()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->bindDesktopSystemUI()V

    return-void
.end method

.method private stopSystemUIDesktopService()V
    .locals 2

    const-string v0, "DesktopManager"

    const-string/jumbo v1, "stopSystemUIDesktopService"

    .line 370
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    invoke-direct {p0}, Lcom/android/systemui/util/DesktopManager;->getCallers()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 372
    iput-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    .line 373
    iget-object v0, p0, Lcom/android/systemui/util/DesktopManager;->mServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_0

    .line 374
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_0
    return-void
.end method

.method private updateDesktopMode(Lcom/samsung/android/desktopmode/SemDesktopModeState;)V
    .locals 2

    const/16 v0, 0x2c6

    .line 379
    iput v0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    .line 380
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 381
    invoke-virtual {p1}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getDisplayType()I

    move-result p1

    const/16 v0, 0x65

    if-eq p1, v0, :cond_1

    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, 0x2c8

    .line 387
    iput p1, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    goto :goto_0

    :cond_1
    const/16 p1, 0x2c7

    .line 383
    iput p1, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getSemDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mSemDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz p0, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isDesktopBarConnected()Z
    .locals 0

    .line 295
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDesktopMode()Z
    .locals 1

    .line 299
    iget p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    const/16 v0, 0x2c6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDualView()Z
    .locals 1

    .line 307
    iget p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    const/16 v0, 0x2c8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isStandalone()Z
    .locals 1

    .line 303
    iget p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopMode:I

    const/16 v0, 0x2c7

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyBiometricLockoutChanged(ZI)V
    .locals 3

    .line 561
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    .line 563
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyBiometricLockoutChanged-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->notifyBiometricLockoutChanged(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyDismissKeyguard()V
    .locals 2

    .line 428
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string/jumbo v1, "notifyDismissKeyguard"

    .line 430
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0}, Lcom/android/internal/desktop/IDesktopBar;->notifyDismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyFaceAuthenticated(IZ)V
    .locals 2

    .line 512
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string/jumbo v1, "notifyFaceAuthenticated"

    .line 514
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->notifyFaceAuthenticated(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyFaceAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 3

    .line 536
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyFaceAuthenticationError-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->notifyFaceAuthenticationError(ILjava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyFaceAuthenticationFailed()V
    .locals 2

    .line 524
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string/jumbo v1, "notifyFaceAuthenticationError"

    .line 526
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0}, Lcom/android/internal/desktop/IDesktopBar;->notifyFaceAuthenticationFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyFaceAuthenticationRunningStateChange(I)V
    .locals 3

    const-string v0, "DesktopManager"

    .line 548
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyFaceAuthenticationRunningStateChange-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 551
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1}, Lcom/android/internal/desktop/IDesktopBar;->notifyFaceAuthenticationRunningStateChange(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo p1, "notifyFaceAuthenticationRunningStateChange failed"

    .line 553
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public notifyFingerprintAuthFailed()V
    .locals 2

    .line 476
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string/jumbo v1, "notifyFingerprintAuthFailed"

    .line 478
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0}, Lcom/android/internal/desktop/IDesktopBar;->notifyFingerprintAuthFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyFingerprintAuthenticated(II)V
    .locals 2

    .line 464
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string/jumbo v1, "notifyFingerprintAuthenticated"

    .line 466
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->notifyFingerprintAuthenticated(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyFingerprintError(ILjava/lang/String;)V
    .locals 2

    .line 488
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string/jumbo v1, "notifyFingerprintError"

    .line 490
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->notifyFingerprintError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyFingerprintHelp(ILjava/lang/String;)V
    .locals 2

    .line 500
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string/jumbo v1, "notifyFingerprintHelp"

    .line 502
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1, p2}, Lcom/android/internal/desktop/IDesktopBar;->notifyFingerprintHelp(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyKeyguardLockout()V
    .locals 2

    .line 452
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string/jumbo v1, "notifyKeyguardLockout"

    .line 454
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0}, Lcom/android/internal/desktop/IDesktopBar;->notifyLockout()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifyRemoteLockState(Z)V
    .locals 3

    .line 597
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    .line 599
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyRemoteLockState-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1}, Lcom/android/internal/desktop/IDesktopBar;->notifyRemoteLockState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public notifySimStateInitInfo(IIIZ)V
    .locals 4

    const-string v0, " "

    .line 573
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    const-string v1, "DesktopManager"

    .line 575
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifySimStateInitInfo-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0, p1, p2, p3, p4}, Lcom/android/internal/desktop/IDesktopBar;->notifySimStateInitInfo(IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public registerCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public startExitKeyguardAnimationIfNeeded()V
    .locals 2

    .line 440
    invoke-virtual {p0}, Lcom/android/systemui/util/DesktopManager;->isDesktopBarConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "DesktopManager"

    const-string/jumbo v1, "startExitKeyguardAnimationIfNeeded"

    .line 442
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mDesktopBar:Lcom/android/internal/desktop/IDesktopBar;

    invoke-interface {p0}, Lcom/android/internal/desktop/IDesktopBar;->startKeyguardExitAnimationIfNeeded()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public unregisterCallback(Lcom/android/systemui/util/DesktopManager$Callback;)V
    .locals 0

    .line 291
    iget-object p0, p0, Lcom/android/systemui/util/DesktopManager;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
