.class public Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;
.super Landroid/widget/FrameLayout;
.source "SystemUIWallpaper.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;


# instance fields
.field protected mBouncer:Z

.field protected final mCurDisplayInfo:Landroid/view/DisplayInfo;

.field protected mDensity:I

.field protected mDisplay:Landroid/view/Display;

.field private mDisplayInfoUpdatedState:J

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field protected final mDisplayMetrics:Landroid/util/DisplayMetrics;

.field protected mDrawingState:I

.field protected final mExecutor:Ljava/util/concurrent/ExecutorService;

.field protected mFontScale:F

.field private mFutureDisplayInfo:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mIsKeyguardShowing:Z

.field protected final mIsPreview:Z

.field protected mMetricsHeight:I

.field protected mMetricsWidth:I

.field protected mOccluded:Z

.field protected mOrientation:I

.field protected mResumed:Z

.field private mUpdateCallable:Ljava/util/concurrent/Callable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Callable<",
            "Landroid/view/DisplayInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field protected mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

.field protected final mWcgConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Z)V
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
            ">;Z)V"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    .line 91
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;ZZZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;ZZZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZZZ)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 97
    invoke-direct {p0, p1, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    new-instance p1, Landroid/util/DisplayMetrics;

    invoke-direct {p1}, Landroid/util/DisplayMetrics;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    .line 65
    new-instance p1, Landroid/view/DisplayInfo;

    invoke-direct {p1}, Landroid/view/DisplayInfo;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOrientation:I

    .line 82
    iput p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayInfoUpdatedState:J

    .line 347
    new-instance p1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateCallable:Ljava/util/concurrent/Callable;

    .line 98
    iput-boolean p6, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    .line 99
    iput-object p2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 100
    iput-object p4, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 101
    iput-object p3, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    .line 102
    iput-object p5, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWcgConsumer:Ljava/util/function/Consumer;

    .line 104
    iput-boolean p7, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOccluded:Z

    .line 105
    iput-boolean p8, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    .line 107
    iget-object p1, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 108
    iget p2, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput p2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDensity:I

    .line 109
    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mFontScale:F

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->updateDisplayInfo()V

    .line 111
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->preInit()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)Landroid/hardware/display/DisplayManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;Landroid/hardware/display/DisplayManager;)Landroid/hardware/display/DisplayManager;
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;J)J
    .locals 0

    .line 50
    iput-wide p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayInfoUpdatedState:J

    return-wide p1
.end method

.method private awaitCall()V
    .locals 5

    const-string v0, "SystemUIWallpaper"

    .line 325
    iget-wide v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayInfoUpdatedState:J

    const-wide v3, 0x7fffffffffffffffL

    cmp-long v3, v1, v3

    if-nez v3, :cond_0

    :try_start_0
    const-string v1, "awaitCall()"

    .line 327
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mFutureDisplayInfo:Ljava/util/concurrent/Future;

    const-wide/16 v2, 0x1f4

    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v2, v3, v4}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    const-string v1, "awaitCall() done"

    .line 329
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    .line 332
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    cmp-long v0, v1, v3

    if-eqz v0, :cond_1

    return-void

    .line 341
    :cond_1
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateCallable:Ljava/util/concurrent/Callable;

    invoke-interface {p0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 343
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public applyBlur(F)V
    .locals 0

    return-void
.end method

.method public cleanUp()V
    .locals 0

    return-void
.end method

.method public getCapturedWallpaper()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SystemUIWallpaper"

    .line 236
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCapturedWallpaper() hw accelerated: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isHardwareAccelerated()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 238
    :try_start_1
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 239
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    move-object v1, v0

    .line 242
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v1, :cond_0

    .line 243
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p0

    if-nez p0, :cond_0

    .line 244
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return-object v0
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .locals 0

    .line 295
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->awaitCall()V

    .line 296
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method protected getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 0

    .line 300
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->awaitCall()V

    .line 301
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method protected getMetricsHeight()I
    .locals 0

    .line 310
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->awaitCall()V

    .line 311
    iget p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsHeight:I

    return p0
.end method

.method protected getMetricsWidth()I
    .locals 0

    .line 305
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->awaitCall()V

    .line 306
    iget p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsWidth:I

    return p0
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 224
    iget-object p0, p0, Landroid/widget/FrameLayout;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object p0

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/WallpaperManager;->semGetDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz p0, :cond_0

    .line 226
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isKeyguardShowing()Z
    .locals 0

    .line 158
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    return p0
.end method

.method protected isLandscapeMode()Z
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v0, v0, Landroid/view/DisplayInfo;->rotation:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    iget p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOrientation:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public isOccluded()Z
    .locals 0

    .line 148
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOccluded:Z

    return p0
.end method

.method protected isSubDisplay()Z
    .locals 0

    .line 284
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 285
    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    move-result p0

    return p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 116
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    return-void
.end method

.method public onBackDropLayoutChange()V
    .locals 0

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->updateDisplayInfo()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 268
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConfigurationChanged, newConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 272
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 273
    iget v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDensity:I

    if-ne v1, v2, :cond_0

    iget v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mFontScale:F

    cmpl-float v2, v2, v0

    if-eqz v2, :cond_1

    .line 274
    :cond_0
    iput v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDensity:I

    .line 275
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mFontScale:F

    .line 278
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->updateDisplayInfo()V

    .line 280
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOrientation:I

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 121
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 122
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 123
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    :cond_0
    return-void
.end method

.method public onDlsViewModeChanged(IZ)V
    .locals 0

    return-void
.end method

.method public onFaceAuthError()V
    .locals 0

    return-void
.end method

.method public onFingerprintAuthSuccess()V
    .locals 0

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    .line 163
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    return-void
.end method

.method public onKeyguardShowing(Z)V
    .locals 0

    .line 153
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 258
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    if-eqz p4, :cond_0

    if-eqz p5, :cond_0

    .line 261
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->updateDisplayInfo()V

    :cond_0
    return-void
.end method

.method public onOccluded(Z)V
    .locals 0

    .line 143
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOccluded:Z

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    .line 134
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mResumed:Z

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x1

    .line 129
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mResumed:Z

    return-void
.end method

.method public onUnlock()V
    .locals 0

    return-void
.end method

.method public preInit()V
    .locals 1

    .line 174
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWcgConsumer:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 175
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public update()V
    .locals 0

    return-void
.end method

.method public updateBlurState(Z)V
    .locals 0

    return-void
.end method

.method protected updateDisplayInfo()V
    .locals 2

    const-string v0, "SystemUIWallpaper"

    const-string/jumbo v1, "updateDisplayInfo()"

    .line 289
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v0, 0x7fffffffffffffffL

    .line 290
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayInfoUpdatedState:J

    .line 291
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateCallable:Ljava/util/concurrent/Callable;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mFutureDisplayInfo:Ljava/util/concurrent/Future;

    return-void
.end method
