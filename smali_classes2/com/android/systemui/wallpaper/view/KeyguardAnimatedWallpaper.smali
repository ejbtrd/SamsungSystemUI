.class public Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;
.super Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;
.source "KeyguardAnimatedWallpaper.java"


# instance fields
.field private mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

.field private mContext:Landroid/content/Context;

.field private mCurrentWhich:I

.field private mDlsViewMode:I

.field private mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

.field private mHasWindowFocus:Z

.field private mIsBlurEnabled:Z

.field private mIsPlayingAnimation:Z

.field private mIsPreview:Z

.field private mLastMobileKeyboardCoverd:I

.field private mPackageName:Ljava/lang/String;

.field private mShowing:Z

.field private mViewHeight:I

.field private mViewWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/ExecutorService;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/function/Consumer;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, p3

    move-object v7, p4

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move/from16 v10, p7

    .line 81
    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;ZIILcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/ExecutorService;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/function/Consumer;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZIILcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/ExecutorService;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/function/Consumer;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "ZII",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    move-object v7, p0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p6

    move-object/from16 v3, p8

    move-object v4, p7

    move-object/from16 v5, p9

    move v6, p3

    .line 87
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Z)V

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    const/4 v1, 0x2

    .line 61
    iput v1, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mCurrentWhich:I

    .line 62
    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    .line 63
    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    .line 68
    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsBlurEnabled:Z

    .line 75
    iput v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mDlsViewMode:I

    move-object v0, p1

    .line 89
    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    move v0, p3

    .line 90
    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPreview:Z

    move v0, p4

    .line 91
    iput v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mViewWidth:I

    move v0, p5

    .line 92
    iput v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mViewHeight:I

    move/from16 v0, p10

    .line 93
    iput v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mCurrentWhich:I

    .line 94
    new-instance v0, Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/FixedOrientationController;-><init>(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)V

    iput-object v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    .line 95
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->hasWindowFocus()Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    .line 96
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getDrawState()Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    move-object v0, p2

    .line 97
    invoke-direct {p0, p2}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    return-void
.end method

.method private getContextOf(Ljava/lang/String;)Landroid/content/Context;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 225
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private init(Ljava/lang/String;)V
    .locals 1

    .line 101
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "XmlName = animation;Default package name = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardAnimatedWallpaper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 103
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutDirection(I)V

    const/high16 p1, -0x1000000

    .line 104
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->stopAnimation()V

    .line 107
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->clearAnimation()V

    .line 108
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 111
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->getContextOf(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->getComplexAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 114
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    if-eqz p1, :cond_1

    .line 118
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 119
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    invoke-interface {p1}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onDrawFinished()V

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    invoke-interface {p1}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onPreviewReady()V

    .line 125
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsBlurEnabled:Z

    if-nez p1, :cond_2

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->playAnimation()V

    :cond_2
    const/4 p1, 0x1

    .line 128
    iput p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    return-void
.end method

.method private refreshViews()V
    .locals 2

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "refreshViews: isBlurEnabled = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsBlurEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", focus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAnimatedWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mCurrentWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 352
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    .line 353
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->playAnimation()V

    :cond_0
    const/4 v0, 0x1

    .line 356
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    :cond_1
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string v0, "KeyguardAnimatedWallpaper"

    const-string v1, "cleanUp"

    .line 324
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->stopAnimation()V

    .line 326
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x3

    .line 327
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    return-void
.end method

.method public getComplexAnimation(Landroid/content/Context;Landroid/content/Context;)Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 231
    :cond_0
    new-instance v0, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    iget v6, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mViewWidth:I

    iget v7, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mViewHeight:I

    iget-boolean v8, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPreview:Z

    iget v9, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mLastMobileKeyboardCoverd:I

    iget-object v10, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p0

    invoke-direct/range {v1 .. v10}, Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;IIZILcom/android/systemui/wallpaper/WallpaperResultCallback;)V

    .line 232
    new-instance p0, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;-><init>(Lcom/android/systemui/wallpaper/theme/xmlparser/ParserData;)V

    .line 233
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/xmlparser/ThemeParser;->generateAnimationFromXml()Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "KeyguardAnimatedWallpaper"

    .line 240
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

    .line 241
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 242
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 243
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v1

    .line 246
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 248
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 250
    :cond_0
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 150
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onAttachedToWindow()V

    .line 151
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getDrawState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onAttachedToWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAnimatedWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsBlurEnabled:Z

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->playAnimation()V

    :cond_0
    return-void
