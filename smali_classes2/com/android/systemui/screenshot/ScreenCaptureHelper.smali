.class public Lcom/android/systemui/screenshot/ScreenCaptureHelper;
.super Ljava/lang/Object;
.source "ScreenCaptureHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenCaptureHelper"


# instance fields
.field protected mBuiltInDisplayId:I

.field protected mBundle:Landroid/os/Bundle;

.field protected mCaptureDisplay:I

.field protected mCaptureOrigin:I

.field protected mCaptureSharedBundle:Landroid/os/Bundle;

.field protected mCaptureType:I

.field protected mDegrees:F

.field protected mDisplay:Landroid/view/Display;

.field protected mDisplayHeight:I

.field protected mDisplayWidth:I

.field protected mHelperContext:Landroid/content/Context;

.field protected mNavigationBarHeight:I

.field protected mNavigationBarVisible:Z

.field protected mRectToCapture:Landroid/graphics/Rect;

.field protected mSafeInsetBottom:I

.field protected mSafeInsetLeft:I

.field protected mSafeInsetRight:I

.field protected mSafeInsetTop:I

.field protected mScreenHeight:I

.field protected mScreenNativeHeight:F

.field protected mScreenNativeWidth:F

.field protected mScreenWidth:I

.field protected mStackBounds:Landroid/graphics/Rect;

.field protected mStatusBarHeight:I

.field protected mStatusBarVisible:Z

.field protected mSweepDirection:I

