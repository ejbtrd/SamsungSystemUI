.class public Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;
.super Ljava/lang/Object;
.source "LightBarTransitionsController.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;
    }
.end annotation


# instance fields
.field private final mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private final mContext:Landroid/content/Context;

.field private mDarkIntensity:F

.field private mDisplayId:I

.field private mDozeAmount:F

.field private final mHandler:Landroid/os/Handler;

.field private mIsPreviousGrayTint:Z

.field private final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field private mNextDarkIntensity:F

.field private mPendingDarkIntensity:F

.field private mShouldSkipApplyTint:Z

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private mTintAnimator:Landroid/animation/ValueAnimator;

.field private mTintChangePending:Z

.field private mTransitionDeferring:Z

.field private final mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

.field private mTransitionDeferringDuration:J

.field private mTransitionDeferringStartTime:J

.field private mTransitionPending:Z


# direct methods
.method public static synthetic $r8$lambda$pd6SrMGfXWDL-JTHKFGFwulTv_8(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;Landroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->lambda$animateIconTint$0(Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 1

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$1;-><init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 76
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mIsPreviousGrayTint:Z

    const/4 v0, 0x1

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mShouldSkipApplyTint:Z

    .line 83
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    .line 84
    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    .line 85
    const-class p2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 86
    const-class p2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 87
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 88
    invoke-virtual {p3, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 89
    invoke-interface {p2, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 90
    invoke-interface {p2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDozeAmount:F

    .line 91
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getDisplayId()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDisplayId:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;Z)Z
    .locals 0

    .line 44
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    return p1
.end method

.method private animateIconTint(FJJ)V
    .locals 3

    .line 200
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mShouldSkipApplyTint:Z

    if-eqz v0, :cond_0

    return-void

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    .line 204
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 206
    :cond_1
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    .line 207
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    .line 208
    new-instance v0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 210
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p4, p5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 211
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 212
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    sget-object p2, Lcom/android/systemui/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 213
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private deferIconTintChange(F)V
    .locals 1

    .line 191
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 195
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    return-void
.end method

.method private dispatchDark()V
    .locals 0

    return-void
.end method

.method private synthetic lambda$animateIconTint$0(Landroid/animation/ValueAnimator;)V
    .locals 0

    .line 209
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconTintInternal(F)V

    return-void
.end method

.method private setIconTintInternal(F)V
    .locals 0

    .line 217
    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    .line 219
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;->applyDarkIntensity(F)V

    return-void
.end method

.method private updateSkipApplyTintForGray()V
    .locals 2

    .line 232
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 233
    invoke-static {}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->getInstance()Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/SamsungGrayBarControlHelper;->needGrayHomeIndicatorIcons()Z

    move-result v0

    .line 234
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mIsPreviousGrayTint:Z

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mShouldSkipApplyTint:Z

    .line 235
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mIsPreviousGrayTint:Z

    :cond_1
    return-void
.end method


# virtual methods
.method public appTransitionCancelled(I)V
    .locals 7

    .line 121
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDisplayId:I

    if-eq v0, p1, :cond_0

    return-void

    .line 124
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    if-eqz p1, :cond_1

    .line 125
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 126
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    const-wide/16 v3, 0x0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    .line 127
    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;->getTintAnimationDuration()I

    move-result p1

    int-to-long v5, p1

    move-object v1, p0

    .line 126
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    .line 129
    :cond_1
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    return-void
.end method

.method public appTransitionPending(IZ)V
    .locals 1

    .line 113
    iget v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDisplayId:I

    if-ne v0, p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isKeyguardGoingAway()Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public appTransitionStarting(IJJZ)V
    .locals 7

    .line 135
    iget p6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDisplayId:I

    if-ne p6, p1, :cond_2

    .line 143
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    const/4 p6, 0x0

    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    if-eqz v0, :cond_0

    .line 144
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    .line 145
    iget v2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    const-wide/16 v0, 0x0

    .line 146
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr p2, v3

    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v3

    move-object v1, p0

    move-wide v5, p4

    .line 145
    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 153
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    .line 154
    iput-wide p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    .line 155
    iput-wide p4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    .line 156
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 157
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mHandler:Landroid/os/Handler;

    iget-object p4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDoneRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, p4, p2, p3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    .line 159
    :cond_1
    :goto_0
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    :cond_2
    return-void
.end method

.method public destroy(Landroid/content/Context;)V
    .locals 0

    .line 96
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/CommandQueue;->removeCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 97
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    const-string p1, "  mTransitionDeferring="

    .line 241
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 242
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    if-eqz p1, :cond_0

    .line 243
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    const-string p1, "   mTransitionDeferringStartTime="

    .line 244
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 245
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatUptime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "   mTransitionDeferringDuration="

    .line 247
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 248
    iget-wide v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    invoke-static {v0, v1, p2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 249
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    :cond_0
    const-string p1, "  mTransitionPending="

    .line 251
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Z)V

    const-string p1, " mTintChangePending="

    .line 252
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintChangePending:Z

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Z)V

    const-string p1, "  mPendingDarkIntensity="

    .line 254
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mPendingDarkIntensity:F

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(F)V

    const-string p1, " mDarkIntensity="

    .line 255
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(F)V

    const-string p1, " mNextDarkIntensity="

    .line 256
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(F)V

    return-void
.end method

.method public getCurrentDarkIntensity()F
    .locals 0

    .line 187
    iget p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    return p0
.end method

.method public onDozeAmountChanged(FF)V
    .locals 0

    .line 264
    iput p2, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDozeAmount:F

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->dispatchDark()V

    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    return-void
.end method

.method public restoreState(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "dark_intensity"

    const/4 v1, 0x0

    .line 107
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;F)F

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconTintInternal(F)V

    .line 108
    iget p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    iput p1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    return-void
.end method

.method public saveState(Landroid/os/Bundle;)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    iget p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    goto :goto_0

    :cond_0
    iget p0, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mDarkIntensity:F

    :goto_0
    const-string v0, "dark_intensity"

    .line 103
    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    return-void
.end method

.method public setIconsDark(ZZ)V
    .locals 8

    .line 164
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->updateSkipApplyTintForGray()V

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez p2, :cond_3

    .line 167
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTintAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 171
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    if-eqz p1, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 173
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->setIconTintInternal(F)V

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 174
    :goto_1
    iput v1, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mNextDarkIntensity:F

    goto :goto_5

    .line 175
    :cond_3
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionPending:Z

    if-eqz v3, :cond_5

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v1, v2

    .line 176
    :goto_2
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->deferIconTintChange(F)V

    goto :goto_5

    .line 177
    :cond_5
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferring:Z

    if-eqz v3, :cond_7

    if-eqz p1, :cond_6

    goto :goto_3

    :cond_6
    move v1, v2

    :goto_3
    const-wide/16 v2, 0x0

    .line 178
    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringStartTime:J

    .line 179
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mTransitionDeferringDuration:J

    move-object v0, p0

    .line 178
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    goto :goto_5

    :cond_7
    if-eqz p1, :cond_8

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    const-wide/16 v2, 0x0

    .line 182
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->mApplier:Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController$DarkIntensityApplier;->getTintAnimationDuration()I

    move-result v4

    int-to-long v4, v4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/phone/LightBarTransitionsController;->animateIconTint(FJJ)V

    :goto_5
    return-void
.end method
