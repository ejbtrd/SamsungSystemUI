.class public Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;
.super Ljava/lang/Object;
.source "KeyguardTouchDymLockInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;
    }
.end annotation


# static fields
.field private static TAG:Ljava/lang/String; = "KeyguardTouchDymLockInjector"


# instance fields
.field private mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

.field private mIsDynamicLockEnabled:Z

.field private mLockStarEnabled:Z

.field private mNonSwipeMode:I

.field private mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field private mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field mPluginLockStateListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

.field private mResetRunnable:Ljava/lang/Runnable;

.field private mViewMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/pluginlock/PluginLockMediator;)V
    .locals 4

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    const/4 v1, 0x0

    .line 23
    iput v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    .line 24
    iput v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mViewMode:I

    .line 27
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    .line 28
    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mResetRunnable:Ljava/lang/Runnable;

    .line 29
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mLockStarEnabled:Z

    .line 31
    new-instance v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$1;-><init>(Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;)V

    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockStateListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    .line 50
    sget-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardTouchDymLockInjector mPluginLockManager: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 52
    iput-object p2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 53
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockStateListener:Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;

    invoke-interface {p2, p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->registerStateCallback(Lcom/android/systemui/pluginlock/listener/PluginLockListener$State;)V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 18
    sget-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;)I
    .locals 0

    .line 18
    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mViewMode:I

    return p0
.end method

.method static synthetic access$102(Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;I)I
    .locals 0

    .line 18
    iput p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mViewMode:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;)Ljava/lang/Runnable;
    .locals 0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mResetRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;Z)Z
    .locals 0

    .line 18
    iput-boolean p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mLockStarEnabled:Z

    return p1
.end method

