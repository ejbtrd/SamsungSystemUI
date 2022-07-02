.class public Lcom/samsung/systemui/splugins/SPluginManagerImpl;
.super Landroid/content/BroadcastReceiver;
.source "SPluginManagerImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/SPluginManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/systemui/splugins/SPluginManagerImpl$CrashWhilePluginActiveException;,
        Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;,
        Lcom/samsung/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;,
        Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;
    }
.end annotation


# static fields
.field private static final ALL_SPLUGIN_DISABLED:Ljava/lang/String; = "all_splugin_disabled"

.field static final DISABLE_PLUGIN:Ljava/lang/String; = "com.samsung.systemui.action.DISABLE_PLUGIN"

.field static final IGNORE_EXCEPTION:[Ljava/lang/String;

.field private static final MAX_EXCEPTION_COUNT:I = 0x5

.field private static final MAX_EXCEPTION_TIME:I = 0x2bf20

.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lcom/samsung/systemui/splugins/SPluginManager;


# instance fields
.field private final isDebuggable:Z

.field private final mAllowedPlugins:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field private final mClassLoaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mFactory:Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;

.field private mHasOneShot:Z

.field private mListening:Z

.field private mLooper:Landroid/os/Looper;

.field private final mOneShotPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mParentClassLoader:Lcom/samsung/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

.field private final mPluginMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "*>;",
            "Lcom/samsung/systemui/splugins/SPluginInstanceManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mSPluginEnabler:Lcom/samsung/systemui/splugins/SPluginEnabler;

.field private final mSPluginInitializer:Lcom/samsung/systemui/splugins/SPluginInitializer;

.field private final mSPluginPrefs:Lcom/samsung/systemui/splugins/SPluginPrefs;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 69
    const-class v0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->TAG:Ljava/lang/String;

    const-string v0, "com.samsung.systemui.bixby"

    const-string v1, "com.samsung.systemui.bixby2"

    const-string v2, "com.samsung.android.dynamiclock"

    const-string v3, "com.samsung.android.mateagent"

    const-string v4, "com.samsung.android.app.aodservice"

    .line 90
    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->IGNORE_EXCEPTION:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/SPluginInitializer;)V
    .locals 6

    .line 104
    new-instance v2, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;

    invoke-direct {v2}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;-><init>()V

    sget-boolean v3, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 105
    invoke-static {}, Ljava/lang/Thread;->getUncaughtExceptionPreHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v4

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    .line 104
    invoke-direct/range {v0 .. v5}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;-><init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;Lcom/samsung/systemui/splugins/SPluginInitializer;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;ZLjava/lang/Thread$UncaughtExceptionHandler;Lcom/samsung/systemui/splugins/SPluginInitializer;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 110
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 74
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 76
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    .line 77
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    .line 78
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mAllowedPlugins:Landroid/util/ArraySet;

    .line 111
    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mFactory:Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;

    .line 113
    invoke-interface {p5}, Lcom/samsung/systemui/splugins/SPluginInitializer;->getBgLooper()Landroid/os/Looper;

    move-result-object p2

    iput-object p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mLooper:Landroid/os/Looper;

    .line 114
    iput-boolean p3, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->isDebuggable:Z

    .line 115
    invoke-interface {p5, p1}, Lcom/samsung/systemui/splugins/SPluginInitializer;->getAllowedPlugins(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 116
    new-instance p2, Lcom/samsung/systemui/splugins/SPluginPrefs;

    invoke-direct {p2, p1}, Lcom/samsung/systemui/splugins/SPluginPrefs;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mSPluginPrefs:Lcom/samsung/systemui/splugins/SPluginPrefs;

    .line 117
    invoke-interface {p5, p1}, Lcom/samsung/systemui/splugins/SPluginInitializer;->getPluginEnabler(Landroid/content/Context;)Lcom/samsung/systemui/splugins/SPluginEnabler;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mSPluginEnabler:Lcom/samsung/systemui/splugins/SPluginEnabler;

    .line 118
    iput-object p5, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mSPluginInitializer:Lcom/samsung/systemui/splugins/SPluginInitializer;

    .line 120
    new-instance p1, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p4, p2}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginExceptionHandler;-><init>(Lcom/samsung/systemui/splugins/SPluginManagerImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;)V

    .line 122
    invoke-static {p1}, Ljava/lang/Thread;->setUncaughtExceptionPreHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 124
    new-instance p1, Landroid/os/Handler;

    iget-object p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mLooper:Landroid/os/Looper;

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;

    invoke-direct {p2, p0, p5}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$1;-><init>(Lcom/samsung/systemui/splugins/SPluginManagerImpl;Lcom/samsung/systemui/splugins/SPluginInitializer;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    invoke-static {}, Lcom/samsung/systemui/splugins/SPluginVersions;->initVersion()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/content/Context;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 67
    sget-object v0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Landroid/util/ArrayMap;
    .locals 0

    .line 67
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    return-object p0
.end method

.method private clearClassLoader(Ljava/lang/String;)Z
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isPluginLockPackage(Ljava/lang/String;)Z
    .locals 0

    const-string p0, "com.samsung.android.dynamiclock"

    .line 384
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "com.samsung.android.mateagent"

    .line 385
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

.method private startListening()V
    .locals 2

    .line 211
    iget-boolean v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mListening:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 212
    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mListening:Z

    .line 213
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    .line 214
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 215
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 216
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 217
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    if-nez v1, :cond_1

    .line 221
    const-class v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iput-object v1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 222
    invoke-virtual {v1, p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 228
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 229
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private stopListening()V
    .locals 1

    .line 234
    iget-boolean v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mListening:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mHasOneShot:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 235
    iput-boolean v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mListening:Z

    .line 238
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {v0, p0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 240
    iput-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 174
    invoke-virtual {p0, p1, p2, v0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V

    return-void
.end method

.method public addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 179
    invoke-static {p2}, Lcom/samsung/systemui/splugins/SPluginManager$Helper;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;ZZ)V

    return-void
.end method

.method public addPluginListener(Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation

    .line 184
    invoke-static {p2}, Lcom/samsung/systemui/splugins/SPluginManager$Helper;->getAction(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;ZZ)V

    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 189
    invoke-virtual/range {v0 .. v5}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;ZZ)V

    return-void
.end method

.method public addPluginListener(Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;Ljava/lang/Class;ZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "TT;>;",
            "Ljava/lang/Class;",
            "ZZ)V"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mSPluginPrefs:Lcom/samsung/systemui/splugins/SPluginPrefs;

    invoke-virtual {v0, p1}, Lcom/samsung/systemui/splugins/SPluginPrefs;->addAction(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mFactory:Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;

    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mLooper:Landroid/os/Looper;

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    move v6, p5

    move-object v8, p3

    move-object v9, p0

    invoke-virtual/range {v1 .. v9}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;->createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Ljava/lang/Class;Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->loadAll()V

    .line 198
    iget-object p3, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p3, p2, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    invoke-direct {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->startListening()V

    return-void
.end method

.method public dependsOn(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    .line 371
    :goto_0
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 372
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {v2, p1, p2}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->dependsOn(Lcom/samsung/systemui/splugins/SPlugin;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    const/4 p1, 0x1

    new-array p3, p1, [Ljava/lang/Object;

    .line 389
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v0, p3, v1

    const-string v0, "  plugin map (%d):"

    invoke-static {v0, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 390
    iget-object p3, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p3}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/SPluginListener;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v1

    .line 391
    iget-object v3, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    .line 392
    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v2, p1

    const-string v0, "    %s -> %s"

    .line 391
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getAllowedPlugins()[Ljava/lang/String;
    .locals 1

    .line 135
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mAllowedPlugins:Landroid/util/ArraySet;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getClassLoader(Landroid/content/pm/ApplicationInfo;)Ljava/lang/ClassLoader;
    .locals 4

    .line 342
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    return-object p0

    .line 346
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 347
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 348
    invoke-static {v2, v3, p1, v0, v1}, Landroid/app/LoadedApk;->makePaths(Landroid/app/ActivityThread;ZLandroid/content/pm/ApplicationInfo;Ljava/util/List;Ljava/util/List;)V

    .line 349
    new-instance v2, Ldalvik/system/PathClassLoader;

    sget-object v3, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 350
    invoke-static {v3, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 351
    invoke-static {v3, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    .line 352
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->getParentClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v0, v1, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 353
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mClassLoaders:Ljava/util/Map;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {p0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public getOneShotPlugin(Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SPlugin;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 144
    const-class v0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;

    if-eqz v0, :cond_1

    .line 148
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;->action()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 151
    invoke-interface {v0}, Lcom/samsung/systemui/splugins/annotations/ProvidesInterface;->action()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->getOneShotPlugin(Ljava/lang/String;Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SPlugin;

    move-result-object p0

    return-object p0

    .line 149
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t provide an action"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 146
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " doesn\'t provide an interface"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getOneShotPlugin(Ljava/lang/String;Ljava/lang/Class;)Lcom/samsung/systemui/splugins/SPlugin;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/samsung/systemui/splugins/SPlugin;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)TT;"
        }
    .end annotation

    .line 155
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const/4 v5, 0x0

    .line 160
    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mFactory:Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;

    iget-object v3, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mLooper:Landroid/os/Looper;

    move-object v4, p1

    move-object v9, p2

    move-object v10, p0

    invoke-virtual/range {v2 .. v10}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$PluginInstanceManagerFactory;->createPluginInstanceManager(Landroid/content/Context;Ljava/lang/String;Lcom/samsung/systemui/splugins/SPluginListener;ZZLandroid/os/Looper;Ljava/lang/Class;Lcom/samsung/systemui/splugins/SPluginManagerImpl;)Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    move-result-object p2

    .line 162
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mSPluginPrefs:Lcom/samsung/systemui/splugins/SPluginPrefs;

    invoke-virtual {v0, p1}, Lcom/samsung/systemui/splugins/SPluginPrefs;->addAction(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->getPlugin()Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 165
    iget-object p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    iget-object v0, p1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPackage:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    const/4 p2, 0x1

    .line 166
    iput-boolean p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mHasOneShot:Z

    .line 167
    invoke-direct {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->startListening()V

    .line 168
    iget-object p0, p1, Lcom/samsung/systemui/splugins/SPluginInstanceManager$PluginInfo;->mPlugin:Ljava/lang/Object;

    check-cast p0, Lcom/samsung/systemui/splugins/SPlugin;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 156
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Must be called from UI thread"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method getParentClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    .line 362
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mParentClassLoader:Lcom/samsung/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

    if-nez v0, :cond_0

    .line 364
    new-instance v0, Lcom/samsung/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-string v2, "com.android.systemui.plugin"

    invoke-direct {v0, v1, v2}, Lcom/samsung/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mParentClassLoader:Lcom/samsung/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

    .line 367
    :cond_0
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mParentClassLoader:Lcom/samsung/systemui/splugins/SPluginManagerImpl$ClassLoaderFilter;

    return-object p0
.end method

.method public getPluginEnabler()Lcom/samsung/systemui/splugins/SPluginEnabler;
    .locals 0

    .line 139
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mSPluginEnabler:Lcom/samsung/systemui/splugins/SPluginEnabler;

    return-object p0
.end method

.method public handleWtfs()V
    .locals 0

    .line 380
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mSPluginInitializer:Lcom/samsung/systemui/splugins/SPluginInitializer;

    invoke-interface {p0}, Lcom/samsung/systemui/splugins/SPluginInitializer;->handleWtfs()V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 249
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 250
    sget-object v0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", size:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.intent.action.USER_UNLOCKED"

    .line 252
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 254
    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->loadAll()V

    goto :goto_0

    :cond_0
    const-string v0, "com.samsung.systemui.action.DISABLE_PLUGIN"

    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 257
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    .line 259
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 258
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 260
    iget-object p2, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mAllowedPlugins:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->getPluginEnabler()Lcom/samsung/systemui/splugins/SPluginEnabler;

    move-result-object p2

    invoke-interface {p2, p1, v2}, Lcom/samsung/systemui/splugins/SPluginEnabler;->setDisabled(Landroid/content/ComponentName;I)V

    .line 265
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/NotificationManager;

    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    goto/16 :goto_4

    .line 268
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    .line 270
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 272
    iget-object v4, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mOneShotPackages:Landroid/util/ArraySet;

    invoke-virtual {v4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v4, :cond_3

    .line 273
    iget-object v4, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v7, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    .line 274
    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "tuner"

    const-string v9, "drawable"

    .line 273
    invoke-virtual {v4, v8, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 275
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const-string/jumbo v8, "system_notification_accent_color"

    const-string v9, "color"

    const-string v10, "android"

    invoke-virtual {v7, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 279
    :try_start_0
    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 280
    invoke-virtual {v8, v0, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-object v8, v0

    .line 284
    :goto_1
    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    const-string v11, "ALR"

    invoke-direct {v9, v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 286
    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    const-wide/16 v9, 0x0

    .line 287
    invoke-virtual {v4, v9, v10}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 288
    invoke-virtual {v4, v6}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 289
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 290
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v9, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    .line 291
    invoke-virtual {v9, v7}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Plugin \""

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\" has updated"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 292
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    const-string v7, "Restart SysUI for changes to take effect."

    .line 293
    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 294
    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.android.systemui.action.RESTART"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "package://"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 295
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    .line 294
    invoke-virtual {v7, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v7

    .line 296
    iget-object v8, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    invoke-static {v8, v6, v7, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 297
    new-instance v8, Landroid/app/Notification$Action$Builder;

    const/4 v9, 0x0

    const-string v10, "Restart SysUI"

    invoke-direct {v8, v9, v10, v7}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v8}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 298
    iget-object v7, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mContext:Landroid/content/Context;

    const-class v8, Landroid/app/NotificationManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/NotificationManager;

    .line 299
    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 298
    invoke-virtual {v7, v0, v1, v4, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 301
    :cond_3
    invoke-direct {p0, v0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->clearClassLoader(Ljava/lang/String;)Z

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    .line 308
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-eqz v3, :cond_5

    .line 311
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->getPluginEnabler()Lcom/samsung/systemui/splugins/SPluginEnabler;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/samsung/systemui/splugins/SPluginEnabler;->getDisableReason(Landroid/content/ComponentName;)I

    move-result v4

    if-eq v4, v5, :cond_4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_4

    if-ne v4, v2, :cond_5

    .line 315
    :cond_4
    sget-object v2, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Re-enabling previously disabled plugin that has been updated: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 316
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 315
    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    invoke-virtual {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->getPluginEnabler()Lcom/samsung/systemui/splugins/SPluginEnabler;

    move-result-object v2

    invoke-interface {v2, v3}, Lcom/samsung/systemui/splugins/SPluginEnabler;->setEnabled(Landroid/content/ComponentName;)V

    :cond_5
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    .line 321
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 322
    invoke-direct {p0, v0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->isPluginLockPackage(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return-void

    .line 325
    :cond_6
    iget-object p0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 326
    invoke-virtual {p1, v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->onPackageChange(Ljava/lang/String;)V

    goto :goto_2

    .line 329
    :cond_7
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    .line 330
    invoke-direct {p0, v0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->isPluginLockPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "android.intent.extra.DATA_REMOVED"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_8

    .line 331
    invoke-virtual {v1, v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->onPackageUpdated(Ljava/lang/String;)V

    goto :goto_3

    .line 333
    :cond_8
    invoke-virtual {v1, v0}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->onPackageRemoved(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    :goto_4
    return-void
.end method

.method public removePluginListener(Lcom/samsung/systemui/splugins/SPluginListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/systemui/splugins/SPluginListener<",
            "*>;)V"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 204
    :cond_0
    iget-object v0, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/systemui/splugins/SPluginInstanceManager;

    invoke-virtual {p1}, Lcom/samsung/systemui/splugins/SPluginInstanceManager;->destroy()V

    .line 205
    iget-object p1, p0, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->mPluginMap:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    if-nez p1, :cond_1

    .line 206
    invoke-direct {p0}, Lcom/samsung/systemui/splugins/SPluginManagerImpl;->stopListening()V

    :cond_1
    return-void
.end method
