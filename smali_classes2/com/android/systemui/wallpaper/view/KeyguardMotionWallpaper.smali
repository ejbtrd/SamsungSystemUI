.class public Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;
.super Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;
.source "KeyguardMotionWallpaper.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;
    }
.end annotation


# instance fields
.field private mAlphaAnimator:Landroid/animation/ValueAnimator;

.field private mAngularSum:F

.field private mAnimatedAngularSum:F

.field private mBlendingPaint:Landroid/graphics/Paint;

.field private mContext:Landroid/content/Context;

.field private mCroppedScale:F

.field private mCurrentWhich:I

.field private mDeltaOfAngularSum:F

.field private mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

.field private final mHandler:Landroid/os/Handler;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mInterruptedGyro:Landroid/hardware/Sensor;

.field private mIsSensorRegistered:Z

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLoader:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field private mMotionBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mOldBitmapList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mPkgContext:Landroid/content/Context;

.field private mPkgName:Ljava/lang/String;

.field private mPrevAngularSum:F

.field private mPrevAnimatedAngularSum:F

.field private mPrevStartAngularSum:F

.field private mRangeOfRotation:I

.field private mRotation:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mTimestamp:F

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

.field private mXmlName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v9, p6

    .line 125
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p8

    .line 132
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Z)V

    const/4 v0, 0x0

    .line 105
    iput v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mRotation:I

    .line 110
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mOldBitmapList:Ljava/util/ArrayList;

    .line 113
    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    const/4 v1, 0x2

    .line 115
    iput v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mCurrentWhich:I

    .line 751
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$2;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$2;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;Landroid/os/Looper;)V

    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    .line 779
    new-instance v1, Lcom/samsung/android/view/animation/SineOut33;

    invoke-direct {v1}, Lcom/samsung/android/view/animation/SineOut33;-><init>()V

    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x0

    .line 833
    iput v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAngularSum:F

    .line 834
    iput v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAngularSum:F

    .line 835
    iput v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    .line 134
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 135
    iput-object v8, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    move/from16 v0, p9

    .line 136
    iput v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mCurrentWhich:I

    const-string/jumbo v0, "wallpaper"

    .line 137
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 138
    iget-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1002b

    .line 139
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mInterruptedGyro:Landroid/hardware/Sensor;

    .line 140
    new-instance v0, Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;-><init>(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)V

    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 144
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 145
    iget-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 146
    iget-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setDither(Z)V

    move-object v0, p6

    .line 148
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    move-object/from16 v0, p7

    .line 149
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    move-object v0, p3

    .line 151
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 152
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->updateWallpaper()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->parseXml()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;[F)V
    .locals 0

    .line 68
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->handleInvalidate([F)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    return p0
.end method

.method static synthetic access$1402(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;F)F
    .locals 0

    .line 68
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    return p1
.end method

.method static synthetic access$1500(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)F
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    return p0
.end method

.method static synthetic access$1502(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;F)F
    .locals 0

    .line 68
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    return p1
.end method

.method static synthetic access$1602(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;Landroid/animation/ValueAnimator;)Landroid/animation/ValueAnimator;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)I
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mRangeOfRotation:I

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->collectOldBitmap()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->loadWallpapers()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Lcom/android/systemui/wallpaper/WallpaperResultCallback;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->init()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)Ljava/util/ArrayList;
    .locals 0

    .line 68
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mOldBitmapList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;Ljava/util/ArrayList;Z)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->clearData(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private clearData(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 683
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->clearData(Ljava/util/ArrayList;Z)V

    return-void
.end method

.method private clearData(Ljava/util/ArrayList;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;",
            ">;Z)V"
        }
    .end annotation

    .line 687
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v1, :cond_0

    const-string v1, "(Preview)"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "clearData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardMotionWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    const/4 v2, 0x0

    .line 690
    invoke-virtual {v1, v2}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setBitmapLoaded(Z)V

    const/4 v3, 0x1

    if-eqz p2, :cond_4

    .line 692
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 693
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    move v5, v3

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 694
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eq v6, v5, :cond_2

    goto :goto_2

    :cond_2
    move v5, v2

    goto :goto_3

    :cond_3
    move v3, v5

    :cond_4
    if-eqz v3, :cond_1

    .line 699
    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->recycle()V

    goto :goto_1

    .line 702
    :cond_5
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private collectOldBitmap()V
    .locals 3

    .line 288
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 289
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v2, :cond_0

    const-string v2, "(Preview)"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "collectOldBitmap: size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardMotionWallpaper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v0, :cond_1

    .line 292
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 293
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mOldBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getMatrix(Landroid/graphics/Bitmap;)Landroid/graphics/Matrix;
    .locals 13

    .line 435
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v1, :cond_0

    const-string v1, "(Preview)"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "getMatrix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardMotionWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-eqz p1, :cond_a

    .line 436
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_5

    .line 440
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    .line 441
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-float v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float v5, v3, v4

    int-to-float v6, p1

    div-float v7, v6, v4

    .line 447
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->getMetricsWidth()I

    move-result v8

    .line 448
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->getMetricsHeight()I

    move-result v9

    mul-int v10, v2, v9

    mul-int v11, v8, p1

    const/high16 v12, 0x3f800000    # 1.0f

    if-le v10, v11, :cond_2

    int-to-float v3, v9

    div-float/2addr v3, v6

    mul-float/2addr v3, v12

    goto :goto_1

    :cond_2
    int-to-float v6, v8

    div-float/2addr v6, v3

    mul-float v3, v6, v12

    .line 456
    :goto_1
    iput v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mCroppedScale:F

    int-to-float p0, v8

    mul-float/2addr p0, v12

    div-float/2addr p0, v3

    int-to-float v6, v9

    mul-float/2addr v6, v12

    div-float/2addr v6, v3

    div-float v10, p0, v4

    sub-float/2addr v5, v10

    const/4 v10, 0x0

    cmpg-float v11, v5, v10

    if-gez v11, :cond_3

    move v5, v10

    :cond_3
    div-float v4, v6, v4

    sub-float/2addr v7, v4

    cmpg-float v4, v7, v10

    if-gez v4, :cond_4

    goto :goto_2

    :cond_4
    move v10, v7

    .line 469
    :goto_2
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 470
    invoke-virtual {v4, v3, v3}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 471
    invoke-virtual {v4, v5, v10}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 485
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-nez v3, :cond_5

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-nez v3, :cond_5

    .line 486
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ne v2, v3, :cond_5

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ne p1, v3, :cond_5

    const-string p0, "It doesn\'t need to crop bitmap"

    .line 487
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 489
    :cond_5
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result v3

    const/4 v7, 0x1

    if-lt v3, v7, :cond_9

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-lt v3, v7, :cond_9

    if-lt v8, v7, :cond_9

    if-ge v9, v7, :cond_6

    goto :goto_4

    .line 492
    :cond_6
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v3

    add-int/2addr p0, v3

    if-gt p0, v2, :cond_8

    .line 493
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v2

    add-int/2addr p0, v2

    if-le p0, p1, :cond_7

    goto :goto_3

    :cond_7
    return-object v4

    :cond_8
    :goto_3
    const-string p0, "Calculated crop size error"

    .line 494
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_9
    :goto_4
    const-string p0, "Math.round(width) < 1 || Math.round(height) < 1 || mMetricsWidth < 1 || mMetricsHeight < 1"

    .line 490
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_5
    return-object v0
.end method

.method private handleInvalidate([F)V
    .locals 4

    const/4 v0, 0x0

    .line 763
    aget v1, p1, v0

    const/4 v2, 0x1

    .line 764
    aget p1, p1, v2

    .line 765
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v3, :cond_0

    .line 766
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 767
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 768
    invoke-direct {p0, v1, p1, v2}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V

    goto :goto_0

    .line 771
    :cond_0
    invoke-direct {p0, v1, p1, v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->startAlphaAnimator(FFZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private init()V
    .locals 12

    .line 502
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    const-string v2, "(Preview)"

    const-string v3, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "init()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardMotionWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 503
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-nez v0, :cond_2

    .line 504
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "mMotionBitmapList == null || mMotionBitmapList.size() == 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 507
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 508
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getBitmapLoaded()Z

    move-result v4

    if-nez v4, :cond_3

    .line 509
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "bitmapLoaded == false"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 515
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    invoke-static {v0, p0, v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isStatusBarHeight(Landroid/content/Context;Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    .line 516
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLastWidth:I

    .line 517
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLastHeight:I

    return-void

    .line 521
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    sub-int/2addr v0, v4

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mViewWidth:I

    .line 522
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    sub-int/2addr v0, v4

    iget v4, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    sub-int/2addr v0, v4

    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mViewHeight:I

    .line 523
    iget v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mViewWidth:I

    if-eqz v4, :cond_10

    if-nez v0, :cond_7

    goto/16 :goto_8

    .line 528
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1e

    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mRangeOfRotation:I

    .line 529
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v4, :cond_8

    move-object v4, v2

    goto :goto_3

    :cond_8
    move-object v4, v3

    :goto_3
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "mRangeOfRotation = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mRangeOfRotation:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 532
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAngularSum:F

    .line 533
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAngularSum:F

    .line 534
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    .line 535
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mTimestamp:F

    .line 537
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 538
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_b

    .line 539
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_6

    .line 543
    :cond_9
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 544
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 548
    iget v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mViewHeight:I

    mul-int v8, v5, v7

    iget v9, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mViewWidth:I

    mul-int v10, v9, v6

    const/high16 v11, 0x3f800000    # 1.0f

    if-le v8, v10, :cond_a

    int-to-float v8, v7

    int-to-float v10, v6

    goto :goto_5

    :cond_a
    int-to-float v8, v9

    int-to-float v10, v5

    :goto_5
    div-float/2addr v8, v10

    mul-float/2addr v8, v11

    int-to-float v9, v9

    int-to-float v5, v5

    mul-float/2addr v5, v8

    sub-float/2addr v9, v5

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float/2addr v9, v5

    int-to-float v7, v7

    int-to-float v6, v6

    mul-float/2addr v6, v8

    sub-float/2addr v7, v6

    mul-float/2addr v7, v5

    .line 556
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v5

    .line 557
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 560
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    invoke-virtual {v7, v8, v8}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 561
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v7

    int-to-float v5, v5

    int-to-float v6, v6

    invoke-virtual {v7, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 562
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->init()V

    goto :goto_4

    .line 540
    :cond_b
    :goto_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v4, :cond_c

    goto :goto_7

    :cond_c
    move-object v2, v3

    :goto_7
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "bitmap is wrong."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    :cond_d
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    .line 566
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    if-eqz v0, :cond_f

    .line 567
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz v1, :cond_e

    .line 568
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onDrawFinished()V

    .line 570
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onPreviewReady()V

    :cond_f
    return-void

    .line 524
    :cond_10
    :goto_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz p0, :cond_11

    goto :goto_9

    :cond_11
    move-object v2, v3

    :goto_9
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "mViewWidth == 0 || mViewHeight == 0"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private loadWallpapers()V
    .locals 12

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    const-string v2, "(Preview)"

    const-string v3, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "BITMAP LOAD START "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardMotionWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 237
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getType()I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_4

    .line 239
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getPath()Ljava/lang/String;

    move-result-object v8

    const-string v9, "drawable"

    iget-object v10, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v5, v8, v9, v10}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_1

    .line 242
    iget-object v8, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgContext:Landroid/content/Context;

    invoke-virtual {v8, v5}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    check-cast v5, Landroid/graphics/drawable/BitmapDrawable;

    .line 243
    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 244
    :try_start_1
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v6

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setImage(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_5

    :catch_0
    move-exception v6

    goto :goto_3

    .line 246
    :cond_1
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v7, :cond_2

    move-object v7, v2

    goto :goto_2

    :cond_2
    move-object v7, v3

    :goto_2
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "Fail to get drawable"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_6

    :catch_1
    move-exception v5

    move-object v11, v6

    move-object v6, v5

    move-object v5, v11

    .line 249
    :goto_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v8, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v8, :cond_3

    move-object v8, v2

    goto :goto_4

    :cond_3
    move-object v8, v3

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "loadDrawable exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    move-object v6, v5

    goto :goto_6

    .line 251
    :cond_4
    invoke-static {v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->access$000(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;)I

    move-result v5

    if-ne v5, v7, :cond_6

    .line 253
    new-instance v5, Ljava/io/File;

    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/io/File;->canRead()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 258
    :try_start_3
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    .line 259
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v8}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 260
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v5

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setImage(Landroid/graphics/Bitmap;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_6

    :catch_2
    move-exception p0

    .line 262
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    return-void

    .line 268
    :cond_6
    invoke-static {v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->access$000(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;)I

    move-result v5

    const/4 v7, 0x2

    if-ne v5, v7, :cond_7

    .line 270
    invoke-virtual {v4, v6}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setImage(Landroid/graphics/Bitmap;)V

    .line 273
    :cond_7
    :goto_6
    invoke-direct {p0, v6}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->getMatrix(Landroid/graphics/Bitmap;)Landroid/graphics/Matrix;

    move-result-object v5

    if-eqz v5, :cond_9

    .line 275
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v7, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v7, :cond_8

    move-object v7, v2

    goto :goto_7

    :cond_8
    move-object v7, v3

    :goto_7
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "loadWallpapers: matrix "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    invoke-virtual {v4, v5}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setMatrix(Landroid/graphics/Matrix;)V

    .line 279
    :cond_9
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    .line 281
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x1e

    .line 279
    invoke-virtual {v4, v5}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setStayPoint(I)V

    .line 283
    invoke-virtual {v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->init()V

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method private parseXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_6

    if-eqz v0, :cond_4

    const/4 v3, 0x2

    const-string v4, "layer"

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    goto :goto_1

    .line 400
    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 401
    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    .line 402
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 388
    :cond_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 389
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 390
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)V

    move-object v2, v0

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_5

    const-string/jumbo v3, "type"

    .line 392
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 393
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setType(I)V

    goto :goto_1

    :cond_3
    const-string v3, "id_path_image"

    .line 394
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 395
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setPath(Ljava/lang/String;)V

    goto :goto_1

    .line 384
    :cond_4
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 385
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v0

    .line 405
    :cond_5
    :goto_1
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_6
    return-object v1
.end method

.method private parseXml()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;",
            ">;"
        }
    .end annotation

    const-string v0, "(Preview)"

    const-string v1, ""

    const-string v2, "KeyguardMotionWallpaper"

    const/4 v3, 0x0

    .line 199
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 200
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    .line 202
    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string/jumbo v5, "motion"

    if-eqz v4, :cond_0

    .line 204
    :try_start_1
    iput-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    goto :goto_0

    .line 207
    :cond_0
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mCurrentWhich:I

    invoke-virtual {v4, v6}, Landroid/app/WallpaperManager;->getMotionWallpaperPkgName(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    .line 208
    iput-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 211
    :goto_0
    :try_start_2
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    const/4 v6, 0x3

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v4

    iput-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgContext:Landroid/content/Context;
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    .line 214
    :catch_0
    :try_start_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v5, :cond_1

    move-object v5, v0

    goto :goto_1

    :cond_1
    move-object v5, v1

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "NameNotFoundException mPkgName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    const-string v6, "layout"

    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 218
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v6, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v6, :cond_2

    move-object v6, v0

    goto :goto_3

    :cond_2
    move-object v6, v1

    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "pkg name ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") xml name("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v4, :cond_4

    .line 220
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v5, :cond_3

    goto :goto_4

    :cond_3
    move-object v0, v1

    :goto_4
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "ERROR - chosen xml name("

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mXmlName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ") resource is not exist !!!"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v3

    .line 224
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    .line 225
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->parseXML(Lorg/xmlpull/v1/XmlPullParser;)Ljava/util/ArrayList;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 227
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v3
.end method

.method private registerSensor()V
    .locals 3

    const-string v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "registerSensor"

    .line 740
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mInterruptedGyro:Landroid/hardware/Sensor;

    const/4 v2, 0x1

    invoke-virtual {v0, p0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 742
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    return-void
.end method

.method private startAlphaAnimator(FFZ)V
    .locals 2

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "mAlphaAnimator starts"

    .line 783
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_0

    .line 789
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    .line 790
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    goto :goto_0

    .line 792
    :cond_0
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAnimatedAngularSum:F

    .line 793
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevStartAngularSum:F

    :goto_0
    const/4 p1, 0x2

    new-array p1, p1, [F

    .line 796
    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    .line 797
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAnimatedAngularSum:F

    sub-float p1, p2, p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p3, 0x41800000    # 16.0f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    .line 798
    iget-object p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    int-to-long v0, p1

    invoke-virtual {p3, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 799
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    iget-object p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 800
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p3, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;

    invoke-direct {p3, p0, p2}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$3;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;F)V

    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 824
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    new-instance p2, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$4;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 830
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private unregisterSensor()V
    .locals 2

    const-string v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "unregisterSensor"

    .line 746
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 748
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    return-void
.end method

.method private updateWallpaper()V
    .locals 5

    .line 300
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLoader:Landroid/os/AsyncTask;

    const-string v1, "(Preview)"

    const-string v2, ""

    const-string v3, "KeyguardMotionWallpaper"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v4, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " cancel loader = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLoader:Landroid/os/AsyncTask;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 303
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLoader:Landroid/os/AsyncTask;

    .line 306
    :cond_1
    new-instance v0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLoader:Landroid/os/AsyncTask;

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v4, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    move-object v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "updateWallpaper: start load = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLoader:Landroid/os/AsyncTask;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLoader:Landroid/os/AsyncTask;

    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string v0, "KeyguardMotionWallpaper"

    const-string v1, "cleanUp"

    .line 675
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mOldBitmapList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->clearData(Ljava/util/ArrayList;)V

    .line 677
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->clearData(Ljava/util/ArrayList;)V

    const/4 v0, 0x3

    .line 678
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    return-void
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "KeyguardMotionWallpaper"

    .line 182
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getWallpaperBitmap() hw accelerated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isHardwareAccelerated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 184
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 185
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 188
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 190
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 192
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onBackDropLayoutChange()V
    .locals 3

    .line 1120
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onBackDropLayoutChange()V

    .line 1121
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 1122
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged: prev = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mRotation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardMotionWallpaper"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mRotation:I

    .line 1124
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_ROTATABLE_WALLPAPER:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-nez v0, :cond_0

    .line 1125
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1111
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConfigurationChanged: prev = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", isSub:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isSubDisplay()Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardMotionWallpaper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_ROTATABLE_WALLPAPER:Z

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isSubDisplay()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-nez p1, :cond_1

    .line 1114
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    :cond_1
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 915
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onDetachedFromWindow()V

    .line 916
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-eqz v0, :cond_0

    .line 917
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->unregisterSensor()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    const-string v2, "(Preview)"

    const-string v3, ""

    if-eqz v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onDraw()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardMotionWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v0, :cond_c

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_8

    .line 581
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v0, :cond_4

    .line 583
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v6}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getBitmapLoaded()Z

    move-result v6

    if-nez v6, :cond_3

    .line 584
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz p0, :cond_2

    goto :goto_2

    :cond_2
    move-object v2, v3

    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "bitmapLoaded == false"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 590
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x1

    move v3, v0

    move v2, v4

    .line 592
    :goto_3
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_7

    .line 593
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 594
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v6}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 595
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 596
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_5

    .line 597
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v6}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_4

    :cond_5
    const-string/jumbo v3, "onDraw: recycled bitmap1"

    .line 600
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    :cond_6
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    move v2, v4

    .line 608
    :goto_5
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_a

    .line 609
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v5

    .line 610
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v6}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->isBackground()Z

    move-result v6

    if-nez v6, :cond_9

    if-eqz v5, :cond_9

    .line 611
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 612
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v5}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getImage()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 613
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v6

    if-nez v6, :cond_8

    .line 614
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    invoke-virtual {v6}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mBlendingPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_6

    :cond_8
    const-string/jumbo v3, "onDraw: recycled bitmap2"

    .line 617
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v4

    :cond_9
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_a
    if-eqz v3, :cond_b

    goto :goto_7

    :cond_b
    const/4 v0, 0x2

    .line 625
    :goto_7
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 626
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 578
    :cond_c
    :goto_8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz p0, :cond_d

    goto :goto_9

    :cond_d
    move-object v2, v3

    :goto_9
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "mBitmapImageList == null || mBitmapImageList.size() == 0"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    .line 654
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onKeyguardBouncerChanged(Z)V

    .line 655
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-eqz p1, :cond_0

    .line 656
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->unregisterSensor()V

    goto :goto_0

    .line 657
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    if-eqz p1, :cond_1

    .line 658
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->registerSensor()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 4

    .line 157
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onLayout(ZIIII)V

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onLayout called : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "KeyguardMotionWallpaper"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    .line 162
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isStatusBarHeight(Landroid/content/Context;Landroid/view/View;I)Z

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLastWidth:I

    if-ne p1, v0, :cond_0

    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLastHeight:I

    if-eq p1, v1, :cond_1

    .line 164
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->init()V

    .line 165
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLastWidth:I

    .line 166
    iput v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mLastHeight:I

    :cond_1
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 732
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onPause()V

    .line 733
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v1, :cond_0

    const-string v1, "(Preview)"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "onPause()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardMotionWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-eqz v0, :cond_1

    .line 735
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->unregisterSensor()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 708
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onResume()V

    .line 709
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    .line 710
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v2, :cond_0

    const-string v2, "(Preview)"

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onResume, mDrawingState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mCurrentWhich:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , current = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardMotionWallpaper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mCurrentWhich:I

    if-ne v1, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 713
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const-string/jumbo v0, "onResume, reload"

    .line 714
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 715
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 716
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->updateWallpaper()V

    .line 719
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_ROTATABLE_WALLPAPER:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isSubDisplay()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-nez v0, :cond_4

    .line 720
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    .line 724
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-nez v0, :cond_5

    .line 725
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->registerSensor()V

    .line 727
    :cond_5
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->init()V

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    .line 840
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const v1, 0x1002b

    if-eq v0, v1, :cond_0

    goto/16 :goto_3

    .line 842
    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mTimestamp:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_9

    .line 843
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x1

    .line 844
    aget v4, v0, v3

    const/4 v5, 0x2

    .line 845
    aget v0, v0, v5

    .line 853
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isLandscapeMode()Z

    move-result v6

    const-string v7, "KeyguardMotionWallpaper"

    if-nez v6, :cond_2

    .line 855
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-lez v8, :cond_2

    :cond_1
    const-string p0, "axisY is not biggest, stop animation"

    .line 856
    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    if-eqz v6, :cond_4

    .line 860
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v8, v8, v9

    if-gtz v8, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpl-float v0, v0, v8

    if-lez v0, :cond_4

    :cond_3
    const-string p0, "axisX is not biggest, stop animation"

    .line 861
    invoke-static {v7, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 865
    :cond_4
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAngularSum:F

    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAngularSum:F

    if-eqz v6, :cond_5

    add-float/2addr v2, v0

    .line 867
    iput v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAngularSum:F

    goto :goto_0

    :cond_5
    add-float/2addr v4, v0

    .line 869
    iput v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAngularSum:F

    .line 871
    :goto_0
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAngularSum:F

    sub-float/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    new-array v0, v5, [F

    .line 873
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAngularSum:F

    aput v2, v0, v1

    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAngularSum:F

    aput v2, v0, v3

    .line 877
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_9

    .line 878
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mMotionBitmapList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;

    .line 879
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setPrevAlpha(I)V

    .line 880
    iget v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPrevAngularSum:F

    iget v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAngularSum:F

    invoke-virtual {v2, v4, v5}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->setAlpha(FF)V

    .line 882
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getPrevAlpha()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper$MotionBitmap;->getAlpha()I

    move-result v2

    if-eq v4, v2, :cond_8

    .line 883
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mDeltaOfAngularSum:F

    const/high16 v4, 0x40400000    # 3.0f

    cmpg-float v2, v2, v4

    if-gez v2, :cond_7

    .line 885
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mAlphaAnimator:Landroid/animation/ValueAnimator;

    if-eqz v2, :cond_6

    .line 886
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "mAlphaAnimator isRunning"

    .line 887
    invoke-static {v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 891
    :cond_6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    goto :goto_2

    .line 894
    :cond_7
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 900
    :cond_9
    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    long-to-float p1, v0

    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mTimestamp:F

    :goto_3
    return-void
.end method

.method public onUnlock()V
    .locals 2

    .line 645
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onUnlock()V

    const-string v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "onUnlock()"

    .line 646
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mResumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-eqz v0, :cond_0

    .line 648
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->unregisterSensor()V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 2

    .line 664
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->reset()V

    const-string v0, "KeyguardMotionWallpaper"

    const-string/jumbo v1, "reset()"

    .line 665
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mResumed:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mIsSensorRegistered:Z

    if-nez v0, :cond_0

    .line 668
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->registerSensor()V

    .line 670
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->init()V

    return-void
.end method

.method public update()V
    .locals 6

    .line 631
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getMotionWallpaperPkgName(I)Ljava/lang/String;

    move-result-object v0

    .line 632
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "(Preview)"

    const-string v3, ""

    const-string v4, "KeyguardMotionWallpaper"

    if-nez v1, :cond_2

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 638
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v5, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v5, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "update() prev = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mPkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", new = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->updateWallpaper()V

    goto :goto_3

    .line 633
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v1, :cond_3

    goto :goto_2

    :cond_3
    move-object v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "same pkg, do not update() "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    if-eqz p0, :cond_4

    .line 635
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onPreviewReady()V

    :cond_4
    :goto_3
    return-void
.end method
