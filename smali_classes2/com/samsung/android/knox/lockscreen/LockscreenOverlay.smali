.class public Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
.super Ljava/lang/Object;
.source "LockscreenOverlay.java"


# static fields
.field private static gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

.field private static final mSync:Ljava/lang/Object;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field private final mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 455
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 474
    iput-object p2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    .line 475
    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    .line 476
    invoke-static {p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LSOInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
    .locals 3

    .line 496
    sget-object v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mSync:Ljava/lang/Object;

    monitor-enter v0

    .line 497
    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    .line 498
    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    .line 499
    new-instance v2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    .line 500
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    .line 502
    :cond_0
    sget-object p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 503
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public isConfigured()Z
    .locals 1

    .line 1376
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->isConfigured(I)Z

    move-result p0

    return p0
.end method
