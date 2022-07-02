.class public Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;
.super Landroid/app/Activity;
.source "KeyguardWallpaperPreviewActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;
    }
.end annotation


# static fields
.field private static sConfigured:Z = false

.field private static sIsActivityAlive:Z


# instance fields
.field private mBackgroundImageView:Landroid/widget/ImageView;

.field private mBackgroundImageViewHome:Landroid/widget/ImageView;

.field private mBackgroundImageViewLock:Landroid/widget/ImageView;

.field private mBottomContainer:Landroid/view/ViewGroup;

.field private mCapturedImageView:Landroid/widget/ImageView;

.field private mColorInfo:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mContextThemeWrapper:Landroid/view/ContextThemeWrapper;

.field private mCurrentWhich:I

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mPackageName:Ljava/lang/String;

.field private mPreviewArea:Landroid/view/ViewGroup;

.field private mPreviewContainer:Landroid/widget/FrameLayout;

.field private mPreviewRootView:Landroid/widget/FrameLayout;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mRootView:Landroid/widget/FrameLayout;

.field private mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

.field private mSetAsWallpaper:Z

.field private mSetAsWallpaperButton:Landroid/widget/Button;

.field private mSettingDescriptionTextView:Landroid/widget/TextView;

.field private mWallpaperDescription:Landroid/widget/TextView;

.field private mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

.field private mWallpaperType:I

.field private mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;


