.class public Lcom/android/keyguard/AdminSecondaryLockScreenController;
.super Ljava/lang/Object;
.source "AdminSecondaryLockScreenController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/AdminSecondaryLockScreenController$Factory;,
        Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;
    }
.end annotation


# instance fields
.field private final mCallback:Landroid/app/admin/IKeyguardCallback;

.field private mClient:Landroid/app/admin/IKeyguardClient;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

.field private final mKeyguardClientDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mParent:Landroid/view/ViewGroup;

.field protected mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mView:Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;


# direct methods
.method public static synthetic $r8$lambda$qAfrlb0g71NK6qpAwXaDSRz-5zk(Lcom/android/keyguard/AdminSecondaryLockScreenController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->lambda$new$0()V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityCallback;Landroid/os/Handler;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/android/keyguard/AdminSecondaryLockScreenController$1;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AdminSecondaryLockScreenController$1;-><init>(Lcom/android/keyguard/AdminSecondaryLockScreenController;)V

    iput-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mConnection:Landroid/content/ServiceConnection;

    .line 81
    new-instance v0, Lcom/android/keyguard/AdminSecondaryLockScreenController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AdminSecondaryLockScreenController$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/AdminSecondaryLockScreenController;)V

    iput-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mKeyguardClientDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 86
    new-instance v0, Lcom/android/keyguard/AdminSecondaryLockScreenController$2;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AdminSecondaryLockScreenController$2;-><init>(Lcom/android/keyguard/AdminSecondaryLockScreenController;)V

    iput-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mCallback:Landroid/app/admin/IKeyguardCallback;

    .line 123
    new-instance v0, Lcom/android/keyguard/AdminSecondaryLockScreenController$3;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AdminSecondaryLockScreenController$3;-><init>(Lcom/android/keyguard/AdminSecondaryLockScreenController;)V

    iput-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 134
    new-instance v0, Lcom/android/keyguard/AdminSecondaryLockScreenController$4;

    invoke-direct {v0, p0}, Lcom/android/keyguard/AdminSecondaryLockScreenController$4;-><init>(Lcom/android/keyguard/AdminSecondaryLockScreenController;)V

    iput-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    .line 166
    iput-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mContext:Landroid/content/Context;

    .line 167
    iput-object p5, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mHandler:Landroid/os/Handler;

    .line 168
    iput-object p2, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mParent:Landroid/view/ViewGroup;

    .line 169
    iput-object p3, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 170
    iput-object p4, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    .line 171
    new-instance p2, Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;

    iget-object p3, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mSurfaceHolderCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-direct {p2, p0, p1, p3}, Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;-><init>(Lcom/android/keyguard/AdminSecondaryLockScreenController;Landroid/content/Context;Landroid/view/SurfaceHolder$Callback;)V

    iput-object p2, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mView:Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityCallback;Landroid/os/Handler;Lcom/android/keyguard/AdminSecondaryLockScreenController$1;)V
    .locals 0

    .line 47
    invoke-direct/range {p0 .. p5}, Lcom/android/keyguard/AdminSecondaryLockScreenController;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardSecurityContainer;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/KeyguardSecurityCallback;Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/keyguard/AdminSecondaryLockScreenController;)Landroid/app/admin/IKeyguardClient;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mClient:Landroid/app/admin/IKeyguardClient;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/keyguard/AdminSecondaryLockScreenController;Landroid/app/admin/IKeyguardClient;)Landroid/app/admin/IKeyguardClient;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mClient:Landroid/app/admin/IKeyguardClient;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/keyguard/AdminSecondaryLockScreenController;)Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mView:Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/keyguard/AdminSecondaryLockScreenController;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->onSurfaceReady()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/keyguard/AdminSecondaryLockScreenController;)Landroid/os/IBinder$DeathRecipient;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mKeyguardClientDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/keyguard/AdminSecondaryLockScreenController;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->dismiss(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/keyguard/AdminSecondaryLockScreenController;)Landroid/os/Handler;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/keyguard/AdminSecondaryLockScreenController;)Lcom/android/keyguard/KeyguardUpdateMonitor;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/keyguard/AdminSecondaryLockScreenController;)Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    return-object p0
.end method

.method private dismiss(I)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 221
    iget-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mView:Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 222
    invoke-virtual {p0}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->hide()V

    .line 223
    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mKeyguardCallback:Lcom/android/keyguard/KeyguardSecurityCallback;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 224
    invoke-interface {p0, v0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityCallback;->dismiss(ZIZ)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$0()V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->hide()V

    const-string p0, "AdminSecondaryLockScreenController"

    const-string v0, "KeyguardClient service died"

    .line 83
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onSurfaceReady()V
    .locals 3

    .line 206
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mView:Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHostToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    iget-object v1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mClient:Landroid/app/admin/IKeyguardClient;

    iget-object v2, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mCallback:Landroid/app/admin/IKeyguardCallback;

    invoke-interface {v1, v0, v2}, Landroid/app/admin/IKeyguardClient;->onCreateKeyguardSurface(Landroid/os/IBinder;Landroid/app/admin/IKeyguardCallback;)V

    goto :goto_0

    .line 211
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->hide()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AdminSecondaryLockScreenController"

    const-string v2, "Error in onCreateKeyguardSurface"

    .line 214
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 215
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/keyguard/AdminSecondaryLockScreenController;->dismiss(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hide()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mView:Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mParent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mView:Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 193
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mClient:Landroid/app/admin/IKeyguardClient;

    if-eqz v0, :cond_1

    .line 195
    :try_start_0
    invoke-interface {v0}, Landroid/app/admin/IKeyguardClient;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mKeyguardClientDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "AdminSecondaryLockScreenController"

    const-string v1, "IKeyguardClient death recipient already released"

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 200
    iput-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mClient:Landroid/app/admin/IKeyguardClient;

    :cond_1
    return-void
.end method

.method public show(Landroid/content/Intent;)V
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mClient:Landroid/app/admin/IKeyguardClient;

    if-nez v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mView:Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->isAttachedToWindow()Z

    move-result p1

    if-nez p1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mParent:Landroid/view/ViewGroup;

    iget-object p0, p0, Lcom/android/keyguard/AdminSecondaryLockScreenController;->mView:Lcom/android/keyguard/AdminSecondaryLockScreenController$AdminSecurityView;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method
