.class public Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;
.super Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;
.source "KeyguardBlurredWallpaper.java"


# instance fields
.field private mBitmapHeight:I

.field private mBitmapWidth:I

.field private mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

.field private mCaptureStart:Z

.field private mCapturedBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mDrawMatrix:Landroid/graphics/Matrix;

.field private mDrawPaint:Landroid/graphics/Paint;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mLastAmount:F

.field private mOccluded:Z

.field private mOriginDx:I

.field private mOriginDy:I

.field private mOriginScale:F

.field private mRotation:I

.field private mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

.field private mViewHeight:I

.field private mViewWidth:I

.field private mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method public static synthetic $r8$lambda$kiqxayPhkE-2UAeWhOdpdG2LtOo(Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->lambda$applyBlur$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;ZLcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;ZLcom/samsung/android/graphics/SemGfxImageFilter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Ljava/util/concurrent/ExecutorService;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;",
            "Z",
            "Lcom/samsung/android/graphics/SemGfxImageFilter;",
            ")V"
        }
    .end annotation

    .line 69
    invoke-direct/range {p0 .. p6}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Z)V

    .line 39
    new-instance p2, Landroid/graphics/Matrix;

    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    .line 40
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x2

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    const/4 p2, 0x0

    .line 51
    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mLastAmount:F

    const/4 p2, 0x0

    .line 52
    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mRotation:I

    .line 63
    iput-boolean p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCaptureStart:Z

    .line 70
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mContext:Landroid/content/Context;

    .line 71
    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setWillNotDraw(Z)V

    .line 72
    iput-object p7, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    .line 73
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mWindowManager:Landroid/view/WindowManager;

    .line 74
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    .line 75
    iput-object p9, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    .line 76
    iput-boolean p8, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mOccluded:Z

    .line 77
    iput-object p4, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 78
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getBlurAmount()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mLastAmount:F

    return-void
.end method