.method private findDirection(IIFFLandroid/view/MotionEvent;)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    .line 105
    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 106
    invoke-virtual/range {p5 .. p5}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    sub-float v5, v3, v1

    float-to-int v5, v5

    sub-float v6, v4, v2

    float-to-int v6, v6

    int-to-double v7, v5

    const-wide/high16 v9, 0x4000000000000000L    # 2.0

    .line 109
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    int-to-double v11, v6

    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v9

    add-double/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v7

    float-to-double v9, v1

    float-to-double v11, v2

    float-to-double v13, v3

    float-to-double v1, v4

    move-wide v15, v1

    .line 112
    invoke-static/range {v9 .. v16}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->getAngle(DDDD)D

    move-result-wide v1

    move/from16 v3, p1

    int-to-double v3, v3

    cmpl-double v3, v7, v3

    if-lez v3, :cond_4

    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_0

    if-gez v5, :cond_0

    .line 115
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->getDirection(D)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->LEFT:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    and-int/lit8 v3, p2, 0x2

    if-eqz v3, :cond_1

    if-lez v5, :cond_1

    .line 118
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->getDirection(D)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->RIGHT:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    and-int/lit8 v3, p2, 0x4

    if-eqz v3, :cond_2

    if-gez v6, :cond_2

    .line 121
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->getDirection(D)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    move-result-object v3

    sget-object v4, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->UP:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    invoke-virtual {v3, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    and-int/lit8 v3, p2, 0x8

    if-eqz v3, :cond_3

    if-lez v6, :cond_3

    .line 124
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->getDirection(D)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    move-result-object v0

    sget-object v4, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->DOWN:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    invoke-virtual {v0, v4}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 127
    :cond_3
    sget-object v4, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    goto :goto_0

    :cond_4
    and-int/lit8 v0, p2, 0x10

    if-eqz v0, :cond_5

    .line 131
    sget-object v4, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->TAP:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    goto :goto_0

    .line 133
    :cond_5
    sget-object v4, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    :goto_0
    return-object v4
.end method

.method private static getAngle(DDDD)D
    .locals 0

    sub-double/2addr p4, p0

    sub-double/2addr p6, p2

    .line 79
    invoke-static {p6, p7, p4, p5}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p0

    const-wide p2, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method private getDirection(D)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;
    .locals 6

    .line 84
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockSwipe()Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 85
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockSwipe()Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->getNonSwipeModeAngle()I

    move-result p0

    int-to-double v0, p0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4046800000000000L    # 45.0

    :goto_0
    const-wide v2, 0x4066800000000000L    # 180.0

    sub-double/2addr v2, v0

    cmpl-double p0, p1, v2

    if-gez p0, :cond_5

    const-wide v2, -0x3f99800000000000L    # -180.0

    add-double/2addr v2, v0

    cmpg-double p0, p1, v2

    if-gtz p0, :cond_1

    goto :goto_1

    :cond_1
    neg-double v2, v0

    cmpl-double p0, p1, v2

    if-ltz p0, :cond_2

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_2

    .line 91
    sget-object p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->RIGHT:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    return-object p0

    :cond_2
    const-wide v2, -0x3fa9800000000000L    # -90.0

    sub-double v4, v2, v0

    cmpl-double p0, p1, v4

    if-ltz p0, :cond_3

    add-double/2addr v2, v0

    cmpg-double p0, p1, v2

    if-gtz p0, :cond_3

    .line 93
    sget-object p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->UP:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    return-object p0

    :cond_3
    const-wide v2, 0x4056800000000000L    # 90.0

    sub-double v4, v2, v0

    cmpl-double p0, p1, v4

    if-ltz p0, :cond_4

    add-double/2addr v0, v2

    cmpg-double p0, p1, v0

    if-gtz p0, :cond_4

    .line 95
    sget-object p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->DOWN:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    return-object p0

    .line 97
    :cond_4
    sget-object p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->SWIPE:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    return-object p0

    .line 89
    :cond_5
    :goto_1
    sget-object p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;->LEFT:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    return-object p0
.end method


# virtual methods
.method getDirection()Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    return-object p0
.end method

.method initDynamicLock()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicLockEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    .line 142
    sget-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDynamicLock mIsDynamicLockEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 143
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    if-eqz v0, :cond_1

    .line 144
    iput v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    .line 145
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockSwipe()Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockSwipe()Lcom/android/systemui/pluginlock/component/PluginLockSwipe;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginLockSwipe;->getNonSwipeMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    :cond_0
    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 149
    sget-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->TAG:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "mNonSwipeMode: 0x%08x"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, p0, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method isDynamicLockEnabled()Z
    .locals 0

    .line 167
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    return p0
.end method

.method isLockStarEnabled()Z
    .locals 0

    .line 58
    iget-boolean p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mLockStarEnabled:Z

    return p0
.end method

.method isNotLongTapMode()Z
    .locals 0

    .line 154
    iget p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    and-int/lit8 p0, p0, 0x20

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method onFullscreenModeChanged(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 63
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isWindowSecured()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 64
    invoke-interface {p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getSecureMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 65
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    const/4 p1, 0x1

    invoke-interface {p0, p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->updateWindowSecureState(Z)V

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p1}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isWindowSecured()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 69
    sget-object p1, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string/jumbo v2, "unsecured on fullscreen"

    invoke-static {p1, v2, v1}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    iget-object p0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->updateWindowSecureState(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method resetDynamicLock()V
    .locals 4

    .line 158
    sget-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetDynamicLock mIsDynamicLockEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    if-eqz v0, :cond_0

    .line 160
    iput v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    const/4 v0, 0x0

    .line 161
    iput-object v0, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    .line 162
    iput-boolean v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mIsDynamicLockEnabled:Z

    :cond_0
    return-void
.end method

.method public setRestoreRunnable(Ljava/lang/Runnable;)V
    .locals 3

    .line 186
    sget-object v0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRestoreRunnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mResetRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method updateDirection(IFFLandroid/view/MotionEvent;)V
    .locals 6

    .line 179
    iget v2, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mNonSwipeMode:I

    if-nez v2, :cond_0

    return-void

    :cond_0
    move-object v0, p0

    move v1, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    .line 182
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->findDirection(IIFFLandroid/view/MotionEvent;)Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector;->mDirection:Lcom/android/systemui/keyguard/animator/KeyguardTouchDymLockInjector$Direction;

    return-void
.end method
