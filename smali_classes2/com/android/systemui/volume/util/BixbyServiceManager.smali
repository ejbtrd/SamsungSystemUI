.class public Lcom/android/systemui/volume/util/BixbyServiceManager;
.super Ljava/lang/Object;
.source "BixbyServiceManager.java"


# static fields
.field private static final VOICE_ENABLE_URI:Landroid/net/Uri;


# instance fields
.field private final mActivityManagerWrapper:Lcom/android/systemui/volume/util/ActivityManagerWrapper;

.field private final mContext:Landroid/content/Context;

.field private mIsBixbyServiceChecked:Z

.field private mIsBixbyServiceOn:Z

.field private mLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private final mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;


# direct methods
.method public static synthetic $r8$lambda$cJcQBM2wgHFzHQ3jXB7USKYUFF4(Lcom/android/systemui/volume/util/BixbyServiceManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;->lambda$getBixbyServiceState$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://com.samsung.android.bixby.agent.settings/bixby_voice_isenable"

    .line 19
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/volume/util/BixbyServiceManager;->VOICE_ENABLE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/basic/util/LogWrapper;Lcom/android/systemui/volume/util/ActivityManagerWrapper;)V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 29
    iput-object p1, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mContext:Landroid/content/Context;

    .line 30
    iput-object p2, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    .line 31
    iput-object p3, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mActivityManagerWrapper:Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    return-void
.end method

.method private checkBixbyServiceEnabled()Z
    .locals 6

    const-string v0, "BixbyServiceManager"

    const/4 v1, 0x0

    .line 51
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    const-wide/16 v3, 0x3

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 52
    iput-boolean v2, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mIsBixbyServiceChecked:Z

    .line 53
    invoke-direct {p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;->isBixbyVoiceEnabled()Z

    move-result v2

    .line 54
    iget-object v3, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return v2

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    const-string v3, "isBixbyServiceOn() : the waiting time elapsed before the lock was acquired!!"

    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iput-boolean v1, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mIsBixbyServiceChecked:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    .line 62
    iget-object p0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mLogWrapper:Lcom/android/systemui/basic/util/LogWrapper;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isBixbyServiceOn() : exception = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/basic/util/LogWrapper;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method

.method private isBixbyVoiceEnabled()Z
    .locals 6

    .line 68
    iget-object p0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/volume/util/BixbyServiceManager;->VOICE_ENABLE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 70
    invoke-interface {p0}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v1, "bixby_voice_isenable"

    .line 71
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 72
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 73
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    const/4 p0, 0x1

    if-ne v1, p0, :cond_0

    move v0, p0

    :cond_0
    return v0
.end method

.method private synthetic lambda$getBixbyServiceState$0()V
    .locals 1

    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mIsBixbyServiceChecked:Z

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;->checkBixbyServiceEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mIsBixbyServiceOn:Z

    return-void
.end method


# virtual methods
.method public getBixbyServiceState()V
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/systemui/volume/util/BixbyServiceManager$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/volume/util/BixbyServiceManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/volume/util/BixbyServiceManager;)V

    const-string p0, "getBixbyServiceState"

    invoke-direct {v0, v1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public isBixbyServiceForeground()Z
    .locals 1

    .line 80
    iget-object p0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mActivityManagerWrapper:Lcom/android/systemui/volume/util/ActivityManagerWrapper;

    const-string v0, "com.samsung.android.bixby.agent"

    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/util/ActivityManagerWrapper;->isForegroundApp(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isBixbyServiceOn()Z
    .locals 1

    .line 42
    iget-boolean v0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mIsBixbyServiceChecked:Z

    if-eqz v0, :cond_0

    .line 43
    iget-boolean p0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mIsBixbyServiceOn:Z

    return p0

    .line 45
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/volume/util/BixbyServiceManager;->checkBixbyServiceEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/volume/util/BixbyServiceManager;->mIsBixbyServiceOn:Z

    return v0
.end method
