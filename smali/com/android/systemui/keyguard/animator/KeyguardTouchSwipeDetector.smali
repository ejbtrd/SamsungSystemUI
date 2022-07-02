.class public Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;
.super Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;
.source "KeyguardTouchSwipeDetector.java"


# instance fields
.field private final mDynamicLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

.field private final mSecurityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

.field private mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;


# direct methods
.method public static synthetic $r8$lambda$Cq4h0qwv9XQZtbO1TgKpciuXxt4(Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->lambda$onTouchEvent$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$zdQuHgw0Kts4WGUngIGYc-RDqTk(Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->lambda$onTouchEvent$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    .line 33
    iput-object p3, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mDynamicLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    .line 34
    iput-object p4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mSecurityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->initDimens()V

    return-void
.end method

.method private isLoggableEvent(I)Z
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x5

    if-ne p1, p0, :cond_0

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

.method private synthetic lambda$onTouchEvent$0()V
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    if-eqz p0, :cond_0

    .line 94
    invoke-interface {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->callUserActivity()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onTouchEvent$1()V
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    invoke-interface {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->onUnlockExecuted()V

    return-void
.end method


# virtual methods
.method public init(Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;)V
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 47
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    .line 49
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isUnlockExecuted()Z

    move-result v1

    const-string v2, "KeyguardTouchSwipeDetector"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 50
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->isLoggableEvent(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "onTouchEvent(): Unlock is started already"

    .line 51
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v3

    :cond_1
    const/4 v1, 0x0

    .line 55
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 56
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->isLoggableEvent(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "onTouchEvent(): mIntercepting is false"

    .line 57
    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v3

    .line 62
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mSecurityInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    invoke-virtual {v4}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSecurityInjector;->isBlockedTouchEvent()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 63
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->isLoggableEvent(I)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "isSupportSimPermDisabled!!"

    .line 64
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v5

    .line 69
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getDistance()F

    move-result v4

    float-to-double v6, v4

    if-eqz v0, :cond_14

    const/4 v4, 0x3

    const/4 v8, 0x2

    if-eq v0, v5, :cond_c

    if-eq v0, v8, :cond_a

    if-eq v0, v4, :cond_8

    const/4 v1, 0x5

    if-eq v0, v1, :cond_6

    goto/16 :goto_1

    .line 72
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-lt p1, v8, :cond_7

    move v3, v5

    :cond_7
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setMultiTouch(Z)V

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouchEvent(): ACTION_POINTER_DOWN mIsMultiTouch="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 106
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouchEvent(): ACTION_CANCEL mDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-gt p1, v5, :cond_9

    .line 108
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setMultiTouch(Z)V

    .line 109
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouchEvent(): ACTION_CANCEL mIsMultiTouch="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    :cond_9
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    goto/16 :goto_1

    .line 88
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isTouching()Z

    move-result v0

    if-nez v0, :cond_b

    return v3

    .line 92
    :cond_b
    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->userActivityForMove(Ljava/lang/Runnable;)V

    .line 97
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->updateDistance(Landroid/view/MotionEvent;)F

    .line 99
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mDynamicLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 100
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mDynamicLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    iget v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getTouchDownX()F

    move-result v2

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getTouchDownY()F

    move-result p0

    invoke-virtual {v0, v1, v2, p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->updateDirection(IFFLandroid/view/MotionEvent;)V

    goto/16 :goto_1

    :cond_c
    new-array v0, v4, [Ljava/lang/Object;

    .line 115
    iget v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    .line 116
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v0, v5

    iget v4, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v8

    const-string v4, "onTouchEvent(): ACTION_UP (T/D/R)=%d/%f/%d"

    .line 115
    invoke-static {v2, v4, v0}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setIntercept(Z)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    if-eqz v0, :cond_d

    .line 120
    invoke-interface {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->callUserActivity()V

    .line 124
    :cond_d
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mDynamicLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->isDynamicLockEnabled()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 125
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mDynamicLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->getDirection()Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    move-result-object v1

    .line 128
    :cond_e
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mDynamicLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    if-eqz v0, :cond_f

    if-eqz v1, :cond_f

    sget-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    if-ne v1, v0, :cond_12

    .line 129
    :cond_f
    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->touchSlop:I

    int-to-double v0, v0

    cmpg-double v0, v6, v0

    if-gez v0, :cond_10

    .line 130
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    if-eqz v0, :cond_11

    .line 131
    invoke-interface {v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;->onAffordanceTap()V

    goto :goto_0

    .line 133
    :cond_10
    iget v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->swipeUnlockRadius:I

    int-to-double v0, v0

    cmpg-double v0, v0, v6

    if-gez v0, :cond_11

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->getCanBeUnlock()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mUnlockCallback:Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeCallback;

    if-eqz v0, :cond_11

    .line 135
    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;)V

    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->unlockExecute(Ljava/lang/Runnable;)V

    .line 138
    :cond_11
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->reset()V

    .line 141
    :cond_12
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    .line 142
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-lt p1, v8, :cond_13

    move v3, v5

    :cond_13
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setMultiTouch(Z)V

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onTouchEvent(): ACTION_UP mIsMultiTouch="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->isMultiTouch()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 77
    :cond_14
    invoke-virtual {p0, v3}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setMultiTouch(Z)V

    .line 78
    invoke-virtual {p0, v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouch(Z)V

    .line 79
    invoke-virtual {p0, p1}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setTouchDownPos(Landroid/view/MotionEvent;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->clearDistance()V

    .line 82
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mDynamicLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    if-eqz p0, :cond_15

    .line 83
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->initDynamicLock()V

    :cond_15
    :goto_1
    return v5
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 154
    invoke-virtual {p0, v0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->setUnlockExecuted(Z)V

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->clearDistance()V

    .line 156
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchBase;->clearTouchPos()V

    .line 158
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchSwipeDetector;->mDynamicLockInjector:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;

    if-eqz p0, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->resetDynamicLock()V

    :cond_0
    return-void
.end method
