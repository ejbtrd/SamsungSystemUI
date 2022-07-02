.class public Lcom/android/systemui/DejankUtils;
.super Ljava/lang/Object;
.source "DejankUtils.java"


# static fields
.field public static final STRICT_MODE_ENABLED:Z

.field private static final sAnimationCallbackRunnable:Ljava/lang/Runnable;

.field private static sBlockingIpcs:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final sChoreographer:Landroid/view/Choreographer;

.field private static final sHandler:Landroid/os/Handler;

.field private static sImmediate:Z

.field private static final sLock:Ljava/lang/Object;

.field private static final sPendingRunnables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final sProxy:Landroid/os/Binder$ProxyTransactListener;

.field private static sTemporarilyIgnoreStrictMode:Z

.field private static final sWhitelistedFrameworkClasses:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$dD18Ut4xm123khbpYgqgVQ9kPK4()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/DejankUtils;->lambda$static$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 49
    sget-boolean v0, Lcom/android/systemui/uithreadmonitor/BinderCallMonitor;->STRICT_MODE_ENABLED:Z

    sput-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    .line 56
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v1

    sput-object v1, Lcom/android/systemui/DejankUtils;->sChoreographer:Landroid/view/Choreographer;

    .line 57
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    sput-object v1, Lcom/android/systemui/DejankUtils;->sHandler:Landroid/os/Handler;

    .line 58
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    .line 59
    new-instance v1, Ljava/util/Stack;

    invoke-direct {v1}, Ljava/util/Stack;-><init>()V

    sput-object v1, Lcom/android/systemui/DejankUtils;->sBlockingIpcs:Ljava/util/Stack;

    .line 61
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Lcom/android/systemui/DejankUtils;->sWhitelistedFrameworkClasses:Ljava/util/HashSet;

    .line 62
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    sput-object v2, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    .line 63
    new-instance v2, Lcom/android/systemui/DejankUtils$1;

    invoke-direct {v2}, Lcom/android/systemui/DejankUtils$1;-><init>()V

    sput-object v2, Lcom/android/systemui/DejankUtils;->sProxy:Landroid/os/Binder$ProxyTransactListener;

    if-eqz v0, :cond_0

    const-string v0, "android.view.IWindowSession"

    .line 107
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.internal.policy.IKeyguardStateCallback"

    .line 108
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "android.os.IPowerManager"

    .line 109
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.internal.statusbar.IStatusBarService"

    .line 110
    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-static {v2}, Landroid/os/Binder;->setProxyTransactListener(Landroid/os/Binder$ProxyTransactListener;)V

    .line 113
    new-instance v0, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 114
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->detectCustomSlowCalls()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyFlashScreen()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->penaltyLog()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 121
    :cond_0
    sget-object v0, Lcom/android/systemui/DejankUtils$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/DejankUtils$$ExternalSyntheticLambda0;

    sput-object v0, Lcom/android/systemui/DejankUtils;->sAnimationCallbackRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .line 46
    sget-object v0, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Stack;
    .locals 1

    .line 46
    sget-object v0, Lcom/android/systemui/DejankUtils;->sBlockingIpcs:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .line 46
    sget-boolean v0, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    return v0
.end method

.method static synthetic access$300()Ljava/util/HashSet;
    .locals 1

    .line 46
    sget-object v0, Lcom/android/systemui/DejankUtils;->sWhitelistedFrameworkClasses:Ljava/util/HashSet;

    return-object v0
.end method

.method private static synthetic lambda$static$0()V
    .locals 3

    const/4 v0, 0x0

    .line 122
    :goto_0
    sget-object v1, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 123
    sget-object v2, Lcom/android/systemui/DejankUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public static postAfterTraversal(Ljava/lang/Runnable;)V
    .locals 1

    .line 235
    sget-boolean v0, Lcom/android/systemui/DejankUtils;->sImmediate:Z

    if-eqz v0, :cond_0

    .line 236
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    .line 239
    :cond_0
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 240
    sget-object v0, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 241
    invoke-static {}, Lcom/android/systemui/DejankUtils;->postAnimationCallback()V

    return-void
.end method

.method private static postAnimationCallback()V
    .locals 4

    .line 256
    sget-object v0, Lcom/android/systemui/DejankUtils;->sChoreographer:Landroid/view/Choreographer;

    sget-object v1, Lcom/android/systemui/DejankUtils;->sAnimationCallbackRunnable:Ljava/lang/Runnable;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    return-void
.end method

.method public static removeCallbacks(Ljava/lang/Runnable;)V
    .locals 1

    .line 250
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 251
    sget-object v0, Lcom/android/systemui/DejankUtils;->sPendingRunnables:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 252
    sget-object v0, Lcom/android/systemui/DejankUtils;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static setImmediate(Z)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 262
    sput-boolean p0, Lcom/android/systemui/DejankUtils;->sImmediate:Z

    return-void
.end method

.method public static startDetectingBlockingIpcs(Ljava/lang/String;)V
    .locals 2

    .line 159
    sget-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 160
    sget-object v0, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 161
    :try_start_0
    sget-object v1, Lcom/android/systemui/DejankUtils;->sBlockingIpcs:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static stopDetectingBlockingIpcs(Ljava/lang/String;)V
    .locals 2

    .line 174
    sget-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    if-eqz v0, :cond_0

    .line 175
    sget-object v0, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 176
    :try_start_0
    sget-object v1, Lcom/android/systemui/DejankUtils;->sBlockingIpcs:Ljava/util/Stack;

    invoke-virtual {v1, p0}, Ljava/util/Stack;->remove(Ljava/lang/Object;)Z

    .line 177
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public static whitelistIpcs(Ljava/util/function/Supplier;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 209
    sget-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    if-nez v0, :cond_0

    .line 210
    sget-object v0, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 211
    :try_start_0
    sput-boolean v1, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    .line 212
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    .line 215
    :try_start_1
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 217
    monitor-enter v0

    .line 218
    :try_start_2
    sput-boolean v1, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    .line 219
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 217
    sget-object v2, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 218
    :try_start_3
    sput-boolean v1, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    .line 219
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 220
    throw p0

    :catchall_2
    move-exception p0

    .line 219
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 212
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    .line 223
    :cond_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static whitelistIpcs(Ljava/lang/Runnable;)V
    .locals 3

    .line 188
    sget-boolean v0, Lcom/android/systemui/DejankUtils;->STRICT_MODE_ENABLED:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    if-nez v0, :cond_0

    .line 189
    sget-object v0, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 190
    :try_start_0
    sput-boolean v1, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    .line 191
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const/4 v1, 0x0

    .line 193
    :try_start_1
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 195
    monitor-enter v0

    .line 196
    :try_start_2
    sput-boolean v1, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    .line 197
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    .line 195
    sget-object v2, Lcom/android/systemui/DejankUtils;->sLock:Ljava/lang/Object;

    monitor-enter v2

    .line 196
    :try_start_3
    sput-boolean v1, Lcom/android/systemui/DejankUtils;->sTemporarilyIgnoreStrictMode:Z

    .line 197
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 198
    throw p0

    :catchall_2
    move-exception p0

    .line 197
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    .line 191
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p0

    .line 200
    :cond_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method