.end method

.method public onBackDropLayoutChange()V
    .locals 1

    .line 341
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onBackDropLayoutChange()V

    .line 342
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPreview:Z

    if-nez v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    .line 345
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->refreshViews()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 332
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 333
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPreview:Z

    if-nez p1, :cond_0

    .line 334
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    .line 336
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->refreshViews()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 160
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onDetachedFromWindow()V

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDetachedFromWindow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAnimatedWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->stopAnimation()V

    return-void
.end method

.method public onDlsViewModeChanged(IZ)V
    .locals 2

    .line 287
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mDlsViewMode:I

    if-eq v0, p1, :cond_1

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDlsViewModeChanged(), mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAnimatedWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mDlsViewMode:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->stopAnimation()V

    goto :goto_0

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_1

    .line 294
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->playAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    const-string v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "onPause() - screenTurnedOff"

    .line 271
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->stopAnimation()V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResume, mDrawingState:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAnimatedWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPreview:Z

    if-nez v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mFixedOrientationController:Lcom/android/systemui/wallpaper/FixedOrientationController;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/FixedOrientationController;->applyPortraitRotation()V

    .line 260
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPreview:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    :cond_1
    const-string/jumbo v0, "onResume, reload"

    .line 262
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 263
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    .line 264
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->refreshViews()V

    .line 266
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->playAnimation()V

    return-void
.end method

.method public onUnlock()V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2

    .line 167
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 169
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    if-eq v0, p1, :cond_2

    .line 170
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getDrawState()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    .line 171
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    if-eqz p1, :cond_1

    .line 173
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onWindowFocusChanged() mShowing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", blur = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsBlurEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardAnimatedWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->playAnimation()V

    goto :goto_1

    .line 180
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->stopAnimation()V

    :cond_2
    :goto_1
    return-void
.end method

.method public playAnimation()V
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 188
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsBlurEnabled:Z

    const-string v1, "KeyguardAnimatedWallpaper"

    if-eqz v0, :cond_1

    const-string/jumbo p0, "playAnimation() skip by blur"

    .line 189
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 194
    :cond_1
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mDlsViewMode:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    const-string/jumbo p0, "playAnimation() skip by DLS"

    .line 195
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const-string/jumbo v0, "playAnimation"

    .line 200
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    .line 202
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->playAnimation()V

    :cond_3
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .line 218
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "stopAnimation"

    .line 219
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 220
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsPlayingAnimation:Z

    .line 221
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mComplexAnimationBuilder:Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/theme/builder/ComplexAnimationBuilder;->stopAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public update()V
    .locals 2

    const-string v0, "KeyguardAnimatedWallpaper"

    const-string/jumbo v1, "update New wallpaper!"

    .line 304
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mCurrentWhich:I

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getAnimatedPkgName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 307
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->cleanUp()V

    .line 308
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->init(Ljava/lang/String;)V

    goto :goto_0

    .line 310
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    if-eqz v0, :cond_1

    .line 311
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onPreviewReady()V

    :cond_1
    const/4 v0, 0x1

    .line 313
    iput v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDrawingState:I

    :goto_0
    return-void
.end method

.method public updateBlurState(Z)V
    .locals 1

    .line 138
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mIsBlurEnabled:Z

    .line 139
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mHasWindowFocus:Z

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->stopAnimation()V

    goto :goto_0

    .line 143
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->playAnimation()V

    :cond_1
    :goto_0
    return-void
.end method

.method public updateDrawState(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;->mShowing:Z

    return-void
.end method