.field protected mWindowMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getExcludeSystemUIRect()V
    .locals 11

    .line 306
    sget-object v0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "old rectToCapture : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarVisible:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarHeight:I

    goto :goto_0

    :cond_0
    move v1, v2

    .line 308
    :goto_0
    iget-boolean v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarVisible:Z

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarHeight:I

    goto :goto_1

    :cond_1
    move v3, v2

    .line 309
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getNavBarPosition()I

    move-result v4

    .line 314
    iput v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarHeight:I

    .line 315
    iput v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarHeight:I

    .line 317
    iget v5, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    float-to-int v5, v5

    if-eqz v5, :cond_7

    const/16 v6, 0x5a

    const/4 v7, 0x4

    if-eq v5, v6, :cond_5

    const/16 v6, 0xb4

    if-eq v5, v6, :cond_4

    const/16 v6, 0x10e

    if-eq v5, v6, :cond_2

    move v1, v2

    move v6, v1

    move v7, v6

    goto/16 :goto_4

    :cond_2
    if-ne v4, v7, :cond_3

    .line 352
    iget v5, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    float-to-int v6, v5

    sub-int/2addr v6, v1

    .line 353
    iget v7, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    float-to-int v7, v7

    add-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v5, v1

    .line 354
    iput v5, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    move v1, v2

    move v2, v3

    goto :goto_4

    .line 358
    :cond_3
    iget v5, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    float-to-int v6, v5

    sub-int/2addr v6, v1

    .line 359
    iget v7, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    float-to-int v8, v7

    sub-int/2addr v8, v3

    int-to-float v1, v1

    sub-float/2addr v5, v1

    .line 360
    iput v5, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    int-to-float v1, v3

    sub-float/2addr v7, v1

    .line 361
    iput v7, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    move v1, v2

    move v7, v8

    goto :goto_4

    .line 344
    :cond_4
    iget v5, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    float-to-int v5, v5

    .line 345
    iget v6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    float-to-int v7, v6

    sub-int/2addr v7, v1

    add-int/2addr v1, v3

    int-to-float v1, v1

    sub-float/2addr v6, v1

    .line 346
    iput v6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    move v1, v3

    goto :goto_3

    :cond_5
    if-ne v4, v7, :cond_6

    .line 329
    iget v5, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    float-to-int v6, v5

    sub-int/2addr v6, v3

    .line 330
    iget v7, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    float-to-int v7, v7

    add-int/2addr v3, v1

    int-to-float v3, v3

    sub-float/2addr v5, v3

    .line 331
    iput v5, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    goto :goto_2

    .line 335
    :cond_6
    iget v5, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    float-to-int v6, v5

    .line 336
    iget v7, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    float-to-int v8, v7

    sub-int/2addr v8, v3

    int-to-float v9, v1

    sub-float/2addr v5, v9

    .line 337
    iput v5, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    int-to-float v3, v3

    sub-float/2addr v7, v3

    .line 338
    iput v7, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    move v7, v8

    :goto_2
    move v10, v2

    move v2, v1

    move v1, v10

    goto :goto_4

    .line 321
    :cond_7
    iget v5, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    float-to-int v5, v5

    .line 322
    iget v6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    float-to-int v7, v6

    sub-int/2addr v7, v3

    add-int/2addr v3, v1

    int-to-float v3, v3

    sub-float/2addr v6, v3

    .line 323
    iput v6, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    :goto_3
    move v6, v5

    .line 365
    :goto_4
    iget-object v3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v3, v2, v1, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "new getExcludeSystemUIRect : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " navigationBarPosition : "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getNavBarPosition()I
    .locals 3

    .line 371
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mBuiltInDisplayId:I

    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->getNavBarPosition(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 373
    sget-object v0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to get nav bar position : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public getAnimationWindowFlag()I
    .locals 0

    const/16 p0, 0x508

    return p0
.end method

.method public getAnimationWindowType()I
    .locals 0

    const/16 p0, 0x968

    return p0
.end method

.method protected getBuiltInDisplayId()I
    .locals 0

    .line 268
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureDisplay:I

    return p0
.end method

.method public getCaptureSharedBundle()Landroid/os/Bundle;
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureSharedBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method protected getCurrentDisplay()Landroid/view/Display;
    .locals 1

    .line 294
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mHelperContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 295
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method protected getDegrees(Landroid/view/Display;)F
    .locals 0

    .line 290
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDegreesForRotation(I)F

    move-result p0

    return p0
.end method

.method protected getDegreesForRotation(I)F
    .locals 0

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/high16 p0, 0x42b40000    # 90.0f

    return p0

    :cond_1
    const/high16 p0, 0x43340000    # 180.0f

    return p0

    :cond_2
    const/high16 p0, 0x43870000    # 270.0f

    return p0
.end method

.method public getDisplay()Landroid/view/Display;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplay:Landroid/view/Display;

    return-object p0
.end method

.method public getDisplayId()I
    .locals 0

    .line 181
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mBuiltInDisplayId:I

    return p0
.end method

.method protected getDisplayMetrics(Landroid/view/Display;)Landroid/util/DisplayMetrics;
    .locals 0

    .line 272
    new-instance p0, Landroid/util/DisplayMetrics;

    invoke-direct {p0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 273
    invoke-virtual {p1, p0}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    return-object p0
.end method

.method public getDisplayWidth()I
    .locals 0

    .line 134
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplayWidth:I

    return p0
.end method

.method public getNavigationBarHeight()I
    .locals 0

    .line 209
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarHeight:I

    return p0
.end method

.method public getSafeInsetBottom()I
    .locals 0

    .line 118
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetBottom:I

    return p0
.end method

.method public getSafeInsetLeft()I
    .locals 0

    .line 106
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetLeft:I

    return p0
.end method

.method public getSafeInsetRight()I
    .locals 0

    .line 114
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetRight:I

    return p0
.end method

.method public getSafeInsetTop()I
    .locals 0

    .line 110
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetTop:I

    return p0
.end method

.method public getScreenCaptureDisplay()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureDisplay:I

    return p0
.end method

.method public getScreenCaptureOrigin()I
    .locals 0

    .line 102
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureOrigin:I

    return p0
.end method

.method public getScreenCaptureType()I
    .locals 0

    .line 122
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureType:I

    return p0
.end method

.method public getScreenDegrees()F
    .locals 0

    .line 150
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    return p0
.end method

.method public getScreenHeight()I
    .locals 0

    .line 146
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenHeight:I

    return p0
.end method

.method public getScreenNativeHeight()F
    .locals 0

    .line 165
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    return p0
.end method

.method public getScreenNativeWidth()F
    .locals 0

    .line 161
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    return p0
.end method

.method public getScreenWidth()I
    .locals 0

    .line 142
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenWidth:I

    return p0
.end method

.method public getScreenshotMaxLayer()I
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mHelperContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureDisplay:I

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isDesktopCaptured(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenshotMaxLayerInKnoxDesktop()I

    move-result p0

    return p0

    :cond_0
    const p0, 0x7fffffff

    return p0
.end method

.method protected getScreenshotMaxLayerInKnoxDesktop()I
    .locals 0

    const p0, 0x4baef

    return p0
.end method

.method public getScreenshotMinLayer()I
    .locals 0

    const/high16 p0, -0x80000000

    return p0
.end method

.method public getScreenshotRectToCapture()Landroid/graphics/Rect;
    .locals 2

    .line 154
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mHelperContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isExcludeSystemUI(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getExcludeSystemUIRect()V

    .line 157
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getStatusBarHeight()I
    .locals 0

    .line 205
    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarHeight:I

    return p0
.end method

.method public initiallize(Landroid/content/Context;ZZLandroid/os/Bundle;)V
    .locals 3

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->initiallizeCaptureType()V

    .line 57
    iput-object p4, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mBundle:Landroid/os/Bundle;

    .line 58
    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mHelperContext:Landroid/content/Context;

    const-string/jumbo v0, "sweepDirection"

    const/4 v1, 0x1

    .line 59
    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSweepDirection:I

    const-string v0, "capturedDisplay"

    const/4 v2, 0x0

    .line 60
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureDisplay:I

    const-string v0, "capturedOrigin"

    .line 61
    invoke-virtual {p4, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureOrigin:I

    const-string/jumbo v0, "safeInsetLeft"

    .line 62
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetLeft:I

    const-string/jumbo v0, "safeInsetTop"

    .line 63
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetTop:I

    const-string/jumbo v0, "safeInsetRight"

    .line 64
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetRight:I

    const-string/jumbo v0, "safeInsetBottom"

    .line 65
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetBottom:I

    const-string v0, "captureSharedBundle"

    .line 66
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureSharedBundle:Landroid/os/Bundle;

    const-string/jumbo v0, "statusBarHeight"

    .line 67
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarHeight:I

    const-string/jumbo v0, "navigationBarHeight"

    .line 68
    invoke-virtual {p4, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarHeight:I

    const-string/jumbo v0, "stackBounds"

    .line 69
    invoke-virtual {p4, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p4

    check-cast p4, Landroid/graphics/Rect;

    iput-object p4, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStackBounds:Landroid/graphics/Rect;

    .line 70
    iput-boolean p2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarVisible:Z

    .line 71
    iput-boolean p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarVisible:Z

    .line 72
    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mWindowMode:I

    .line 74
    iget p2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureDisplay:I

    if-ne p2, v1, :cond_0

    .line 75
    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotUtils;->getSubDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mHelperContext:Landroid/content/Context;

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->initiallizeScreenshotVariable()V

    .line 79
    sget-object p1, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "initiallize() mCaptureType:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureType:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mSweepDirection:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSweepDirection:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mCaptureDisplay:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureDisplay:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mCaptureOrigin:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureOrigin:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mStatusBarHeight: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarHeight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mNavigationBarHeight: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarHeight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mStatusBarVisible:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarVisible:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mNavigationBarVisible:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarVisible:Z

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, ", mBuiltInDisplayId:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mBuiltInDisplayId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mSafeInsetLeft:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetLeft:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mSafeInsetTop:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetTop:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mSafeInsetRight:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetRight:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mSafeInsetBottom:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mSafeInsetBottom:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mStackBounds:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStackBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", mWindowMode:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mWindowMode:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", mDegrees:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected initiallizeCaptureType()V
    .locals 1

    const/4 v0, 0x1

    .line 98
    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mCaptureType:I

    return-void
.end method

.method protected initiallizeScreenshotVariable()V
    .locals 5

    .line 242
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getCurrentDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplay:Landroid/view/Display;

    .line 243
    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDisplayMetrics(Landroid/view/Display;)Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 244
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplayWidth:I

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenWidth:I

    .line 245
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplayHeight:I

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenHeight:I

    int-to-float v1, v1

    .line 246
    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    int-to-float v0, v0

    .line 247
    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    .line 248
    iget-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDisplay:Landroid/view/Display;

    invoke-virtual {p0, v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDegrees(Landroid/view/Display;)F

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    .line 249
    sget-object v0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initiallizeScreenshotVariable() mDegrees = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 251
    iget v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x2

    new-array v0, v0, [F

    .line 252
    iget v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    const/4 v2, 0x0

    aput v1, v0, v2

    iget v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 253
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 254
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 255
    iget v4, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mDegrees:F

    neg-float v4, v4

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 256
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 257
    aget v1, v0, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v0, v2

    .line 258
    aget v1, v0, v3

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    aput v1, v0, v3

    .line 259
    aget v1, v0, v2

    iput v1, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeWidth:F

    .line 260
    aget v0, v0, v3

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mScreenNativeHeight:F

    .line 263
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mRectToCapture:Landroid/graphics/Rect;

    .line 264
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getBuiltInDisplayId()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mBuiltInDisplayId:I

    return-void
.end method

.method public isNavigationBarVisible()Z
    .locals 0

    .line 217
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mNavigationBarVisible:Z

    return p0
.end method

.method public isShowScreenshotAnimation()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isStatusBarVisible()Z
    .locals 0

    .line 213
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->mStatusBarVisible:Z

    return p0
.end method

.method public onPostScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    return-object p1
.end method
