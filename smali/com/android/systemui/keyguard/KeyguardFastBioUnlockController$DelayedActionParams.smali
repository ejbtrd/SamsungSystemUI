.class Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;
.super Ljava/lang/Object;
.source "KeyguardFastBioUnlockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DelayedActionParams"
.end annotation


# instance fields
.field private mAtTime:J

.field private final mHandler:Landroid/os/Handler;

.field private mIsDiscard:Z

.field private final mMaxDelayMills:J

.field private final mRunnable:Ljava/lang/Runnable;

.field private final mRunnableWrapper:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;J)V
    .locals 2

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 709
    iput-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mAtTime:J

    const/4 v0, 0x0

    .line 710
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mIsDiscard:Z

    .line 711
    new-instance v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams$1;-><init>(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mRunnableWrapper:Ljava/lang/Runnable;

    .line 722
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mHandler:Landroid/os/Handler;

    .line 723
    iput-object p2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mRunnable:Ljava/lang/Runnable;

    .line 724
    iput-wide p3, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mMaxDelayMills:J

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;)Z
    .locals 0

    .line 704
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mIsDiscard:Z

    return p0
.end method

.method static synthetic access$400(Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;)Ljava/lang/Runnable;
    .locals 0

    .line 704
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mRunnable:Ljava/lang/Runnable;

    return-object p0
.end method


# virtual methods
.method cancel()V
    .locals 2

    .line 752
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mRunnableWrapper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 753
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mRunnableWrapper:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method discard()V
    .locals 1

    .line 732
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->cancel()V

    const/4 v0, 0x1

    .line 733
    iput-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mIsDiscard:Z

    return-void
.end method

.method isStarted()Z
    .locals 4

    .line 728
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mIsDiscard:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mRunnableWrapper:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mAtTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xa

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method start(Z)V
    .locals 4

    .line 737
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mIsDiscard:Z

    if-eqz v0, :cond_0

    return-void

    .line 741
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BioUnlock"

    invoke-static {v1, v0}, Lcom/android/systemui/keyguard/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_1

    .line 744
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mMaxDelayMills:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mAtTime:J

    .line 745
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mRunnableWrapper:Ljava/lang/Runnable;

    invoke-virtual {p1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 747
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController$DelayedActionParams;->mRunnableWrapper:Ljava/lang/Runnable;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