# direct methods
.method public static synthetic $r8$lambda$TsAGTl3TtglH3LSKqQGA6OTkryk(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->lambda$doSetAsWallpaper$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$gyDQNurawjjeic7vchFIsooMeDQ(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->lambda$onDestroy$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wIiJS1nGtldSrbqOR8qJ4AKX798(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->lambda$initPreviewArea$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 82
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 122
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x2

    .line 132
    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    .line 136
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 82
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initBackgroundImageView(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->dismissProgressDialog()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/graphics/Bitmap;
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->loadAnimatedBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V
    .locals 0

    .line 82
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->doSetAsWallpaper()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)Landroid/widget/ProgressBar;
    .locals 0

    .line 82
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object p0
.end method

.method private dismissProgressDialog()V
    .locals 3

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "dismissProgressDialog()"

    .line 665
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 666
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewRootView:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 668
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewRootView:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$anim;->wallpaper_preview_fade_in:I

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 670
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$anim;->wallpaper_preview_fade_out:I

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 671
    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$4;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$4;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 687
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method private doSetAsWallpaper()V
    .locals 14

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "doSetAsWallpaper()"

    .line 506
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    .line 508
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaper:Z

    const-string v2, "content://com.sec.knox.provider/RestrictionPolicy4"

    .line 511
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 513
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string v2, "isWallpaperChangeAllowed"

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, v2

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    .line 516
    :try_start_0
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 517
    iget-object v5, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v5}, Landroid/app/WallpaperManager;->isSetWallpaperAllowed()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "false"

    .line 518
    invoke-interface {v3, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v3, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 524
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    goto :goto_1

    .line 519
    :cond_1
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_wallpaper_changes_restrict_toast:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 520
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 524
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    return-void

    :catchall_0
    move-exception p0

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 525
    throw p0

    .line 528
    :cond_2
    :goto_1
    iget v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    move-result v2

    .line 529
    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    const-string/jumbo v5, "white_lockscreen_navigationbar"

    const-string/jumbo v6, "white_lockscreen_statusbar"

    const-string/jumbo v7, "white_lockscreen_wallpaper"

    const-string v8, "lockscreen_wallpaper_sub"

    const-string v9, "lockscreen_wallpaper"

    const-string/jumbo v10, "sub_display_lockscreen_wallpaper_transparency"

    const-string v11, "lockscreen_wallpaper_transparent"

    const/4 v12, 0x3

    if-eq v3, v1, :cond_7

    const/4 v13, 0x4

    if-eq v3, v13, :cond_3

    goto/16 :goto_9

    :cond_3
    if-eqz v2, :cond_5

    .line 546
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move v12, v4

    :goto_2
    invoke-direct {p0, v10, v1, v12}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    .line 547
    invoke-direct {p0, v8, v4, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    goto :goto_4

    .line 549
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    if-eqz v2, :cond_6

    goto :goto_3

    :cond_6
    move v12, v4

    :goto_3
    invoke-direct {p0, v11, v1, v12}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    .line 550
    invoke-direct {p0, v9, v4, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 552
    :goto_4
    invoke-direct {p0, v7, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 553
    invoke-direct {p0, v6, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 554
    invoke-direct {p0, v5, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 556
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "doSetAsWallpaper: which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/WallpaperManager;->setAnimatedLockscreenWallpaper(Ljava/lang/String;IZ)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    .line 559
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 561
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_wallpaper_applied_toast:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_9

    :cond_7
    if-eqz v2, :cond_9

    .line 532
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    move v12, v4

    :goto_6
    invoke-direct {p0, v10, v1, v12}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    .line 533
    invoke-direct {p0, v8, v4, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    goto :goto_8

    .line 535
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    if-eqz v0, :cond_a

    goto :goto_7

    :cond_a
    move v12, v4

    :goto_7
    invoke-direct {p0, v11, v1, v12}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettings(Ljava/lang/String;II)Z

    .line 536
    invoke-direct {p0, v9, v4, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 538
    :goto_8
    invoke-direct {p0, v7, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 539
    invoke-direct {p0, v6, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 540
    invoke-direct {p0, v5, v1, v4}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setSystemSettingsForUser(Ljava/lang/String;II)Z

    .line 541
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    invoke-virtual {v0, v2, v3, v1}, Landroid/app/WallpaperManager;->setMotionWallpaper(Ljava/lang/String;IZ)V

    .line 542
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->kg_wallpaper_applied_toast:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 565
    :goto_9
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isOpenTheme(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 566
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 567
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sendAnalyticsEventLogs()V

    goto :goto_a

    .line 569
    :cond_b
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->showProgressDialog()V

    .line 570
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_a
    return-void
.end method

.method private executeColorThemeWizard()V
    .locals 5

    .line 743
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.samsung.intent.action.COLOR_THEME_SETUP_WIZARD"

    .line 744
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 746
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 747
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    .line 748
    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    .line 749
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x46

    invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 750
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    const-string v2, "blur_bitmap"

    .line 752
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string/jumbo v1, "wallpaper_type"

    const/4 v2, 0x2

    .line 753
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 754
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 756
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 757
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sendAnalyticsEventLogs()V

    return-void
.end method

.method private getLegacyCapturedBitmap()Landroid/graphics/Bitmap;
    .locals 4

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "getLegacyCapturedBitmap()"

    .line 481
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/storage/emulated/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/Android/data/com.android.systemui/cache/lockscreen_capture_port.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 488
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 489
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_1

    .line 491
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initCapturedImageView(): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isn\'t exist"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "android.resource://com.android.systemui/drawable/lockscreen_capture_dummy_port"

    .line 493
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 494
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 495
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 496
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 498
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    move-object p0, v0

    :goto_1
    return-object p0
.end method

.method private getPreviewRatio()F
    .locals 3

    .line 707
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 708
    sget v1, Lcom/android/systemui/R$dimen;->kg_preview_ratio:I

    .line 709
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_1

    .line 710
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v1

    if-nez v1, :cond_0

    .line 711
    sget v1, Lcom/android/systemui/R$dimen;->kg_foldable_sub_preview_ratio:I

    goto :goto_0

    .line 713
    :cond_0
    sget v1, Lcom/android/systemui/R$dimen;->kg_foldable_preview_ratio:I

    .line 717
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 718
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result p0

    return p0
.end method

.method private static getScreenSize(Landroid/content/Context;Z)Landroid/util/Size;
    .locals 4

    .line 692
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const-string/jumbo v1, "window"

    .line 694
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 695
    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object p0

    .line 696
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 697
    invoke-virtual {p0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 698
    iget p0, v1, Landroid/graphics/Point;->x:I

    .line 699
    iget v1, v1, Landroid/graphics/Point;->y:I

    const/4 v2, 0x1

    if-nez p1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v3, v1

    goto :goto_1

    :cond_1
    :goto_0
    move v3, p0

    :goto_1
    if-nez p1, :cond_2

    if-ne v0, v2, :cond_3

    :cond_2
    move p0, v1

    .line 703
    :cond_3
    new-instance p1, Landroid/util/Size;

    invoke-direct {p1, v3, p0}, Landroid/util/Size;-><init>(II)V

    return-object p1
.end method

.method private getWallpaperTypeInteger(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 601
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getWallpaperTypeInteger(): type="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", locType="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardWallpaperPreviewActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo p0, "motion"

    .line 603
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const-string v0, "download"

    if-nez p0, :cond_1

    const-string p0, "cinematic"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "animated"

    .line 609
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 610
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x4

    return p0

    .line 604
    :cond_1
    :goto_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    if-eqz p2, :cond_3

    const-string/jumbo p0, "preload"

    .line 606
    invoke-virtual {p2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, -0x1

    return p0
.end method

.method private init()V
    .locals 5

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "init()"

    .line 305
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    const/4 v2, 0x4

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    if-eq v1, v2, :cond_0

    .line 313
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "init(): mWallpaperType="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 317
    :cond_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_3

    .line 318
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v0

    if-ne v0, v3, :cond_1

    .line 319
    sget v0, Lcom/android/systemui/R$string;->kg_wallpaper_foldable_main_settting_description:I

    goto :goto_0

    .line 320
    :cond_1
    sget v0, Lcom/android/systemui/R$string;->kg_wallpaper_foldable_sub_settting_description:I

    .line 321
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSettingDescriptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 323
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    if-nez v0, :cond_2

    .line 325
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 328
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/systemui/R$dimen;->kg_foldable_preview_top_margin:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 329
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 331
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSettingDescriptionTextView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    :goto_1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initPreviewArea()V

    .line 336
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    if-ne v0, v2, :cond_4

    .line 337
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    .line 346
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaperButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$3;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private initBackgroundImageView(Landroid/graphics/Bitmap;)V
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initBackgroundImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private initBackgroundImageView(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 7

    const-string v0, "KeyguardWallpaperPreviewActivity"

    if-nez p2, :cond_0

    const-string p1, "initBackgroundImageView(): wallpaperBitmap is null"

    .line 410
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 414
    :cond_0
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 415
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eqz v1, :cond_4

    if-nez v2, :cond_1

    goto :goto_1

    .line 422
    :cond_1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v3

    .line 423
    invoke-virtual {p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v4

    if-eqz v3, :cond_3

    if-nez v4, :cond_2

    goto :goto_0

    .line 429
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initBackgroundImageView() bw = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , bh = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , vw = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , vh = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getBlurredBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 432
    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const v0, 0x404d4d4d

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 433
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    .line 425
    :cond_3
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initBackgroundImageView(): viewWidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", viewHeight="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 417
    :cond_4
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "initBackgroundImageView(): bitmapWidth="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", bitmapHeight="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private initCapturedImageView()V
    .locals 6

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "initCapturedImageView()"

    .line 438
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 442
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "content://com.android.systemui.keyguard.image"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 443
    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v3, v4

    const-string v1, "/custom?width=%d&height=%d"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "uri : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/ImageDecoder;->createSource(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/ImageDecoder$Source;

    move-result-object v0

    const/4 v1, 0x0

    .line 450
    :try_start_0
    invoke-static {v0}, Landroid/graphics/ImageDecoder;->decodeBitmap(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 452
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v1

    :goto_0
    if-nez v0, :cond_0

    .line 457
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getLegacyCapturedBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_2

    .line 463
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->loadAnimatedBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->applyPreviewVisibility(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eq v0, v2, :cond_1

    .line 464
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 465
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    move-object v0, v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 470
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 475
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 476
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCapturedImageView:Landroid/widget/ImageView;

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method private initPreviewArea()V
    .locals 2

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "initPreviewArea()"

    .line 355
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$doSetAsWallpaper$2()V
    .locals 0

    .line 571
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->executeColorThemeWizard()V

    return-void
.end method

.method private synthetic lambda$initPreviewArea$1()V
    .locals 2

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->updateWallpaperView()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "initPreviewArea, fail."

    .line 360
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v0, :cond_1

    .line 366
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 367
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 368
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onResume()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onDestroy$0()V
    .locals 1

    .line 295
    sget-boolean v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sIsActivityAlive:Z

    if-nez v0, :cond_0

    .line 296
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method private loadAnimatedBackgroundBitmap()Landroid/graphics/Bitmap;
    .locals 6

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string v1, "loadAnimatedBackgroundBitmap()"

    .line 577
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 581
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 582
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    .line 585
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 588
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadAnimatedBackgroundBitmap(): NameNotFoundException mPackageName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    :goto_0
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    const-string v4, "lockscreen_wallpaper"

    const-string v5, "drawable"

    invoke-virtual {v2, v4, v5, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 591
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "loadAnimatedBackgroundBitmap: id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , pkg = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v2, :cond_0

    .line 593
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    .line 594
    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private sendAnalyticsEventLogs()V
    .locals 3

    .line 726
    iget v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "200_C"

    goto :goto_0

    :cond_0
    const-string v0, "200"

    :goto_0
    const-string v1, "0007"

    const-string v2, "Theme"

    .line 732
    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    iget p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    .line 737
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getWallpaperTypeToString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, "0008"

    .line 736
    invoke-static {v0, v1, p0}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setContentDescription(Landroid/content/Context;)V
    .locals 6

    .line 258
    sget v0, Lcom/android/systemui/R$string;->kg_wallpaper_preview_title_lock:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 261
    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    const/4 v4, 0x4

    if-eq v1, v4, :cond_0

    const-string v1, ""

    goto :goto_0

    .line 267
    :cond_0
    sget v1, Lcom/android/systemui/R$string;->kg_wallpaper_preview_title_animated:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 264
    :cond_1
    sget v1, Lcom/android/systemui/R$string;->kg_wallpaper_preview_title_motion:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 271
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/widget/FrameLayout;

    sget v4, Lcom/android/systemui/R$string;->kg_wallpaper_content_desc:I

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v2, v5

    aput-object v0, v2, v3

    invoke-virtual {p1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setSystemSettings(Ljava/lang/String;II)Z
    .locals 2

    .line 647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSystemSettings(): key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardWallpaperPreviewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    if-eq p2, p3, :cond_0

    .line 650
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private setSystemSettingsForUser(Ljava/lang/String;II)Z
    .locals 2

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSystemSettingsForUser(): key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardWallpaperPreviewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    invoke-static {v0, p1, p2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p2

    if-eq p2, p3, :cond_0

    .line 640
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, p1, p3, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private showProgressDialog()V
    .locals 2

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "showProgressDialog()"

    .line 657
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->isAnimating()Z

    move-result v0

    if-nez v0, :cond_0

    .line 659
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewRootView:Landroid/widget/FrameLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 660
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private updatePreviewSize()V
    .locals 5

    const/4 v0, 0x0

    .line 619
    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getScreenSize(Landroid/content/Context;Z)Landroid/util/Size;

    move-result-object v0

    .line 620
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getPreviewRatio()F

    move-result v1

    .line 622
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 623
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 625
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-nez v1, :cond_0

    .line 627
    new-instance v1, Landroid/view/ViewGroup$LayoutParams;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 630
    :cond_0
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 631
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 633
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private updateWallpaperView()Z
    .locals 17

    move-object/from16 v0, p0

    .line 374
    iget v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    const-string v2, "initPreviewArea(): mPackageName is empty"

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v5, "KeyguardWallpaperPreviewActivity"

    if-eq v1, v3, :cond_4

    const/4 v6, 0x2

    if-eq v1, v6, :cond_2

    const/4 v6, 0x4

    if-eq v1, v6, :cond_0

    goto/16 :goto_0

    .line 392
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 396
    :cond_1
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;

    iget-object v7, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    const/4 v9, 0x1

    iget-object v2, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    .line 397
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    move-result v10

    iget-object v2, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v11

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v14, 0x0

    const/4 v15, 0x0

    iget v2, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    move-object v6, v1

    move/from16 v16, v2

    invoke-direct/range {v6 .. v16}, Lcom/android/systemui/wallpaper/view/KeyguardAnimatedWallpaper;-><init>(Landroid/content/Context;Ljava/lang/String;ZIILcom/android/keyguard/KeyguardUpdateMonitor;Ljava/util/concurrent/ExecutorService;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/function/Consumer;I)V

    iput-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    goto :goto_0

    .line 384
    :cond_2
    iget-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "initPreviewArea(): mColorInfo is empty"

    .line 385
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 388
    :cond_3
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    iget-object v7, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    iget-object v10, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v11, 0x0

    const/4 v12, 0x0

    iget-object v13, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    const/4 v14, 0x1

    iget v15, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    move-object v6, v1

    invoke-direct/range {v6 .. v15}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    goto :goto_0

    .line 376
    :cond_4
    iget-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 377
    invoke-static {v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 380
    :cond_5
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;

    iget-object v7, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    iget-object v10, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mExecutor:Ljava/util/concurrent/ExecutorService;

    const/4 v11, 0x0

    iget-object v12, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    const/4 v13, 0x0

    const/4 v14, 0x1

    iget v15, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    move-object v6, v1

    invoke-direct/range {v6 .. v15}, Lcom/android/systemui/wallpaper/view/KeyguardMotionWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;Ljava/lang/String;Ljava/lang/String;ZI)V

    iput-object v1, v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    :goto_0
    return v3
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 176
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v0, "onCreate()"

    .line 177
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 179
    sput-boolean p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sIsActivityAlive:Z

    .line 180
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    .line 181
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x103012b

    invoke-direct {v0, v1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContextThemeWrapper:Landroid/view/ContextThemeWrapper;

    .line 182
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wallpaper"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 184
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 185
    iget-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperManager:Landroid/app/WallpaperManager;

    if-nez v1, :cond_0

    goto/16 :goto_0

    .line 190
    :cond_0
    sget v1, Lcom/android/systemui/R$layout;->keyguard_wallpaper_preview_activity:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->setContentView(I)V

    const-string/jumbo v1, "type"

    .line 192
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "locType"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->getWallpaperTypeInteger(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperType:I

    const-string/jumbo v1, "packageName"

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPackageName:Ljava/lang/String;

    const-string v1, "colorInfo"

    .line 194
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mColorInfo:Ljava/lang/String;

    .line 196
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x400

    .line 197
    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 198
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iput p1, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/16 v1, 0x300

    .line 200
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 202
    sget v0, Lcom/android/systemui/R$id;->root_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRootView:Landroid/widget/FrameLayout;

    .line 203
    sget v0, Lcom/android/systemui/R$id;->preview_root_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewRootView:Landroid/widget/FrameLayout;

    .line 204
    sget v0, Lcom/android/systemui/R$id;->preview_area:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewArea:Landroid/view/ViewGroup;

    .line 205
    sget v0, Lcom/android/systemui/R$id;->preview_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/widget/FrameLayout;

    .line 206
    sget v0, Lcom/android/systemui/R$id;->wallpaper_setting_description:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSettingDescriptionTextView:Landroid/widget/TextView;

    .line 207
    sget v0, Lcom/android/systemui/R$id;->captured_image_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCapturedImageView:Landroid/widget/ImageView;

    .line 208
    sget v0, Lcom/android/systemui/R$id;->background_image_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageView:Landroid/widget/ImageView;

    .line 209
    sget v0, Lcom/android/systemui/R$id;->background_image_view_lock:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewLock:Landroid/widget/ImageView;

    .line 210
    sget v0, Lcom/android/systemui/R$id;->background_image_view_home:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBackgroundImageViewHome:Landroid/widget/ImageView;

    .line 211
    sget v0, Lcom/android/systemui/R$id;->bottom_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mBottomContainer:Landroid/view/ViewGroup;

    .line 212
    sget v0, Lcom/android/systemui/R$id;->wallpaper_description:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperDescription:Landroid/widget/TextView;

    .line 213
    sget v0, Lcom/android/systemui/R$id;->set_as_wallpaper_button:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaperButton:Landroid/widget/Button;

    .line 214
    sget v0, Lcom/android/systemui/R$id;->preview_progress_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 216
    new-instance v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    const/4 v0, 0x0

    .line 217
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaper:Z

    .line 219
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mPreviewContainer:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 220
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRoundContainer:Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$RoundPreviewContainer;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 222
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->showProgressDialog()V

    .line 223
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->init()V

    .line 224
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mRootView:Landroid/widget/FrameLayout;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->scaleMiddleDensityViewIfNeeded(Landroid/view/View;)Z

    .line 226
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->updatePreviewSize()V

    .line 227
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->initCapturedImageView()V

    .line 229
    sget-boolean v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sConfigured:Z

    if-nez v0, :cond_1

    .line 231
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object p0

    .line 230
    invoke-static {p0}, Lcom/android/systemui/util/SystemUIAnalytics;->initSystemUIAnalyticsStates(Landroid/app/Application;)V

    .line 232
    sput-boolean p1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sConfigured:Z

    :cond_1
    return-void

    .line 186
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 4

    .line 287
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "onDestroy()"

    .line 288
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->dismissProgressDialog()V

    const/4 v0, 0x0

    .line 291
    sput-boolean v0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->sIsActivityAlive:Z

    .line 293
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mSetAsWallpaper:Z

    if-eqz v0, :cond_0

    .line 294
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;)V

    const-wide/16 v2, 0x9c4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 300
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 2

    .line 277
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    const-string v0, "KeyguardWallpaperPreviewActivity"

    const-string/jumbo v1, "onPause()"

    .line 278
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz p0, :cond_0

    .line 281
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onPause()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 238
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 240
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContextThemeWrapper:Landroid/view/ContextThemeWrapper;

    sget v1, Lcom/android/systemui/R$string;->kg_wallpaper_preview_disable_multi_window:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 244
    invoke-virtual {p0}, Landroid/app/Activity;->semExitMultiWindowMode()Z

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getFolderStateBasedWhich(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onResume() which = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mCurrentWhich:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardWallpaperPreviewActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mWallpaperView:Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    if-eqz v0, :cond_1

    .line 251
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->onResume()V

    .line 254
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperPreviewActivity;->setContentDescription(Landroid/content/Context;)V

    return-void
.end method
