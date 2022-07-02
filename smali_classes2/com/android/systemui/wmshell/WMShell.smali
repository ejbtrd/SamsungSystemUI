.class public final Lcom/android/systemui/wmshell/WMShell;
.super Lcom/android/systemui/SystemUI;
.source "WMShell.java"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/shared/tracing/ProtoTraceable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/systemui/SystemUI;",
        "Lcom/android/systemui/statusbar/CommandQueue$Callbacks;",
        "Lcom/android/systemui/shared/tracing/ProtoTraceable<",
        "Lcom/android/systemui/tracing/nano/SystemUiTraceProto;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mHideDisplayCutoutOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;"
        }
    .end annotation
.end field

.field private mIsSysUiStateValid:Z

.field private final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mMultiStarManager:Lcom/samsung/android/systemui/multistar/MultiStarManager;

.field private final mMultistarListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

.field private mOneHandedKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mOneHandedOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;"
        }
    .end annotation
.end field

.field private mPipKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mPipOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;"
        }
    .end annotation
.end field

.field private final mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

.field private final mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

.field private final mShellCommandHandler:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mSplitScreenKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mSplitScreenOptional:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;"
        }
    .end annotation
.end field

.field private final mSysUiMainExecutor:Ljava/util/concurrent/Executor;

.field private final mSysUiState:Lcom/android/systemui/model/SysUiState;