.method private getCapturedBitmap()Landroid/graphics/Bitmap;
    .locals 3

    .line 178
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mOccluded:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v0, :cond_2

    .line 185
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->getCapturedWallpaper()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_2

    .line 187
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_1

    .line 179
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    if-lez v0, :cond_2

    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    if-lez v2, :cond_2

    .line 180
    invoke-direct {p0, v2, v0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->getScreenShot(II)Landroid/graphics/Bitmap;

    move-result-object v1

    :cond_2
    :goto_1
    return-object v1
.end method

.method private getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 7

    const/4 p0, 0x1

    if-ne p2, p0, :cond_0

    const/16 p0, 0x5a

    goto :goto_0

    :cond_0
    const/16 p0, 0x10e

    .line 250
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    neg-int p0, p0

    int-to-float p0, p0

    .line 251
    invoke-virtual {v5, p0}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 252
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private getScreenShot(II)Landroid/graphics/Bitmap;
    .locals 12

    .line 232
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getScreenShot: start, width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , mRotation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mRotation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlurredWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    .line 234
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 235
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 236
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    new-instance v6, Landroid/graphics/Rect;

    const/4 p1, 0x0

    invoke-direct {v6, p1, p1, p1, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v4, 0x7d0

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual/range {v2 .. v11}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 238
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getScreenShot: end bitmap = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mRotation:I

    if-eqz p2, :cond_0

    if-eqz p1, :cond_0

    .line 241
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 242
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    move-object p1, p0

    :cond_0
    return-object p1
.end method

.method private initMatrix()Z
    .locals 7

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initMatrix: view width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", view height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , bitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlurredWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    .line 199
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mBitmapWidth:I

    .line 200
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mBitmapHeight:I

    .line 205
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mBitmapWidth:I

    iget v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    mul-int v4, v2, v3

    iget v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    mul-int v6, v5, v0

    if-le v4, v6, :cond_1

    int-to-float v4, v3

    int-to-float v6, v0

    goto :goto_0

    :cond_1
    int-to-float v4, v5

    int-to-float v6, v2

    :goto_0
    div-float/2addr v4, v6

    int-to-float v5, v5

    int-to-float v2, v2

    mul-float/2addr v2, v4

    sub-float/2addr v5, v2

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v5, v2

    int-to-float v3, v3

    int-to-float v0, v0

    mul-float/2addr v0, v4

    sub-float/2addr v3, v0

    mul-float/2addr v3, v2

    .line 213
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mOriginDx:I

    .line 214
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mOriginDy:I

    .line 215
    iput v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mOriginScale:F

    .line 217
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v4, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 218
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mOriginDx:I

    int-to-float v2, v2

    iget v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mOriginDy:I

    int-to-float v6, v6

    invoke-virtual {v0, v2, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBitmapWidth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mBitmapWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBitmapHeight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mBitmapHeight:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mViewWidth = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mViewHeight = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "scale = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dx = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "dy = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$applyBlur$0()V
    .locals 3

    .line 121
    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    const-string v0, "BlurredWallpaper"

    const-string v1, "capture start "

    .line 123
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 124
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCaptureStart:Z

    .line 125
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->getCapturedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const v1, 0x3e4ccccd    # 0.2f

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    const-string v0, "BlurredWallpaper"

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "capture end "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCaptureStart:Z

    .line 132
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->initMatrix()Z

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 135
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public applyBlur(F)V
    .locals 4

    .line 109
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    .line 110
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyBlur: amount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", prev amount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mLastAmount:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " , bitmap = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , w = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , h = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BlurredWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setBlurAmount(F)V

    .line 113
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    cmpl-float v2, p1, v1

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 114
    :goto_0
    invoke-interface {v0, v2}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->updateBlurState(Z)V

    :cond_1
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_3

    .line 116
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    if-nez v2, :cond_2

    goto :goto_1

    .line 119
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCaptureStart:Z

    if-nez v2, :cond_4

    .line 120
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 117
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->cleanUp()V

    .line 140
    :cond_4
    :goto_2
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mLastAmount:F

    cmpl-float v3, v2, p1

    if-nez v3, :cond_5

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_7

    .line 141
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    invoke-virtual {v1, p1}, Lcom/samsung/android/graphics/SemGfxImageFilter;->setBlurRadius(F)V

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_3

    .line 142
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mBlurFilter:Lcom/samsung/android/graphics/SemGfxImageFilter;

    :goto_3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->semSetGfxImageFilter(Lcom/samsung/android/graphics/SemGfxImageFilter;)V

    .line 143
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mLastAmount:F

    .line 146
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_8

    .line 147
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    :cond_8
    return-void
.end method

.method public cleanUp()V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 171
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v0, 0x0

    .line 172
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConfigurationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "BlurredWallpaper"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p1

    iget p1, p1, Landroid/view/DisplayInfo;->rotation:I

    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mRotation:I

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 98
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    if-lez v0, :cond_1

    .line 99
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mLastAmount:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xff

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mCapturedBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mDrawMatrix:Landroid/graphics/Matrix;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mDrawPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 102
    :cond_1
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 104
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result p1

    .line 84
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p2

    .line 85
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->updateDisplayInfo()V

    .line 86
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object p3

    iget p3, p3, Landroid/view/DisplayInfo;->rotation:I

    iput p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mRotation:I

    .line 87
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "onLayout: width = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " , height = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " , mRotation = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p4, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mRotation:I

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "BlurredWallpaper"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iget p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mLastAmount:F

    const/4 p4, 0x0

    cmpl-float p3, p3, p4

    if-eqz p3, :cond_0

    iget p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    if-eq p3, p2, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->update()V

    .line 90
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewWidth:I

    .line 91
    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mViewHeight:I

    :cond_0
    return-void
.end method

.method public onOccluded(Z)V
    .locals 0

    .line 165
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->mOccluded:Z

    return-void
.end method

.method public onUnlock()V
    .locals 0

    .line 160
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->cleanUp()V

    return-void
.end method

.method public resizeBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 259
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    .line 260
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    const/4 v0, 0x1

    .line 261
    invoke-static {p1, p0, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 262
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0
.end method

.method public update()V
    .locals 2

    const-string v0, "BlurredWallpaper"

    const-string/jumbo v1, "update: "

    .line 153
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->cleanUp()V

    .line 155
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getBlurAmount()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardBlurredWallpaper;->applyBlur(F)V

    return-void
.end method
