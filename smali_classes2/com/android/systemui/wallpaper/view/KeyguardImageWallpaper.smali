.class public Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;
.super Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;
.source "KeyguardImageWallpaper.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/tilt/Drawer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;
    }
.end annotation


# instance fields
.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mCache:Landroid/graphics/Bitmap;

.field private mColorProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/app/SemWallpaperColors;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mCurrentWhich:I

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawPaint:Landroid/graphics/Paint;

.field private mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

.field private mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

.field private mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mLastBottom:I

.field private mLastRight:I

.field private mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field private mNeedToRedraw:Z

.field private mOldBitmap:Landroid/graphics/Bitmap;

.field private mOriginDx:I

.field private mOriginDy:I

.field private mOriginScale:F

.field private mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field private mShouldEnableScreenRotation:Z

.field private mSmartCroppedResult:Landroid/graphics/Rect;

.field private mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

.field private mUpdateWallpaperSequence:I

.field private mUseCache:Z

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperUpdator:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$74UZGTqDmlScPUtPqdbXcvKhbBA(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->lambda$stopTiltColorController$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$H6MjDF7ho879TVsoZZxXt3HiSuk(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->lambda$startTiltColorController$0(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;IZLcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Ljava/util/function/Consumer;Ljavax/inject/Provider;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Ljava/util/concurrent/ExecutorService;",
            "IZ",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/wallpaper/log/WallpaperLogger;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljavax/inject/Provider<",
            "Landroid/app/SemWallpaperColors;",
            ">;)V"
        }
    .end annotation

    move-object v7, p0

    move-object v8, p1

    move/from16 v9, p5

    move/from16 v10, p6

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p10

    .line 153
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Z)V

    .line 97
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    .line 107
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    .line 108
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 109
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 111
    new-instance v1, Landroid/graphics/Paint;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    .line 112
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    .line 115
    iput-boolean v2, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mNeedToRedraw:Z

    .line 116
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    iput v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 117
    iput v2, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    .line 124
    iput-boolean v2, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUseCache:Z

    .line 155
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KeyguardImageWallpaper: which = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , useCache = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "KeyguardImageWallpaper"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iput-object v8, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    .line 157
    iput v9, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentWhich:I

    .line 158
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    const-string/jumbo v1, "wallpaper"

    .line 159
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/WallpaperManager;

    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 160
    invoke-static {p1}, Lcom/android/systemui/util/DeviceState;->shouldEnableKeyguardScreenRotation(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mShouldEnableScreenRotation:Z

    .line 161
    iput-boolean v10, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUseCache:Z

    move-object/from16 v1, p11

    .line 162
    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mColorProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p7

    .line 164
    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    move-object/from16 v4, p9

    .line 168
    iput-object v4, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    if-eqz v10, :cond_0

    .line 172
    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-nez v4, :cond_0

    .line 173
    invoke-virtual/range {p7 .. p7}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 174
    iput-boolean v2, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUseCache:Z

    .line 179
    :cond_0
    new-instance v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-direct {v1, p1, v9}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;-><init>(Landroid/content/Context;I)V

    iput-object v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    .line 180
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    .line 183
    iget-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isEnableTilt(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 184
    new-instance v0, Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-direct {v0, p1, p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/tilt/Drawer;)V

    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    .line 186
    :cond_1
    new-instance v0, Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;-><init>(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)V

    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 188
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_2

    iget-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUseCache:Z

    if-nez v0, :cond_2

    invoke-static/range {p5 .. p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "KeyguardImageWallpaper: recycle cache"

    .line 189
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    invoke-static/range {p5 .. p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 193
    :cond_2
    invoke-direct {p0, v9}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateWallpaper(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)I
    .locals 0

    .line 87
    iget p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    return p0
.end method

.method static synthetic access$004(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)I
    .locals 1

    .line 87
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUpdateWallpaperSequence:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Landroid/content/Context;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Z
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isSmartCropRequired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateSmartCropRectIfNeeded(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Landroid/app/WallpaperManager;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;I)Z
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->init(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Lcom/android/systemui/pluginlock/PluginLockManager;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$302(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->applyOldBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Landroid/graphics/Rect;
    .locals 0

    .line 87
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    .line 87
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Z
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isDlsSmartCropRequired()Z

    move-result p0

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;I)V
    .locals 0

    .line 87
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateSmartCropRect(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Z
    .locals 0

    .line 87
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUseCache:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Z
    .locals 0

    .line 87
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->canRotate()Z

    move-result p0

    return p0
.end method

.method private applyOldBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 520
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    .line 521
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isKeyguardUnlocking()Z

    move-result v1

    .line 522
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyOldBitmap: isDeviceInteractive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " , isUnlocked = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "KeyguardImageWallpaper"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 525
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 527
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->recycleBitmap(Landroid/graphics/Bitmap;)V

    const/4 p1, 0x0

    .line 528
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    :goto_0
    return-void
.end method

.method private canRotate()Z
    .locals 5

    .line 1013
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1014
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->isLockScreenRotationAllowed()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 1018
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isSubDisplay()Z

    move-result v0

    .line 1019
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v2, :cond_1

    if-eqz v0, :cond_2

    .line 1020
    :cond_1
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    return v3

    .line 1024
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v2, v0}, Landroid/app/WallpaperManager;->isEnabledMultiLockWallpaper(Z)Z

    move-result v0

    .line 1025
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isRotationRequired()Z

    move-result p0

    .line 1027
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canRotate: which = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , isRotatingWallpaper = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " , isMultipleWallpaperEnabled = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "KeyguardImageWallpaper"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_4

    if-nez v0, :cond_4

    move v1, v3

    :cond_4
    return v1
.end method

.method private checkDeviceDensity(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8

    if-eqz p1, :cond_1

    .line 968
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->noncompatDensityDpi:I

    invoke-virtual {p1, v0}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 970
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    .line 971
    iget v1, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 972
    iget v2, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 973
    iget v3, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 974
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 975
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 977
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDeviceDensity deviceHeight = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", deviceWidth = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", deviceRotation = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bitmapWidth = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 981
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", bitmapHeight = "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 982
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "KeyguardImageWallpaper"

    .line 977
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    invoke-static {}, Lcom/android/systemui/util/DeviceType;->isTablet()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 985
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isLandscapeMode()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 986
    iget v1, v0, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 987
    iget v2, v0, Landroid/view/DisplayInfo;->logicalHeight:I

    :cond_0
    if-ge v2, v5, :cond_1

    if-ge v1, v4, :cond_1

    int-to-float v0, v2

    int-to-float v2, v5

    div-float/2addr v0, v2

    int-to-float v1, v1

    int-to-float v2, v4

    div-float/2addr v1, v2

    .line 994
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 996
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 997
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resize scale down.:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0

    :cond_1
    return-object p1
.end method

.method private checkPreCondition(I)Z
    .locals 3

    .line 290
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result p1

    const/4 v0, 0x0

    const-string v1, "KeyguardImageWallpaper"

    if-nez p1, :cond_0

    const-string p0, "checkPreCondition: Cached wallpaper is null or is recycled"

    .line 291
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 295
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkPreCondition: getHeight()  = "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-static {p1, p0, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isStatusBarHeight(Landroid/content/Context;Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p0, "checkPreCondition: getHeight() is same with statusBar height."

    .line 297
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 301
    :cond_1
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewWidth:I

    if-eqz p1, :cond_3

    iget p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewHeight:I

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    const-string p0, "checkPreCondition: mViewWidth == 0 || mViewHeight == 0"

    .line 302
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private getOperatorWallpaper()Landroid/graphics/Bitmap;
    .locals 3

    .line 674
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/app/WallpaperManager;->getOMCWallpaperFile(Landroid/content/Context;I)Ljava/io/File;

    move-result-object v0

    .line 675
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v2}, Landroid/app/WallpaperManager;->getCSCWallpaperFile(Landroid/content/Context;ILandroid/app/WallpaperManager$SubUserWallpaperChecker;Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-eqz v0, :cond_0

    .line 677
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 678
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 679
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 680
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_1
    :goto_0
    return-object v2
.end method

.method private init(I)Z
    .locals 9

    const-string v0, "KeyguardImageWallpaper"

    .line 310
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingLeft:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingRight:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewWidth:I

    .line 311
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingTop:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/FrameLayout;->mPaddingBottom:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewHeight:I

    const/4 v1, 0x0

    .line 319
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->checkPreCondition(I)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "init: Fail to check precondition"

    .line 320
    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    .line 321
    iput v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastRight:I

    .line 322
    iput v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastBottom:I

    const/4 v2, 0x2

    .line 323
    iput v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    return v1

    .line 327
    :cond_0
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mBitmapWidth:I

    .line 328
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mBitmapHeight:I

    .line 334
    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mBitmapWidth:I

    iget v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewHeight:I

    mul-int v5, v3, v4

    iget v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewWidth:I

    mul-int v7, v6, v2

    const/high16 v8, 0x3f800000    # 1.0f

    if-le v5, v7, :cond_1

    int-to-float v5, v4

    int-to-float v7, v2

    goto :goto_0

    :cond_1
    int-to-float v5, v6

    int-to-float v7, v3

    :goto_0
    div-float/2addr v5, v7

    mul-float/2addr v5, v8

    int-to-float v6, v6

    int-to-float v3, v3

    mul-float/2addr v3, v5

    sub-float/2addr v6, v3

    const/high16 v3, 0x3f000000    # 0.5f

    mul-float/2addr v6, v3

    int-to-float v4, v4

    int-to-float v2, v2

    mul-float/2addr v2, v5

    sub-float/2addr v4, v2

    mul-float/2addr v4, v3

    .line 342
    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOriginDx:I

    .line 343
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOriginDy:I

    .line 344
    iput v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOriginScale:F

    .line 346
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v2, v5, v5}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 347
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOriginDx:I

    int-to-float v3, v3

    iget v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOriginDy:I

    int-to-float v7, v7

    invoke-virtual {v2, v3, v7}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 351
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBitmapWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mBitmapWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mBitmapHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mBitmapHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mViewWidth = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewWidth:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mViewHeight = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewHeight:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "scale = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dx = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dy = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    .line 363
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init: which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v1
.end method

.method private isCustom()Z
    .locals 2

    .line 1043
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isSubDisplay()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "sub_display_lockscreen_wallpaper_transparency"

    goto :goto_0

    :cond_0
    const-string v0, "lockscreen_wallpaper_transparent"

    .line 1044
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method private isDlsRotationRequired()Z
    .locals 1

    .line 1048
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_ROTATABLE_WALLPAPER:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isSubDisplay()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isDlsSmartCropRequired()Z
    .locals 0

    .line 1052
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isCustomPackApplied()Z

    move-result p0

    return p0
.end method

.method private isRotationRequired()Z
    .locals 1

    .line 1035
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isCustom()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isDlsRotationRequired()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private isSmartCropRequired()Z
    .locals 1

    .line 1039
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isCustom()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isDlsSmartCropRequired()Z

    move-result p0

    if-eqz p0, :cond_0

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

.method private isSubUser()Z
    .locals 0

    .line 670
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$startTiltColorController$0(Z)V
    .locals 1

    .line 1057
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    .line 1059
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stop()V

    .line 1061
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->start()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$stopTiltColorController$1()V
    .locals 2

    .line 1068
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1069
    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->setEnable(Z)V

    .line 1070
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->stop()V

    :cond_0
    return-void
.end method

.method private recycleBitmap(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 855
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "recycleBitmap: bmp = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardImageWallpaper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 856
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 857
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-void
.end method

.method private recycleCaches()V
    .locals 4

    .line 836
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "recycleCaches: WallpaperUtils.getCurrentWhich() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardImageWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 841
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 842
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 843
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "recycleCaches: isDlsBitmap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_1

    .line 846
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->recycleBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    const/4 v0, 0x0

    .line 848
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCache:Landroid/graphics/Bitmap;

    .line 850
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 851
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method private resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 1

    .line 1007
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    .line 1008
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    const/4 v0, 0x1

    .line 1009
    invoke-static {p1, p0, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private startTiltColorController(Z)V
    .locals 2

    .line 1056
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private stopTiltColorController()V
    .locals 2

    .line 1067
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private updateSmartCropRect(I)V
    .locals 2

    .line 384
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 385
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->updateSmartCropRect(Landroid/graphics/Bitmap;I)V

    .line 386
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mImageSmartCropper:Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->getCropRect()Landroid/graphics/Rect;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    return-void
.end method

.method private updateSmartCropRectIfNeeded(I)V
    .locals 3

    .line 372
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isDlsSmartCropRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSmartCroppedRect(I)Landroid/graphics/Rect;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    .line 376
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSmartCropRectIfNeeded() needToUpdateCropRect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardImageWallpaper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    .line 379
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateSmartCropRect(I)V

    :cond_2
    return-void
.end method

.method private updateWallpaper(I)V
    .locals 5

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateWallpaper() START useCache="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUseCache:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , user id = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardImageWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 394
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 395
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 397
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    if-nez v3, :cond_0

    const-string/jumbo v3, "updateWallpaper: cancel update wallpaper"

    .line 398
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    invoke-virtual {v1, v4}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v1, 0x0

    .line 400
    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    .line 403
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->startTiltColorController(Z)V

    .line 405
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;I)V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    .line 512
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUseCache:Z

    if-eqz v1, :cond_2

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 514
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    if-eqz p0, :cond_3

    .line 515
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result p1

    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-interface {p0, p1, v4}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V

    goto :goto_1

    .line 513
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    sget-object p1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p0, p1, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    .line 823
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->cleanUp()V

    const-string v0, "KeyguardImageWallpaper"

    const-string v1, "cleanUp()"

    .line 824
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    .line 826
    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 827
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 v0, 0x0

    .line 828
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperUpdator:Landroid/os/AsyncTask;

    .line 830
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->recycleCaches()V

    .line 831
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->stopTiltColorController()V

    const/4 v0, 0x3

    .line 832
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    return-void
.end method

.method public loadBitmap(IZ)Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;
    .locals 11

    .line 536
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 543
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x6

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v1

    :goto_0
    const-string v2, "loadBitmap:"

    .line 546
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    const-class v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v2}, Lcom/android/systemui/knox/KnoxStateMonitor;->isMDMWallpaperEnabled()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "KeyguardImageWallpaper"

    if-eqz v2, :cond_4

    const-string v2, "/data/system/enterprise/lso/lockscreen_wallpaper.jpg"

    .line 550
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-virtual {v6}, Ljava/io/File;->canRead()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 553
    :try_start_0
    new-instance v6, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 555
    invoke-virtual {v6}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v6, :cond_2

    .line 556
    :try_start_1
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "load MDM wallpaper!"

    .line 557
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    if-eqz v7, :cond_1

    .line 559
    invoke-interface {v7, v6, v3}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V

    .line 561
    :cond_1
    invoke-static {v6, v3}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;Z)Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v7

    goto :goto_1

    :catch_1
    move-exception v7

    move-object v6, v4

    :goto_1
    const-string v8, "Can\'t load MDM wallpaper!"

    .line 565
    invoke-static {v5, v8, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    const-string v7, "file problem!"

    .line 567
    invoke-static {v5, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    move-object v6, v4

    goto :goto_2

    :cond_4
    move-object v2, v4

    move-object v6, v2

    .line 572
    :goto_2
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isSubUser()Z

    move-result v7

    const/4 v8, 0x1

    if-nez v7, :cond_9

    .line 573
    invoke-static {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getScreenId(I)I

    move-result v7

    .line 575
    iget-object v9, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v9, v7}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled(I)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 576
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockManager;->isWallpaperSrcBitmap()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 577
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    .line 578
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadBitmap wallpaperBitmap: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 579
    :cond_5
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockManager;->isWallpaperSrcPath()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 580
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object v2

    .line 581
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadBitmap from DLS path:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v6, v2}, Lcom/android/systemui/pluginlock/PluginLockManager;->getBitmapFromPath(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_3

    .line 584
    :cond_6
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v6}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperUri()Landroid/net/Uri;

    move-result-object v6

    .line 585
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "loadBitmap from DLS uri:"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v7, v6}, Lcom/android/systemui/pluginlock/PluginLockManager;->getBitmapFromUri(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v6

    :goto_3
    const-string v7, "from DLS"

    .line 588
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v6, :cond_7

    const-string v7, "DLS returns null for ImageWallpaper bitmap."

    .line 591
    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_7
    move v3, v8

    goto :goto_4

    .line 597
    :cond_8
    sget-boolean v9, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v10, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 598
    invoke-virtual {v9, v10}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    move-result v9

    if-nez v9, :cond_9

    iget-object v9, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 599
    invoke-virtual {v9, v7}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeRequired(I)Z

    move-result v9

    if-eqz v9, :cond_9

    iget-object v9, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 600
    invoke-virtual {v9, v7}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperAvailable(I)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 601
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v6, v7}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v6

    const-string v7, "from DLS(FBE)"

    .line 602
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    :goto_4
    if-nez v6, :cond_c

    .line 609
    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "loadBitmap: which = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " , user id = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v6, p1, v1}, Landroid/app/WallpaperManager;->getLockWallpaperFile(II)Landroid/os/ParcelFileDescriptor;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/OutOfMemoryError; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz p1, :cond_a

    .line 613
    :try_start_3
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 614
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-static {v7, v4, v6}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 615
    invoke-direct {p0, v4}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->checkDeviceDensity(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_5

    .line 617
    :cond_a
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->getOperatorWallpaper()Landroid/graphics/Bitmap;

    move-result-object v6

    if-nez v6, :cond_b

    .line 619
    new-instance v6, Landroid/app/SemWallpaperResourcesInfo;

    iget-object v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/app/SemWallpaperResourcesInfo;-><init>(Landroid/content/Context;)V

    .line 620
    invoke-virtual {v6, v1}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultImageWallpaper(I)Ljava/io/InputStream;

    move-result-object v6

    .line 621
    invoke-static {v6, v4, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_b
    :goto_5
    move-object v4, p1

    goto :goto_6

    :catchall_0
    move-exception p0

    move-object v4, p1

    goto/16 :goto_9

    :catch_2
    move-object v4, p1

    goto/16 :goto_8

    .line 625
    :cond_c
    :goto_6
    :try_start_4
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result p1

    if-eqz p1, :cond_d

    const-string p1, "loadBitmap: Skip cropping when dynamic wallpaper is enabled."

    .line 626
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 628
    :cond_d
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mShouldEnableScreenRotation:Z

    if-nez p1, :cond_e

    .line 629
    iget p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsWidth:I

    iget v7, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsHeight:I

    invoke-static {v6, p1, v7}, Lcom/android/systemui/wallpaper/WallpaperUtils;->cropBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 630
    invoke-virtual {p1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_f

    if-eqz v6, :cond_f

    .line 632
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    move-object v6, p1

    goto :goto_7

    :cond_e
    const-string p1, "loadBitmap: shouldEnableScreenRotation is true."

    .line 637
    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    :goto_7
    if-eqz v6, :cond_12

    const-string p1, "loadBitmap end"

    .line 642
    invoke-static {v5, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    if-eqz p1, :cond_10

    if-eqz p2, :cond_10

    .line 644
    invoke-interface {p1, v6, v8}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V

    :cond_10
    const-string p1, ",success"

    .line 646
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 647
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v5, p2}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 649
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p1, :cond_11

    .line 650
    invoke-static {v6, v3, v2, v1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;ZLjava/lang/String;I)Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;

    move-result-object p0
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 665
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    .line 652
    :cond_11
    :try_start_5
    invoke-static {v6, v3}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->success(Landroid/graphics/Bitmap;Z)Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;

    move-result-object p0
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 665
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :cond_12
    :try_start_6
    const-string p1, ",fail"

    .line 655
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v5, p2}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    invoke-static {v3}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->fail(Z)Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;

    move-result-object p0
    :try_end_6
    .catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 665
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_9

    :catch_3
    :goto_8
    :try_start_7
    const-string p1, ",fail(OOM)"

    .line 661
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v5, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    invoke-static {v3}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->fail(Z)Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;

    move-result-object p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 665
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object p0

    :goto_9
    invoke-static {v4}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 666
    throw p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 927
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onAttachedToWindow()V

    .line 928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAttachedToWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardImageWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 929
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->startTiltColorController(Z)V

    return-void
.end method

.method public onBackDropLayoutChange()V
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    .line 206
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onBackDropLayoutChange()V

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 209
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onBackDropLayoutChange: prevRotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", curRotation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "KeyguardImageWallpaper"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 211
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mNeedToRedraw:Z

    .line 214
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->canRotate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    goto :goto_0

    .line 216
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->canRotate()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->isFixedOrientationApplied()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 217
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->clearPortraitRotation()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 223
    iget v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    .line 224
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mNeedToRedraw:Z

    .line 227
    :cond_0
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 229
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->canRotate()Z

    move-result p1

    if-nez p1, :cond_1

    .line 230
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    goto :goto_0

    .line 232
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->clearPortraitRotation()V

    :goto_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 934
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onDetachedFromWindow()V

    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDetachedFromWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardImageWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 937
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->stopTiltColorController()V

    return-void
.end method

.method public onDlsViewModeChanged(IZ)V
    .locals 1

    .line 951
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onDlsViewModeChanged  "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "KeyguardImageWallpaper"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 730
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 732
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    .line 733
    :goto_0
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result v2

    const/4 v3, 0x2

    const-string v4, "KeyguardImageWallpaper"

    if-eqz v2, :cond_9

    .line 734
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 741
    iget v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mBitmapWidth:I

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mBitmapHeight:I

    if-nez v5, :cond_1

    goto/16 :goto_4

    .line 746
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 748
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isLandscapeMode()Z

    move-result v5

    .line 750
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    const/4 v7, 0x0

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->isEnable()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 751
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, p1, v8}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->prepareDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 752
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v8}, Landroid/graphics/Paint;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto :goto_1

    .line 754
    :cond_2
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    const/16 v8, 0xff

    invoke-virtual {v6, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 755
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 756
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 760
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mColorProvider:Ljavax/inject/Provider;

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/SemWallpaperColors;

    invoke-static {v6, v8}, Lcom/android/systemui/wallpaper/glwallpaper/ImageDarkModeFilter;->getWallpaperFilterColor(Landroid/content/Context;Landroid/app/SemWallpaperColors;)[F

    move-result-object v6

    const/4 v8, 0x1

    if-eqz v6, :cond_3

    const/4 v9, 0x3

    .line 762
    aget v9, v6, v9

    aget v10, v6, v1

    aget v11, v6, v8

    aget v3, v6, v3

    invoke-static {v9, v10, v11, v3}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v3

    .line 763
    new-instance v6, Landroid/graphics/PorterDuffColorFilter;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_OVER:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v6, v3, v9}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 764
    iget-object v9, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v9, v6}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 765
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " draw filter color on ImageWallpaper "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 767
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 771
    :goto_2
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    if-eqz v3, :cond_4

    invoke-virtual {v3}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->isEnable()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 772
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_4
    if-eqz v5, :cond_5

    .line 773
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->canRotate()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isSmartCropRequired()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 774
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateSmartCropRectIfNeeded(I)V

    .line 775
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDraw: mSmartCroppedResult + "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    new-instance v0, Landroid/graphics/RectF;

    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewWidth:I

    int-to-float v3, v3

    iget v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mViewHeight:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v0, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 777
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "onDraw, cur bitmap"

    .line 779
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 783
    :goto_3
    iput v8, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 785
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_6

    .line 786
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->recycleBitmap(Landroid/graphics/Bitmap;)V

    .line 787
    iput-object v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mOldBitmap:Landroid/graphics/Bitmap;

    .line 789
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 790
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mNeedToRedraw:Z

    .line 792
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz p1, :cond_7

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    if-eqz p0, :cond_7

    .line 793
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onDrawFinished()V

    :cond_7
    return-void

    :cond_8
    :goto_4
    const-string p0, "mBitmapWidth == 0 || mBitmapHeight == 0"

    .line 742
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_9
    const-string/jumbo p1, "onDraw: Cached wallpaper is null or is recycled"

    .line 736
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    iput v3, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 2

    .line 687
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onLayout(ZIIII)V

    .line 689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLayout:  \nchanged = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "], \nleft = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], \ntop = ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], \nright = ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], \nbottom = ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "KeyguardImageWallpaper"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 696
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLastRight = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastRight:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mLastBottom = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastBottom:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 697
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mNeedToRedraw = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mNeedToRedraw:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p4, :cond_b

    if-nez p5, :cond_1

    goto/16 :goto_6

    .line 701
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, p0, p5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isStatusBarHeight(Landroid/content/Context;Landroid/view/View;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p0, "It is status bar size. Ignored."

    .line 702
    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 706
    :cond_2
    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastRight:I

    const/4 p2, 0x1

    const/4 v0, 0x0

    if-ne p1, p4, :cond_4

    iget p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastBottom:I

    if-eq p1, p5, :cond_3

    goto :goto_0

    :cond_3
    move p1, v0

    goto :goto_1

    :cond_4
    :goto_0
    move p1, p2

    :goto_1
    if-nez p1, :cond_6

    .line 707
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mNeedToRedraw:Z

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move p1, v0

    goto :goto_3

    :cond_6
    :goto_2
    move p1, p2

    .line 709
    :goto_3
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_8

    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v1, :cond_8

    .line 710
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->isRotationRequired()Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastRight:I

    if-eqz v1, :cond_7

    if-eq v1, p4, :cond_7

    if-eq v1, p5, :cond_7

    goto :goto_4

    :cond_7
    move p2, v0

    :goto_4
    move v0, p2

    :cond_8
    if-eqz p1, :cond_b

    .line 714
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onLayout: init() "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , needSmartCrop = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz p1, :cond_9

    const/4 p1, 0x6

    goto :goto_5

    :cond_9
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result p1

    :goto_5
    if-eqz v0, :cond_a

    const/4 p2, 0x0

    .line 718
    iput-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mSmartCroppedResult:Landroid/graphics/Rect;

    .line 719
    iget p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateSmartCropRectIfNeeded(I)V

    .line 722
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->init(I)Z

    .line 723
    iput p4, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastRight:I

    .line 724
    iput p5, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mLastBottom:I

    :cond_b
    :goto_6
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 268
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 238
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onResume()V

    .line 240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResume, mDrawingState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardImageWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentWhich:I

    .line 244
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isCachedWallpaperAvailable(I)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "onResume, reload"

    .line 245
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 246
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 247
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentWhich:I

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateWallpaper(I)V

    .line 250
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 256
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->canRotate()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 257
    iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v0, v2, :cond_5

    .line 259
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->clearPortraitRotation()V

    goto :goto_0

    .line 262
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    :cond_5
    :goto_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 942
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 943
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onWindowFocusChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardImageWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    .line 945
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->init(I)Z

    :cond_0
    return-void
.end method

.method public preInit()V
    .locals 1

    .line 198
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWcgConsumer:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 199
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public requestDraw()V
    .locals 2

    .line 863
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mIsDrawRequested:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 864
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public update()V
    .locals 1

    const/4 v0, 0x0

    .line 804
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->update(Z)V

    return-void
.end method

.method public update(Z)V
    .locals 3

    .line 809
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->update()V

    .line 810
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    .line 811
    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentUserId:I

    if-eq v1, v0, :cond_0

    .line 812
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update userId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardImageWallpaper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mCurrentUserId:I

    .line 816
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mUseCache:Z

    .line 817
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result p1

    .line 818
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateWallpaper(I)V

    return-void
.end method

.method public updateBlurState(Z)V
    .locals 0

    return-void
.end method

.method public updateDrawState(Z)V
    .locals 2

    .line 960
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    if-eqz v0, :cond_0

    .line 961
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDrawState: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardImageWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->mTiltColorController:Lcom/android/systemui/wallpaper/tilt/TiltColorController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/tilt/TiltColorController;->updateDraw(Z)Z

    :cond_0
    return-void
.end method
