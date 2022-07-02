.class public Lcom/android/systemui/knox/DualDarMonitor;
.super Ljava/lang/Object;
.source "DualDarMonitor.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockoutAttemptDeadline:J

.field private mLockoutAttemptTimeout:J

.field private final mknoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;


# direct methods
.method public static synthetic $r8$lambda$x26vpocP5sZ5qH9oAG5tNVPKduI(Lcom/android/systemui/knox/DualDarMonitor;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/knox/DualDarMonitor;->lambda$clearFailedUnlockAttempts$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/knox/KnoxStateMonitorImpl;)V
    .locals 2

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 33
    iput-wide v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptDeadline:J

    .line 34
    iput-wide v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptTimeout:J

    .line 37
    iput-object p1, p0, Lcom/android/systemui/knox/DualDarMonitor;->mknoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitorImpl;

    .line 38
    invoke-virtual {p1}, Lcom/android/systemui/knox/KnoxStateMonitorImpl;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/knox/DualDarMonitor;->mContext:Landroid/content/Context;

    .line 39
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 40
    new-instance p1, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    iget-object v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/knox/DualDarMonitor;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    return-void
.end method

.method private synthetic lambda$clearFailedUnlockAttempts$0(I)V
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->clearFailedUnlockAttempt(I)V

    return-void
.end method

.method private registerCallback()V
    .locals 0

    return-void
.end method


# virtual methods
.method public clearFailedUnlockAttempts(I)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-class v0, Lcom/android/systemui/UiOffloadThread;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/UiOffloadThread;

    new-instance v1, Lcom/android/systemui/knox/DualDarMonitor$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/knox/DualDarMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/knox/DualDarMonitor;I)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/UiOffloadThread;->execute(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public getInnerAuthUserId(I)I
    .locals 2

    .line 79
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v0, :cond_0

    .line 80
    iget-object p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getInnerAuthUserId(I)I

    move-result p0

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getInnerAuthUserId - userId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DualDarMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p0

    :cond_0
    return p1
.end method

.method public getLockoutAttemptDeadline(I)J
    .locals 8

    .line 116
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 117
    iget-wide v2, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptDeadline:J

    cmp-long v4, v2, v0

    if-gez v4, :cond_0

    iget-wide v4, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptTimeout:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    .line 118
    iget-object p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide p0

    return-wide p0

    .line 121
    :cond_0
    iget-wide v4, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptTimeout:J

    add-long/2addr v0, v4

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 122
    iget-object p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternUtils;->getLockoutAttemptDeadline(I)J

    move-result-wide p0

    return-wide p0

    :cond_1
    return-wide v2
.end method

.method public getMainUserId(I)I
    .locals 2

    .line 88
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v0, :cond_0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mDualDarAuthUtils:Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarAuthUtils;->getMainUserId(I)I

    move-result p0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getMainUserId - userId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DualDarMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move p1, p0

    :cond_0
    return p1
.end method

.method public init()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/android/systemui/knox/DualDarMonitor;->registerCallback()V

    return-void
.end method

.method public isDualDarDeviceOwner(I)Z
    .locals 0

    .line 53
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz p0, :cond_0

    .line 54
    invoke-static {p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isOnDeviceOwner(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDualDarInnerLayerUnlocked(I)Z
    .locals 2

    .line 61
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v0, :cond_0

    .line 62
    iget-object p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isInnerLayerUnlocked(I)Z

    move-result p0

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isDualDarInnerLayerUnlocked - userId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DualDarMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSecondaryLockRequired(I)Z
    .locals 2

    .line 70
    sget-boolean v0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz v0, :cond_0

    .line 71
    iget-object p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/dar/ddar/DualDarManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/dar/ddar/DualDarManager;->isSecondaryLockRequired(I)Z

    move-result p0

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSecondaryLockRequired - userId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DualDarMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isVirtualUserId(I)Z
    .locals 2

    .line 97
    sget-boolean p0, Lcom/android/systemui/LsRune;->SECURITY_KNOX_SUPPORT_DUAL_DAR_AT_DO:Z

    if-eqz p0, :cond_0

    .line 98
    invoke-static {p1}, Lcom/samsung/android/knox/dar/VirtualLockUtils;->isVirtualUserId(I)Z

    move-result p0

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isVirtualUserId - userId : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DualDarMonitor"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public setLockoutAttemptDeadline(II)J
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->setLockoutAttemptDeadline(II)J

    move-result-wide v0

    int-to-long p1, p2

    .line 108
    iget-wide v2, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptDeadline:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    iget-wide v2, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptTimeout:J

    cmp-long v2, p1, v2

    if-eqz v2, :cond_1

    .line 109
    :cond_0
    iput-wide v0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptDeadline:J

    .line 110
    iput-wide p1, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptTimeout:J

    .line 112
    :cond_1
    iget-wide p0, p0, Lcom/android/systemui/knox/DualDarMonitor;->mLockoutAttemptDeadline:J

    return-wide p0
.end method
