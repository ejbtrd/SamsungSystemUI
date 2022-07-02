.class Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;
.super Ljava/lang/Object;
.source "KeyguardFastBioUnlockController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Task"
.end annotation


# instance fields
.field private final mRunnable:Ljava/lang/Runnable;

.field private final mStartTime:J

.field private final mTag:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;)V
    .locals 0

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;->mRunnable:Ljava/lang/Runnable;

    .line 765
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;->mTag:Ljava/lang/String;

    .line 766
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;->mStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$1;)V
    .locals 0

    .line 758
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 771
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 772
    iget-wide v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;->mStartTime:J

    sub-long v2, v0, v2

    .line 774
    iget-object v4, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;->mRunnable:Ljava/lang/Runnable;

    invoke-interface {v4}, Ljava/lang/Runnable;->run()V

    .line 776
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    const-wide/16 v0, 0x3

    cmp-long v6, v2, v0

    if-gez v6, :cond_0

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 778
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$Task;->mTag:Ljava/lang/String;

    aput-object p0, v0, v1

    const/4 p0, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p0

    const/4 p0, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, p0

    const-string p0, "BioUnlock"

    const-string v1, "** %s run duration=%dms, delivery=%dms "

    invoke-static {p0, v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method