.field private final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field private mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# direct methods
.method public static synthetic $r8$lambda$0GlPp1cqdMec6wNfFbut6h0x-Ko(Ljava/io/PrintWriter;Lcom/android/wm/shell/ShellCommandHandler;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/wmshell/WMShell;->lambda$dump$2(Ljava/io/PrintWriter;Lcom/android/wm/shell/ShellCommandHandler;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Bz8Tb2hCgf6YbwGE7jsTXcO2W2Y(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/pip/Pip;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wmshell/WMShell;->lambda$initPip$0(Lcom/android/wm/shell/pip/Pip;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$oek4PTG3AP4l4xRV3uqbuuIJt20(Lcom/android/wm/shell/pip/Pip;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/android/systemui/wmshell/WMShell;->lambda$initPip$1(Lcom/android/wm/shell/pip/Pip;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Ljava/util/Optional;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/navigationbar/NavigationModeController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/model/SysUiState;Lcom/android/systemui/tracing/ProtoTracer;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Ljava/util/concurrent/Executor;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/pip/Pip;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/onehanded/OneHanded;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;",
            ">;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/ShellCommandHandler;",
            ">;",
            "Lcom/android/systemui/statusbar/CommandQueue;",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/navigationbar/NavigationModeController;",
            "Lcom/android/systemui/keyguard/ScreenLifecycle;",
            "Lcom/android/systemui/model/SysUiState;",
            "Lcom/android/systemui/tracing/ProtoTracer;",
            "Lcom/android/systemui/keyguard/WakefulnessLifecycle;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1}, Lcom/android/systemui/SystemUI;-><init>(Landroid/content/Context;)V

    .line 196
    new-instance p1, Lcom/android/systemui/wmshell/WMShell$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/wmshell/WMShell$1;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    iput-object p1, p0, Lcom/android/systemui/wmshell/WMShell;->mMultistarListener:Ljava/util/function/Consumer;

    .line 163
    iput-object p7, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 164
    iput-object p8, p0, Lcom/android/systemui/wmshell/WMShell;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 165
    iput-object p9, p0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 166
    iput-object p10, p0, Lcom/android/systemui/wmshell/WMShell;->mNavigationModeController:Lcom/android/systemui/navigationbar/NavigationModeController;

    .line 167
    iput-object p11, p0, Lcom/android/systemui/wmshell/WMShell;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 168
    iput-object p12, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    .line 169
    iput-object p2, p0, Lcom/android/systemui/wmshell/WMShell;->mPipOptional:Ljava/util/Optional;

    .line 170
    iput-object p3, p0, Lcom/android/systemui/wmshell/WMShell;->mSplitScreenOptional:Ljava/util/Optional;

    .line 171
    iput-object p4, p0, Lcom/android/systemui/wmshell/WMShell;->mOneHandedOptional:Ljava/util/Optional;

    .line 172
    iput-object p5, p0, Lcom/android/systemui/wmshell/WMShell;->mHideDisplayCutoutOptional:Ljava/util/Optional;

    .line 173
    iput-object p14, p0, Lcom/android/systemui/wmshell/WMShell;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 174
    iput-object p13, p0, Lcom/android/systemui/wmshell/WMShell;->mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

    .line 175
    iput-object p6, p0, Lcom/android/systemui/wmshell/WMShell;->mShellCommandHandler:Ljava/util/Optional;

    .line 176
    iput-object p15, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiMainExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wmshell/WMShell;)Lcom/samsung/android/systemui/multistar/MultiStarManager;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mMultiStarManager:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/wmshell/WMShell;)Ljava/util/concurrent/Executor;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiMainExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/wmshell/WMShell;)Lcom/android/systemui/model/SysUiState;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/wmshell/WMShell;)Lcom/android/systemui/statusbar/CommandQueue;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    return-object p0
.end method

.method private handleLoggingCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 5

    .line 442
    invoke-static {}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->getSingleInstance()Lcom/android/wm/shell/protolog/ShellProtoLogImpl;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    .line 443
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_4

    .line 444
    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    const-string v3, "enable-text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    const-string v3, "disable-text"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    add-int/2addr v1, v4

    .line 454
    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 455
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->stopTextLogging([Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p0

    if-nez p0, :cond_1

    .line 457
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Stopping logging on groups: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_1
    return v4

    :cond_2
    add-int/2addr v1, v4

    .line 446
    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 447
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->startTextLogging([Ljava/lang/String;Ljava/io/PrintWriter;)I

    move-result p0

    if-nez p0, :cond_3

    .line 449
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Starting logging on groups: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    return v4

    :cond_4
    return v0
.end method

.method private static synthetic lambda$dump$2(Ljava/io/PrintWriter;Lcom/android/wm/shell/ShellCommandHandler;)V
    .locals 0

    .line 430
    invoke-interface {p1, p0}, Lcom/android/wm/shell/ShellCommandHandler;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method private synthetic lambda$initPip$0(Lcom/android/wm/shell/pip/Pip;I)V
    .locals 1

    const v0, 0xca4c

    and-int/2addr v0, p2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 231
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/wmshell/WMShell;->mIsSysUiStateValid:Z

    .line 232
    invoke-interface {p1, v0, p2}, Lcom/android/wm/shell/pip/Pip;->onSystemUiStateChanged(ZI)V

    return-void
.end method

.method private static synthetic lambda$initPip$1(Lcom/android/wm/shell/pip/Pip;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 0

    .line 255
    invoke-interface {p0}, Lcom/android/wm/shell/pip/Pip;->registerSessionListenerForCurrentUser()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 420
    iget-object p1, p0, Lcom/android/systemui/wmshell/WMShell;->mShellCommandHandler:Ljava/util/Optional;

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/wmshell/WMShell;->mShellCommandHandler:Ljava/util/Optional;

    .line 421
    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/ShellCommandHandler;

    invoke-interface {p1, p3, p2}, Lcom/android/wm/shell/ShellCommandHandler;->handleCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 425
    :cond_0
    invoke-direct {p0, p3, p2}, Lcom/android/systemui/wmshell/WMShell;->handleLoggingCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    .line 429
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mShellCommandHandler:Ljava/util/Optional;

    new-instance p1, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda6;

    invoke-direct {p1, p2}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda6;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, p1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public handleWindowManagerLoggingCommand([Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)V
    .locals 2

    .line 435
    new-instance v0, Ljava/io/PrintWriter;

    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;

    invoke-direct {v1, p2}, Landroid/os/ParcelFileDescriptor$AutoCloseOutputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    invoke-direct {v0, v1}, Ljava/io/PrintWriter;-><init>(Ljava/io/OutputStream;)V

    .line 436
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/wmshell/WMShell;->handleLoggingCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 437
    invoke-virtual {v0}, Ljava/io/PrintWriter;->flush()V

    .line 438
    invoke-virtual {v0}, Ljava/io/PrintWriter;->close()V

    return-void
.end method

.method initHideDisplayCutout(Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 400
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$14;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wmshell/WMShell$14;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/hidedisplaycutout/HideDisplayCutout;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method initOneHanded(Lcom/android/wm/shell/onehanded/OneHanded;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 299
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$7;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShell$7;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/onehanded/OneHanded;->registerTransitionCallback(Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;)V

    .line 325
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$8;

    invoke-direct {v0, p0}, Lcom/android/systemui/wmshell/WMShell$8;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    invoke-interface {p1, v0}, Lcom/android/wm/shell/onehanded/OneHanded;->registerEventCallback(Lcom/android/wm/shell/onehanded/OneHandedEventCallback;)V

    .line 334
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$9;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShell$9;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/onehanded/OneHanded;)V

    iput-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mOneHandedKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 346
    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 348
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$10;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShell$10;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/onehanded/OneHanded;)V

    iput-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 364
    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-virtual {v1, v0}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 366
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mScreenLifecycle:Lcom/android/systemui/keyguard/ScreenLifecycle;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$11;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wmshell/WMShell$11;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/onehanded/OneHanded;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$12;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wmshell/WMShell$12;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/onehanded/OneHanded;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 390
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$13;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wmshell/WMShell$13;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/onehanded/OneHanded;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method initPip(Lcom/android/wm/shell/pip/Pip;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wmshell/WMShell$2;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/pip/Pip;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 215
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$3;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShell$3;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/pip/Pip;)V

    iput-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mPipKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 228
    iget-object v1, p0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 230
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mSysUiState:Lcom/android/systemui/model/SysUiState;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/pip/Pip;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/model/SysUiState;->addCallback(Lcom/android/systemui/model/SysUiState$SysUiStateCallback;)V

    .line 235
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wmshell/WMShell$4;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/pip/Pip;)V

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 253
    const-class p0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/UserInfoController;

    .line 254
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/pip/Pip;)V

    invoke-interface {p0, v0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method initSplitScreen(Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 266
    new-instance v0, Lcom/android/systemui/wmshell/WMShell$5;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/wmshell/WMShell$5;-><init>(Lcom/android/systemui/wmshell/WMShell;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V

    iput-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mSplitScreenKeyguardCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 283
    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method public start()V
    .locals 3

    .line 183
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mProtoTracer:Lcom/android/systemui/tracing/ProtoTracer;

    invoke-virtual {v0, p0}, Lcom/android/systemui/tracing/ProtoTracer;->add(Lcom/android/systemui/shared/tracing/ProtoTraceable;)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 185
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mPipOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 186
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mSplitScreenOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mOneHandedOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 188
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mHideDisplayCutoutOptional:Ljava/util/Optional;

    new-instance v1, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/wmshell/WMShell$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wmshell/WMShell;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 190
    new-instance v0, Lcom/samsung/android/systemui/multistar/MultiStarManager;

    iget-object v1, p0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wmshell/WMShell;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/systemui/multistar/MultiStarManager;-><init>(Landroid/content/Context;Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;)V

    iput-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mMultiStarManager:Lcom/samsung/android/systemui/multistar/MultiStarManager;

    .line 191
    iget-object v0, p0, Lcom/android/systemui/wmshell/WMShell;->mSplitScreenOptional:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;

    iget-object p0, p0, Lcom/android/systemui/wmshell/WMShell;->mMultistarListener:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Lcom/android/wm/shell/legacysplitscreen/LegacySplitScreen;->registerMultiStarListener(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public writeToProto(Lcom/android/systemui/tracing/nano/SystemUiTraceProto;)V
    .locals 0

    .line 410
    iget-object p0, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->wmShell:Lcom/android/wm/shell/nano/WmShellTraceProto;

    if-nez p0, :cond_0

    .line 411
    new-instance p0, Lcom/android/wm/shell/nano/WmShellTraceProto;

    invoke-direct {p0}, Lcom/android/wm/shell/nano/WmShellTraceProto;-><init>()V

    iput-object p0, p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;->wmShell:Lcom/android/wm/shell/nano/WmShellTraceProto;

    :cond_0
    return-void
.end method

.method public bridge synthetic writeToProto(Ljava/lang/Object;)V
    .locals 0

    .line 102
    check-cast p1, Lcom/android/systemui/tracing/nano/SystemUiTraceProto;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wmshell/WMShell;->writeToProto(Lcom/android/systemui/tracing/nano/SystemUiTraceProto;)V

    return-void
.end method
