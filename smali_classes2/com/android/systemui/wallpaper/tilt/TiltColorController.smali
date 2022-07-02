.class public Lcom/android/systemui/wallpaper/tilt/TiltColorController;
.super Ljava/lang/Object;
.source "TiltColorController.java"


# static fields
.field private static final BASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Ljava/lang/String; = "TiltColorController"


# instance fields
.field private mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

.field private mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

.field private mAnimateHandler:Landroid/os/Handler;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mColorMatrix:Landroid/graphics/ColorMatrix;

.field private mContext:Landroid/content/Context;

.field private mDrawer:Lcom/android/systemui/wallpaper/tilt/Drawer;

.field private mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

.field private mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

.field private mGyroSensorChangeListener:Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;

.field private mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

.field private mHueLimit:F

.field private mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mIsEnable:Z

.field private mIsGyroAllowed:Z

.field private mMaxRotation:F

.field private mNeedUpdateColorFilter:Z

.field private mPaint:Landroid/graphics/Paint;

.field private mPrevState:Z

.field private mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

.field private mSaturationLimit:F

.field private mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

.field private mTiltHandler:Landroid/os/Handler;

.field private mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

.field private mTiltSettingObserver:Landroid/database/ContentObserver;

.field private mTotalRotation:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 69
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3e2e147b    # 0.17f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->BASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/tilt/Drawer;)V
    .locals 5

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    .line 78
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPrevState:Z

    const/4 v1, 0x0

    .line 84
    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 85
    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 86
    new-instance v1, Lcom/android/systemui/wallpaper/tilt/TiltColorController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController$1;-><init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAnimateHandler:Landroid/os/Handler;

    .line 94
    new-instance v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const/high16 v2, -0x3e100000    # -30.0f

    const-string v3, "hue"

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;-><init>(FLjava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 95
    new-instance v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const v2, 0x3f99999a    # 1.2f

    const-string/jumbo v3, "saturation"

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;-><init>(FLjava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 96
    new-instance v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const/4 v2, 0x0

    const-string v3, "alpha"

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;-><init>(FLjava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 97
    new-instance v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const v3, 0x3f8ccccd    # 1.1f

    const-string/jumbo v4, "scale"

    invoke-direct {v1, v3, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;-><init>(FLjava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const/high16 v1, 0x41f00000    # 30.0f

    .line 98
    iput v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHueLimit:F

    const/high16 v1, 0x3f800000    # 1.0f

    .line 99
    iput v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturationLimit:F

    .line 103
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    .line 112
    iput v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    .line 113
    iput v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mMaxRotation:F

    .line 114
    new-instance v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-direct {v0, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;-><init>(F)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 116
    new-instance v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController$2;-><init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Landroid/os/Handler;

    .line 147
    new-instance v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController$3;-><init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroSensorChangeListener:Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;

    .line 188
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    .line 189
    iput-object p2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mDrawer:Lcom/android/systemui/wallpaper/tilt/Drawer;

    .line 190
    new-instance p2, Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroSensorChangeListener:Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;

    invoke-direct {p2, p1, v0}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/tilt/GyroDetector$GyroSensorChangeListener;)V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    .line 191
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Z)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startEnterAnimationInner(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startTiltAnimation(F)V

    return-void
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/GyroDetector;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Z)Z
    .locals 0

    .line 28
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mNeedUpdateColorFilter:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->refreshTiltSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    return-object p0
.end method

.method static synthetic access$400()Landroid/view/animation/PathInterpolator;
    .locals 1

    .line 28
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->BASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->requestDraw()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Landroid/os/Handler;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)Z
    .locals 0

    .line 28
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    return p0
.end method

.method static synthetic access$802(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    return p1
.end method

.method static synthetic access$816(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)F
    .locals 1

    .line 28
    iget v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    add-float/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)F
    .locals 0

    .line 28
    iget p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mMaxRotation:F

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/wallpaper/tilt/TiltColorController;F)F
    .locals 0

    .line 28
    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mMaxRotation:F

    return p1
.end method

.method private init()V
    .locals 2

    .line 195
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPaint:Landroid/graphics/Paint;

    .line 196
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 197
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->refreshTiltSettings()V

    return-void
.end method

.method private refreshTiltSettings()V
    .locals 5

    .line 489
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isEnableTilt(Landroid/content/Context;)Z

    move-result v0

    .line 490
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "dymlock_suspend_multiwallpaper_switching"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    move v3, v2

    .line 491
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setEnable(Z)V

    .line 492
    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v3, 0x1e

    const-string v4, "lockscreen_wallpaper_tilt_effect_hue_limit"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setHueLimit(F)V

    .line 493
    sget-object v2, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "refreshTiltSettings: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->isEnable()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " isTiltEnabled: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isSuspendByDynamicLockScreen: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " hueLimit:"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->getHueLimit()F

    move-result p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private requestDraw()V
    .locals 2

    .line 497
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 498
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mDrawer:Lcom/android/systemui/wallpaper/tilt/Drawer;

    if-eqz p0, :cond_0

    .line 499
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/tilt/Drawer;->requestDraw()V

    :cond_0
    return-void
.end method

.method private setTiltSettingObserver(Z)V
    .locals 3

    .line 466
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 467
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    .line 468
    new-instance p1, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController$5;-><init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Landroid/database/ContentObserver;

    .line 477
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lockscreen_wallpaper_tilt_effect"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Landroid/database/ContentObserver;

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 478
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "lockscreen_wallpaper_tilt_effect_hue_limit"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 479
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "dymlock_suspend_multiwallpaper_switching"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 480
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->refreshTiltSettings()V

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    .line 481
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Landroid/database/ContentObserver;

    if-eqz p1, :cond_1

    .line 482
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 p1, 0x0

    .line 483
    iput-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltSettingObserver:Landroid/database/ContentObserver;

    .line 485
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private startAlphaAnimation(FJ)V
    .locals 3

    .line 417
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    if-nez v0, :cond_0

    .line 418
    new-instance v0, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 419
    sget-object v1, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->BASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 420
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->addAnimationValue(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 421
    new-instance v0, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;

    invoke-direct {v0}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;-><init>()V

    .line 422
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_Alpha"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->startAnimationProfile(Ljava/lang/String;)V

    .line 423
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 424
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 426
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stopAlphaAnimation()V

    .line 427
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAlphaAnimation: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 430
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {p1, p2, p3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setDuration(J)V

    .line 431
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->start()V

    return-void
.end method

.method private startEnterAnimation(Z)V
    .locals 3

    .line 350
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 352
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startEnterAnimationInner(Z)V

    goto :goto_0

    .line 354
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 357
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 358
    iput p1, v0, Landroid/os/Message;->what:I

    .line 359
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :goto_0
    return-void
.end method

.method private startEnterAnimationInner(Z)V
    .locals 6

    .line 365
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "startEnterAnimation: "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    if-nez v1, :cond_0

    const-string/jumbo v1, "startEnterAnimation: create"

    .line 367
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    new-instance v1, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-direct {v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 369
    sget-object v2, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->BASE_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 370
    new-instance v1, Lcom/android/systemui/wallpaper/tilt/TiltColorController$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController$4;-><init>(Lcom/android/systemui/wallpaper/tilt/TiltColorController;)V

    .line 387
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_Enter"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/tilt/AnimationListenerAdapterProfiler;->startAnimationProfile(Ljava/lang/String;)V

    .line 388
    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 389
    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {v2, v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 390
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->addAnimationValue(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 391
    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->addAnimationValue(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 392
    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->addAnimationValue(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    .line 393
    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->addAnimationValue(Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;)Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    .line 395
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stopAllAnimations()V

    const-wide/16 v1, 0x15e

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    .line 397
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    const-wide/16 v4, 0x3e8

    invoke-virtual {p1, v4, v5}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setDuration(J)V

    .line 398
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {p1, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 399
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p1, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 400
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {p1, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 401
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {p1, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 402
    invoke-direct {p0, v4, v1, v2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startAlphaAnimation(FJ)V

    goto :goto_0

    .line 404
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {p1, v1, v2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->setDuration(J)V

    .line 405
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const/high16 v4, -0x3e100000    # -30.0f

    invoke-virtual {p1, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 406
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const v4, 0x3f99999a    # 1.2f

    invoke-virtual {p1, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 407
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    const v4, 0x3f8ccccd    # 1.1f

    invoke-virtual {p1, v4}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 408
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {p1, v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 409
    invoke-direct {p0, v3, v1, v2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startAlphaAnimation(FJ)V

    .line 411
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->start()V

    .line 412
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->requestDraw()V

    const-string/jumbo p0, "startEnterAnimation: done"

    .line 413
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startTiltAnimation(F)V
    .locals 3

    .line 435
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->setTarget(F)V

    .line 437
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 438
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void
.end method

.method private stopAllAnimations()V
    .locals 0

    .line 460
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stopTilt()V

    .line 461
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stopEnterAnimation()V

    .line 462
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stopAlphaAnimation()V

    return-void
.end method

.method private stopAlphaAnimation()V
    .locals 1

    .line 454
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 455
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlphaAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private stopEnterAnimation()V
    .locals 1

    .line 443
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 444
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mEnterAnimator:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator;->cancel()V

    :cond_0
    return-void
.end method

.method private stopTilt()V
    .locals 1

    .line 449
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->pauseSensor()V

    const/4 v0, 0x0

    .line 450
    iput v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTotalRotation:F

    return-void
.end method

.method private updateColorFilter()V
    .locals 13

    .line 303
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-virtual {v0}, Landroid/graphics/ColorMatrix;->reset()V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 306
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->getHue()F

    move-result v0

    const/high16 v1, -0x3ccc0000    # -180.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x43340000    # 180.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v1

    const v1, 0x40490fdb    # (float)Math.PI

    mul-float/2addr v0, v1

    const/4 v1, 0x0

    cmpl-float v2, v0, v1

    if-eqz v2, :cond_0

    float-to-double v2, v0

    .line 308
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 309
    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3e5a1cac    # 0.213f

    const v4, 0x3f370a3d    # 0.715f

    const v5, 0x3d9374bc    # 0.072f

    const/16 v6, 0x19

    new-array v6, v6, [F

    const/4 v7, 0x0

    const v8, 0x3f4978d5    # 0.787f

    mul-float/2addr v8, v0

    add-float/2addr v8, v3

    const v9, -0x41a5e354    # -0.213f

    mul-float v10, v2, v9

    add-float/2addr v8, v10

    aput v8, v6, v7

    const/4 v7, 0x1

    const v8, -0x40c8f5c3    # -0.715f

    mul-float v10, v0, v8

    add-float/2addr v10, v4

    mul-float/2addr v8, v2

    add-float/2addr v8, v10

    aput v8, v6, v7

    const/4 v7, 0x2

    const v8, -0x426c8b44    # -0.072f

    mul-float/2addr v8, v0

    add-float/2addr v8, v5

    const v11, 0x3f6d9168    # 0.928f

    mul-float v12, v2, v11

    add-float/2addr v12, v8

    aput v12, v6, v7

    const/4 v7, 0x3

    aput v1, v6, v7

    const/4 v7, 0x4

    aput v1, v6, v7

    const/4 v7, 0x5

    mul-float/2addr v9, v0

    add-float/2addr v9, v3

    const v3, 0x3e126e98    # 0.143f

    mul-float/2addr v3, v2

    add-float/2addr v3, v9

    aput v3, v6, v7

    const/4 v3, 0x6

    const v7, 0x3e91eb86    # 0.28500003f

    mul-float/2addr v7, v0

    add-float/2addr v7, v4

    const v12, 0x3e0f5c29    # 0.14f

    mul-float/2addr v12, v2

    add-float/2addr v7, v12

    aput v7, v6, v3

    const/4 v3, 0x7

    const v7, -0x416f1aa0    # -0.283f

    mul-float/2addr v7, v2

    add-float/2addr v8, v7

    aput v8, v6, v3

    const/16 v3, 0x8

    aput v1, v6, v3

    const/16 v3, 0x9

    aput v1, v6, v3

    const/16 v3, 0xa

    const v7, -0x40b6872b    # -0.787f

    mul-float/2addr v7, v2

    add-float/2addr v9, v7

    aput v9, v6, v3

    const/16 v3, 0xb

    mul-float/2addr v4, v2

    add-float/2addr v10, v4

    aput v10, v6, v3

    const/16 v3, 0xc

    mul-float/2addr v0, v11

    add-float/2addr v0, v5

    mul-float/2addr v2, v5

    add-float/2addr v0, v2

    aput v0, v6, v3

    const/16 v0, 0xd

    aput v1, v6, v0

    const/16 v0, 0xe

    aput v1, v6, v0

    const/16 v0, 0xf

    aput v1, v6, v0

    const/16 v0, 0x10

    aput v1, v6, v0

    const/16 v0, 0x11

    aput v1, v6, v0

    const/16 v0, 0x12

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v6, v0

    const/16 v0, 0x13

    aput v1, v6, v0

    const/16 v0, 0x14

    aput v1, v6, v0

    const/16 v0, 0x15

    aput v1, v6, v0

    const/16 v0, 0x16

    aput v1, v6, v0

    const/16 v0, 0x17

    aput v1, v6, v0

    const/16 v0, 0x18

    aput v2, v6, v0

    .line 319
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorMatrix:Landroid/graphics/ColorMatrix;

    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1, v6}, Landroid/graphics/ColorMatrix;-><init>([F)V

    invoke-virtual {v0, v1}, Landroid/graphics/ColorMatrix;->postConcat(Landroid/graphics/ColorMatrix;)V

    .line 322
    :cond_0
    new-instance v0, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v0, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 323
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 324
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPaint:Landroid/graphics/Paint;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result p0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float/2addr p0, v1

    float-to-int p0, p0

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method


# virtual methods
.method public getHue()F
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result p0

    return p0
.end method

.method public getHueLimit()F
    .locals 0

    .line 271
    iget p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHueLimit:F

    return p0
.end method

.method public isEnable()Z
    .locals 0

    .line 201
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    return p0
.end method

.method public pauseSensor()V
    .locals 1

    const/4 v0, 0x0

    .line 257
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    .line 258
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    if-eqz p0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->pause()V

    :cond_0
    return-void
.end method

.method public prepareDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 7

    .line 507
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 508
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    if-eqz v0, :cond_5

    if-eqz p2, :cond_1

    .line 510
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mNeedUpdateColorFilter:Z

    if-eqz v0, :cond_0

    .line 511
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->updateColorFilter()V

    .line 513
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 514
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result v0

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 517
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {p2}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float v2, v0, p2

    if-eqz v2, :cond_4

    .line 520
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v2

    .line 521
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v3

    .line 522
    div-int/lit8 v4, v2, 0x2

    .line 523
    div-int/lit8 v5, v3, 0x2

    int-to-float v4, v4

    int-to-float v5, v5

    .line 525
    invoke-virtual {p1, p2, p2, v4, v5}, Landroid/graphics/Canvas;->scale(FFFF)V

    if-ge v2, v3, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    move v4, v1

    :goto_0
    sub-int v5, v2, v3

    .line 532
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    int-to-float v5, v5

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v5, v6

    .line 533
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float/2addr v2, v3

    .line 534
    invoke-static {v2, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    .line 535
    iget-object v3, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result v3

    mul-float/2addr v2, v3

    neg-float v2, v2

    div-float/2addr v2, p2

    if-eqz v4, :cond_3

    .line 538
    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    .line 540
    :cond_3
    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 546
    :cond_4
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 547
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 548
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltHandler:Landroid/os/Handler;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    :cond_5
    return-void
.end method

.method public resumeSensor()V
    .locals 1

    const/4 v0, 0x1

    .line 264
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    .line 265
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    if-eqz p0, :cond_0

    .line 266
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->resume()V

    :cond_0
    return-void
.end method

.method public setEnable(Z)V
    .locals 3

    .line 205
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isGyroAllowed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsEnable:Z

    if-eqz p1, :cond_0

    .line 208
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    if-eqz p1, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsGyroAllowed:Z

    if-eqz p0, :cond_1

    .line 209
    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->resume()V

    goto :goto_0

    .line 212
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stopAllAnimations()V

    const/4 p1, 0x0

    .line 213
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setHue(F)V

    const/high16 v0, 0x3f800000    # 1.0f

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setSaturation(F)V

    .line 215
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v1, v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->set(F)V

    .line 216
    iget-object v1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mTiltScale:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v1, p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->set(F)V

    .line 217
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mAlpha:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->set(F)V

    .line 218
    iget-object p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 219
    iget-object p0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mGyroDetector:Lcom/android/systemui/wallpaper/tilt/GyroDetector;

    if-eqz p0, :cond_1

    .line 220
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/GyroDetector;->pause()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setHue(F)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHue:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->set(F)V

    const/4 p1, 0x1

    .line 345
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mNeedUpdateColorFilter:Z

    :cond_0
    return-void
.end method

.method public setHueLimit(F)V
    .locals 5

    const/high16 v0, 0x43340000    # 180.0f

    cmpl-float v1, p1, v0

    const/high16 v2, 0x41f00000    # 30.0f

    const-string v3, ". set to "

    if-lez v1, :cond_0

    .line 276
    sget-object v1, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHueLimit: too big."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 279
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setHueLimit: too small."

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p1, v2

    .line 282
    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setHueLimit: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    iput p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mHueLimit:F

    return-void
.end method

.method public setSaturation(F)V
    .locals 1

    .line 332
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->get()F

    move-result v0

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mSaturation:Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/tilt/SequentialAnimator$AnimatedValue;->set(F)V

    const/4 p1, 0x1

    .line 334
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mNeedUpdateColorFilter:Z

    :cond_0
    return-void
.end method

.method public start()V
    .locals 2

    .line 226
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 227
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setTiltSettingObserver(Z)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 231
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 232
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setTiltSettingObserver(Z)V

    .line 233
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stopAllAnimations()V

    return-void
.end method

.method public updateDraw(Z)Z
    .locals 3

    .line 239
    sget-object v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " prev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPrevState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->isEnable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 243
    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startEnterAnimation(Z)V

    goto :goto_0

    .line 245
    :cond_0
    const-class v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 246
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {v0}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isFastWakeAndUnlockMode()Z

    move-result v0

    if-nez v0, :cond_2

    .line 247
    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->startEnterAnimation(Z)V

    goto :goto_0

    :cond_1
    move v1, v2

    .line 252
    :cond_2
    :goto_0
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->mPrevState:Z

    return v1
.end method
