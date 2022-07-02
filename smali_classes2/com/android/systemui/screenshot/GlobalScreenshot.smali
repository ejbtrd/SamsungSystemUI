.class public Lcom/android/systemui/screenshot/GlobalScreenshot;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"


# static fields
.field private static final CUSTOM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

.field private static final SINEINOUT70:Landroid/view/animation/PathInterpolator;

.field private static final TAG:Ljava/lang/String; = "GlobalScreenshot"


# instance fields
.field private mAnimationType:I

.field private mAnimationView:Lcom/android/systemui/screenshot/CaptureEffectView;

.field private mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

.field private mContext:Landroid/content/Context;

.field private mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

.field private mNotificationIconSize:I

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOldFilePathName:Ljava/lang/String;

.field private mOnAnimation:Z

.field private mPresentation:Landroid/app/Presentation;

.field private mScreenBitmap:Landroid/graphics/Bitmap;

.field private mScreenBitmapList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mScreenshotLayout:Landroid/view/View;

.field private mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

.field private mScreenshotView:Landroid/widget/ImageView;

.field final mShutterEffectLock:Ljava/lang/Object;

.field private mTopApplication:Ljava/lang/String;

.field private mVibrator:Landroid/os/Vibrator;

.field private mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 793
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v1, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->CUSTOM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    .line 794
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ea8f5c3    # 0.33f

    const v4, 0x3e99999a    # 0.3f

    invoke-direct {v0, v1, v2, v4, v3}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->SINEINOUT70:Landroid/view/animation/PathInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    .line 195
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 168
    iput v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    const/4 v1, 0x0

    .line 169
    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Lcom/android/systemui/screenshot/CaptureEffectView;

    .line 177
    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    .line 190
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    .line 717
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    .line 196
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 197
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    .line 199
    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 201
    sget v4, Lcom/android/systemui/R$layout;->global_screenshot:I

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    .line 203
    sget v3, Lcom/android/systemui/R$id;->global_screenshot_selector:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    iput-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    .line 204
    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 205
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 206
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusable(Z)V

    .line 207
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$1;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const-string/jumbo v0, "window"

    .line 216
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    const-string/jumbo v0, "notification"

    .line 218
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    const p1, 0x1050006

    .line 222
    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    .line 225
    new-instance p1, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    const/4 v0, 0x0

    .line 226
    invoke-virtual {p1, v0}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->load(I)V

    .line 227
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    .line 229
    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setAnimationStarted(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/View;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/view/WindowManager;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenCaptureHelper;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/screenshot/GlobalScreenshot;Lcom/android/systemui/screenshot/ScreenCaptureHelper;)Lcom/android/systemui/screenshot/ScreenCaptureHelper;
    .locals 0

    .line 156
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/screenshot/GlobalScreenshot;)Landroid/content/Context;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;
    .locals 0

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getScreenCaptureHelper(Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/ScreenshotSelectorView;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/screenshot/GlobalScreenshot;)V
    .locals 0

    .line 156
    invoke-direct {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->playCaptureSound()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/systemui/screenshot/GlobalScreenshot;FFLjava/lang/Runnable;)V
    .locals 0

    .line 156
    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setupAndStartAnimation(FFLjava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/systemui/screenshot/GlobalScreenshot;)Lcom/android/systemui/screenshot/CaptureEffectView;
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Lcom/android/systemui/screenshot/CaptureEffectView;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;Z)V
    .locals 0

    .line 156
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->onFinish(Ljava/lang/Runnable;Z)V

    return-void
.end method

.method private getCapacityState()I
    .locals 7

    .line 535
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "storage"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManager;

    .line 536
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_3

    .line 541
    :try_start_0
    new-instance v2, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v3

    .line 548
    invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v5

    mul-long/2addr v5, v3

    .line 553
    invoke-virtual {p0}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 554
    sget-object p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string v0, "GlobalScreenshot [UBS Enabled Mode]"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const-wide/32 v2, 0x200000

    cmp-long p0, v5, v2

    const/4 v0, 0x0

    if-gez p0, :cond_1

    .line 558
    sget-object p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "GlobalScreenshot available Space = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 560
    :cond_1
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object p0

    const-string v2, "SEC_FLOATING_FEATURE_COMMON_SUPPORT_UNPACK"

    invoke-virtual {p0, v2, v0}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 561
    sget-object p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string v0, "Could not screen apture in live demo binary!!!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    .line 543
    :catch_0
    sget-object p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string v0, "IllegalArgumentException occured when create StatFs."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 567
    :cond_3
    sget-object p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string v0, "GlobalScreenshot extStoragePath is null"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private getScreenCaptureHelper(Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;
    .locals 1

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 681
    invoke-static {p1}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isMobildKeyboardCovered(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 682
    new-instance p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForMobileKeypad;

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForMobileKeypad;-><init>()V

    return-object p0

    .line 683
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isEasyOneHandRunning(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 684
    new-instance p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForEasyOneHand;

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForEasyOneHand;-><init>()V

    return-object p0

    :cond_1
    const/4 p0, 0x2

    if-ne p2, p0, :cond_2

    .line 687
    new-instance p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForPartial;

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForPartial;-><init>()V

    return-object p0

    :cond_2
    const/16 p0, 0x64

    if-ne p2, p0, :cond_3

    .line 689
    new-instance p0, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelperForWindow;-><init>()V

    return-object p0

    .line 692
    :cond_3
    new-instance p0, Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-direct {p0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;-><init>()V

    return-object p0
.end method

.method private onFinish(Ljava/lang/Runnable;Z)V
    .locals 4

    .line 900
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 901
    :try_start_0
    sget-object v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Capture effect finished! AnimationWindowAdded="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 902
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 903
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V

    .line 904
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    invoke-interface {p1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    if-eqz p2, :cond_1

    .line 905
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    if-eqz p1, :cond_1

    .line 906
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPresentation:Landroid/app/Presentation;

    if-eqz p1, :cond_0

    .line 907
    invoke-virtual {p1}, Landroid/app/Presentation;->dismiss()V

    const/4 p1, 0x0

    .line 908
    iput-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPresentation:Landroid/app/Presentation;

    .line 909
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 910
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 913
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {p1, p2}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 916
    :cond_1
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setAnimationStarted(Z)V

    .line 917
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p0

    .line 917
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :catchall_1
    move-exception p0

    .line 918
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method private playCaptureSound()V
    .locals 11

    const-string/jumbo v0, "service.camera.running"

    const-string v1, "0"

    .line 922
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string/jumbo v3, "service.camera.rec.running"

    .line 923
    invoke-static {v3, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string/jumbo v4, "service.camera.sfs.running"

    .line 924
    invoke-static {v4, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 925
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isVideoCall(Landroid/content/Context;)Z

    move-result v5

    const-string/jumbo v6, "service.bioface.authenticating"

    .line 926
    invoke-static {v6, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 927
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v6, "skip_adaptive_sound"

    const/4 v7, 0x0

    invoke-static {v2, v6, v7}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v6, 0x1

    if-ne v2, v6, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v7

    .line 928
    :goto_0
    sget-object v8, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isCameraRunning = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isRecordRunning = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isSmartStayRunning = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isVtCallRunning = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isBioFaceRunning = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, ", isAdaptiveBrightness = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v9

    const-string v10, "CscFeature_Framework_EnableScrCaptureSoundOnlyInCamera"

    invoke-virtual {v9, v10, v7}, Lcom/samsung/android/feature/SemCscFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v9

    if-eqz v9, :cond_4

    if-eqz v0, :cond_1

    xor-int/lit8 v0, v3, 0x1

    xor-int/lit8 v3, v4, 0x1

    and-int/2addr v0, v3

    xor-int/2addr v1, v6

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    if-eqz v5, :cond_3

    :cond_2
    const-string v0, "[CSCFEATURE_FRAMEWORK_ENABLESCRCAPTURESOUNDONLYINCAMERA] Camera is running!!!!"

    .line 938
    invoke-static {v8, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {p0, v7, v6}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->play(IZ)V

    :cond_3
    return-void

    .line 944
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v9, "audio"

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/AudioManager;

    .line 945
    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v3

    .line 946
    iget-object v9, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "csc_pref_camera_forced_shuttersound_key"

    invoke-static {v9, v10, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v6, :cond_5

    move v9, v6

    goto :goto_1

    :cond_5
    move v9, v7

    :goto_1
    if-eqz v9, :cond_8

    if-eqz v0, :cond_6

    if-nez v4, :cond_6

    if-nez v1, :cond_6

    if-eqz v2, :cond_7

    :cond_6
    if-eqz v5, :cond_8

    :cond_7
    const-string v0, "[forcedShutterSound] Camera is running!!!!"

    .line 949
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {p0, v7, v6}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->play(IZ)V

    goto :goto_2

    :cond_8
    const/4 v0, 0x2

    if-ne v3, v0, :cond_9

    .line 953
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mCameraSound:Lcom/android/systemui/screenshot/ScreenshotCaptureSound;

    invoke-virtual {p0, v7, v7}, Lcom/android/systemui/screenshot/ScreenshotCaptureSound;->play(IZ)V

    goto :goto_2

    :cond_9
    if-ne v3, v6, :cond_a

    .line 956
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mVibrator.semGetSupportedVibrationType() : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 957
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->semGetSupportedVibrationType()I

    move-result v0

    if-le v0, v6, :cond_a

    .line 958
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mVibrator:Landroid/os/Vibrator;

    const/4 v0, 0x4

    invoke-static {v0}, Landroid/view/HapticFeedbackConstants;->semGetVibrationIndex(I)I

    move-result v0

    const/4 v1, -0x1

    sget-object v2, Landroid/os/VibrationEffect$SemMagnitudeType;->TYPE_MAX:Landroid/os/VibrationEffect$SemMagnitudeType;

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->semCreateHaptic(IILandroid/os/VibrationEffect$SemMagnitudeType;)Landroid/os/VibrationEffect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;)V

    :cond_a
    :goto_2
    return-void
.end method

.method private saveScreenshotInWorkerThread(Ljava/lang/Runnable;Landroid/graphics/Bitmap;)V
    .locals 8

    .line 237
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 239
    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 240
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 241
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v0, v0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "com.samsung.palmswipetutorial.PalmSwipeActivity"

    .line 243
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.samsung.pickuptutorial.PalmSwipeTutorial"

    .line 244
    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 245
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenCaptureOrigin()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 246
    sget-object p2, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string v0, "Capture is not executed in PalmSwipeTutorial."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    invoke-direct {p0, v2}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setAnimationStarted(Z)V

    .line 248
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 256
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 259
    :try_start_0
    sget v3, Lcom/android/systemui/R$dimen;->notification_panel_width:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move v3, v2

    :goto_0
    if-gtz v3, :cond_2

    .line 264
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDisplayWidth()I

    move-result v3

    .line 267
    :cond_2
    sget v4, Lcom/android/systemui/R$dimen;->notification_max_height:I

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 269
    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTopApplication:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-string v7, "Screenshot_%s_%s"

    invoke-static {v7, v4, v5, v6}, Lcom/android/systemui/screenshot/ScreenshotUtils;->getImageFileName(Ljava/lang/String;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    .line 270
    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOldFilePathName:Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 271
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "(1)"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 273
    :cond_3
    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOldFilePathName:Ljava/lang/String;

    .line 275
    new-instance v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-direct {v5}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;-><init>()V

    .line 276
    iget-object v6, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iput-object v6, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 277
    iput-object p2, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 278
    iget p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationIconSize:I

    iput p2, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 279
    iput-object p1, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    .line 280
    iput v3, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewWidth:I

    .line 281
    iput v0, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewheight:I

    .line 282
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenCaptureOrigin()I

    move-result p1

    iput p1, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->capturedOrigin:I

    .line 283
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getSafeInsetLeft()I

    move-result p1

    iput p1, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->safeInsetLeft:I

    .line 284
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getSafeInsetTop()I

    move-result p1

    iput p1, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->safeInsetTop:I

    .line 285
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getSafeInsetRight()I

    move-result p1

    iput p1, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->safeInsetRight:I

    .line 286
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getSafeInsetBottom()I

    move-result p1

    iput p1, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->safeInsetBottom:I

    .line 287
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenCaptureType()I

    move-result p1

    iput p1, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->capturedType:I

    .line 288
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenCaptureDisplay()I

    move-result p1

    iput p1, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->capturedDisplay:I

    .line 289
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDisplay()Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    move-result p1

    iput p1, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->rotation:I

    .line 290
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    iput-object p1, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->webData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    .line 291
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->isStatusBarVisible()Z

    move-result p1

    iput-boolean p1, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->statusBarVisible:Z

    .line 292
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->isNavigationBarVisible()Z

    move-result p1

    iput-boolean p1, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->navigationBarVisible:Z

    .line 293
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getStatusBarHeight()I

    move-result p1

    iput p1, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->statusBarHeight:I

    .line 294
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getNavigationBarHeight()I

    move-result p1

    iput p1, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->navigationBarHeight:I

    .line 295
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTopApplication:Ljava/lang/String;

    iput-object p1, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->topApplication:Ljava/lang/String;

    .line 296
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {p1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getCaptureSharedBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->captureSharedBundle:Landroid/os/Bundle;

    .line 297
    iput-object v4, v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageFilePath:Ljava/lang/String;

    .line 298
    new-instance p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-direct {p1, p2, v5, p0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;-><init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V

    new-array p0, v1, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    aput-object v5, p0, v2

    .line 299
    invoke-virtual {p1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private setAnimationStarted(Z)V
    .locals 1

    .line 720
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 721
    :try_start_0
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    .line 722
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setupAndStartAnimation(FFLjava/lang/Runnable;)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    .line 798
    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDisplayId()I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isSubDisplayCapture(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 799
    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/screenshot/ScreenshotUtils;->getSubDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    goto :goto_0

    .line 801
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 803
    :goto_0
    sget v4, Lcom/android/systemui/R$dimen;->global_screenshot_effect_width:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 804
    sget v5, Lcom/android/systemui/R$dimen;->global_screenshot_effect_round_x:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    div-int/lit8 v6, v4, 0x2

    sub-int/2addr v5, v6

    .line 805
    sget v7, Lcom/android/systemui/R$dimen;->global_screenshot_effect_round_y:I

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v3, v6

    mul-int/lit8 v6, v4, 0x2

    int-to-float v6, v6

    sub-float v7, v1, v6

    div-float v7, v1, v7

    sub-float v6, v2, v6

    div-float v6, v2, v6

    .line 810
    sget-object v8, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setupAndStartAnimation: screenWidth:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " scaleStartRatioX:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " screenHeight:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " scaleStartRatioY:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " effectwidth:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " roundX:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " roundY:"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 814
    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenDegrees()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v8, v1, v2

    if-eqz v8, :cond_2

    const/high16 v8, 0x43340000    # 180.0f

    cmpl-float v1, v1, v8

    if-nez v1, :cond_1

    goto :goto_1

    .line 818
    :cond_1
    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-virtual {v1, v4, v3, v5}, Lcom/android/systemui/screenshot/CaptureEffectView;->setEffectParams(III)V

    goto :goto_2

    .line 816
    :cond_2
    :goto_1
    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/systemui/screenshot/CaptureEffectView;->setEffectParams(III)V

    .line 820
    :goto_2
    iget-object v1, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Lcom/android/systemui/screenshot/CaptureEffectView;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 821
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v10, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v13, 0x1

    const/high16 v14, 0x3f000000    # 0.5f

    const/4 v15, 0x1

    const/high16 v16, 0x3f000000    # 0.5f

    move-object v8, v1

    move v9, v7

    move v11, v6

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 822
    new-instance v3, Landroid/view/animation/ScaleAnimation;

    const/high16 v9, 0x3f800000    # 1.0f

    const/high16 v11, 0x3f800000    # 1.0f

    move-object v8, v3

    move v10, v7

    move v12, v6

    invoke-direct/range {v8 .. v16}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    .line 823
    sget-object v4, Lcom/android/systemui/screenshot/GlobalScreenshot;->SINEINOUT70:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1, v4}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v4, 0x96

    .line 824
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    .line 825
    sget-object v6, Lcom/android/systemui/screenshot/GlobalScreenshot;->CUSTOM_INTERPOLATOR:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v3, v6}, Landroid/view/animation/ScaleAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v6, 0xa7

    .line 826
    invoke-virtual {v3, v6, v7}, Landroid/view/animation/ScaleAnimation;->setDuration(J)V

    const-wide/16 v8, 0xd8

    .line 827
    invoke-virtual {v3, v8, v9}, Landroid/view/animation/ScaleAnimation;->setStartOffset(J)V

    .line 829
    new-instance v8, Landroid/view/animation/AnimationSet;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    .line 830
    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 831
    invoke-virtual {v8, v3}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 833
    new-instance v1, Lcom/android/systemui/screenshot/GlobalScreenshot$6;

    move-object/from16 v3, p3

    invoke-direct {v1, v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot$6;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    invoke-virtual {v8, v1}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 857
    new-instance v1, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v1, v2, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 858
    new-instance v9, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v9, v3, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 859
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 860
    invoke-virtual {v9, v6, v7}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const-wide/16 v2, 0x42

    .line 861
    invoke-virtual {v9, v2, v3}, Landroid/view/animation/AlphaAnimation;->setStartOffset(J)V

    const/4 v2, 0x1

    .line 862
    invoke-virtual {v9, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 863
    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$7;

    invoke-direct {v2, v0, v9}, Lcom/android/systemui/screenshot/GlobalScreenshot$7;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/view/animation/AlphaAnimation;)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 878
    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$8;

    invoke-direct {v2, v0}, Lcom/android/systemui/screenshot/GlobalScreenshot$8;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {v9, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 893
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Lcom/android/systemui/screenshot/CaptureEffectView;

    invoke-virtual {v2, v8}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 894
    iget-object v0, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method private startAnimation(FFLjava/lang/Runnable;)V
    .locals 8

    .line 729
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v0

    .line 730
    :try_start_0
    sget-object v1, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startAnimation start!!! mAnimationType : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 732
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getAnimationWindowType()I

    move-result v5

    .line 733
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v1}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getAnimationWindowFlag()I

    move-result v1

    const v2, 0x200080

    or-int/2addr v1, v2

    const/high16 v2, 0x4000000

    or-int v6, v1, v2

    .line 736
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v7, -0x3

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/4 v2, -0x1

    .line 743
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const/16 v2, 0x11

    .line 744
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, 0x1

    .line 745
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v2, 0x0

    .line 746
    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string v3, "ScreenshotFrame"

    .line 747
    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string v3, "ScreenshotAnimation"

    .line 749
    invoke-virtual {v1, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 750
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    .line 751
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->global_screenshot_capture_effect:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/screenshot/CaptureEffectView;

    iput-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mAnimationView:Lcom/android/systemui/screenshot/CaptureEffectView;

    .line 752
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 753
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDisplayId()I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isSubDisplayCapture(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 754
    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/screenshot/ScreenshotUtils;->getSubDisplay(Landroid/content/Context;)Landroid/view/Display;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 756
    new-instance v4, Landroid/app/Presentation;

    iget-object v5, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v3}, Landroid/app/Presentation;-><init>(Landroid/content/Context;Landroid/view/Display;)V

    iput-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPresentation:Landroid/app/Presentation;

    .line 758
    invoke-virtual {v4}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v3, v4, v1}, Landroid/view/Window;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 759
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v1}, Landroid/app/Presentation;->getWindow()Landroid/view/Window;

    move-result-object v1

    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v3, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v3}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 760
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPresentation:Landroid/app/Presentation;

    invoke-virtual {v1}, Landroid/app/Presentation;->show()V

    goto :goto_0

    .line 764
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v3, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v2, v3, v1}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v1

    .line 767
    :try_start_2
    sget-object v2, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mScreenshotLayout "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 770
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    monitor-enter v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 771
    :try_start_3
    iget-object v2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->requestFocus()Z

    .line 772
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 774
    :try_start_4
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance v2, Lcom/android/systemui/screenshot/GlobalScreenshot$5;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/android/systemui/screenshot/GlobalScreenshot$5;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;FFLjava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 784
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-void

    :catchall_0
    move-exception p0

    .line 772
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0

    :catchall_1
    move-exception p0

    .line 784
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    throw p0
.end method


# virtual methods
.method stopScreenshot()V
    .locals 2

    .line 700
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->getSelectionRect()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 701
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPresentation:Landroid/app/Presentation;

    if-eqz v0, :cond_0

    .line 702
    invoke-virtual {v0}, Landroid/app/Presentation;->dismiss()V

    const/4 v0, 0x0

    .line 703
    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mPresentation:Landroid/app/Presentation;

    .line 704
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 705
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_0

    .line 708
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 711
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    invoke-virtual {p0}, Lcom/android/systemui/screenshot/ScreenshotSelectorView;->stopSelection()V

    :cond_2
    return-void
.end method

.method takeScreenshot(Ljava/lang/Runnable;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 309
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mShutterEffectLock:Ljava/lang/Object;

    monitor-enter v2

    .line 310
    :try_start_0
    iget-boolean v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mOnAnimation:Z

    if-eqz v3, :cond_0

    .line 311
    sget-object v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string v3, "Capture is not executed while animation is playing."

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    .line 313
    monitor-exit v2

    return-void

    :cond_0
    const/4 v3, 0x1

    .line 315
    invoke-direct {v0, v3}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setAnimationStarted(Z)V

    .line 316
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 318
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    const/4 v4, 0x0

    if-eqz v2, :cond_1c

    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    if-nez v2, :cond_1

    goto/16 :goto_9

    .line 327
    :cond_1
    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 328
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isReserveBatteryForCallMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 329
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->cant_screenshot_in_ps:I

    sget v5, Lcom/android/systemui/R$string;->reserve_battery_mode:I

    invoke-static {v2, v3, v5}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;II)V

    .line 330
    invoke-direct {v0, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setAnimationStarted(Z)V

    .line 331
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 335
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->cant_screenshot_in_ps:I

    sget v5, Lcom/android/systemui/R$string;->emergency_mode:I

    invoke-static {v2, v3, v5}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;II)V

    .line 336
    invoke-direct {v0, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setAnimationStarted(Z)V

    .line 337
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_3
    const-string/jumbo v2, "sys.shutdown.requested"

    .line 342
    invoke-static {v2}, Landroid/os/SemSystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 343
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "0"

    .line 344
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "1"

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 345
    :cond_4
    sget-object v2, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string v3, "Device is in shutdown state"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    invoke-direct {v0, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setAnimationStarted(Z)V

    .line 347
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 366
    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getCapacityState()I

    move-result v2

    const/4 v5, -0x1

    if-eq v2, v5, :cond_1b

    if-eqz v2, :cond_1a

    .line 383
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenCaptureOrigin()I

    move-result v2

    .line 385
    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 386
    sget-object v6, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setUpWizardRunning : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " origin : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x2

    if-nez v5, :cond_6

    if-ne v2, v7, :cond_6

    .line 388
    invoke-direct {v0, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setAnimationStarted(Z)V

    .line 389
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 393
    :cond_6
    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v5}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenCaptureType()I

    move-result v5

    .line 394
    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v8

    const-string v9, "SEC_FLOATING_FEATURE_CONTEXTSERVICE_ENABLE_SURVEY_MODE"

    invoke-virtual {v8, v9, v4}, Lcom/samsung/android/feature/SemFloatingFeature;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    const/16 v9, 0x64

    if-eqz v8, :cond_d

    const-string v8, "900"

    const-string v10, "9001"

    const/4 v11, 0x4

    if-ne v5, v3, :cond_a

    if-ne v2, v3, :cond_7

    .line 399
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v7, "SCTP"

    const-string v11, "TPKE"

    invoke-static {v2, v7, v11}, Lcom/android/systemui/screenshot/UsabilityLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "HW key"

    .line 400
    invoke-static {v8, v10, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    if-ne v2, v7, :cond_8

    .line 402
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v7, "SCTP"

    const-string v11, "TPPL"

    invoke-static {v2, v7, v11}, Lcom/android/systemui/screenshot/UsabilityLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Palm swipe"

    .line 403
    invoke-static {v8, v10, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    const/4 v7, 0x3

    if-ne v2, v7, :cond_9

    .line 405
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v7, "SCTP"

    const-string v11, "TPQP"

    invoke-static {v2, v7, v11}, Lcom/android/systemui/screenshot/UsabilityLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Quick panel"

    .line 406
    invoke-static {v8, v10, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    if-ne v2, v11, :cond_d

    .line 408
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v7, "SCTP"

    const-string v11, "KNFU"

    invoke-static {v2, v7, v11}, Lcom/android/systemui/screenshot/UsabilityLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Dex mode"

    .line 409
    invoke-static {v8, v10, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_a
    if-ne v5, v7, :cond_c

    if-ne v2, v11, :cond_b

    .line 413
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v7, "SCTP"

    const-string v11, "KNPA"

    invoke-static {v2, v7, v11}, Lcom/android/systemui/screenshot/UsabilityLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Dex mode"

    .line 414
    invoke-static {v8, v10, v2}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_b
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v7, "SCTP"

    const-string v8, "TPPA"

    invoke-static {v2, v7, v8}, Lcom/android/systemui/screenshot/UsabilityLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_c
    if-ne v5, v9, :cond_d

    .line 419
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const-string v7, "SCTP"

    const-string v8, "TPWI"

    invoke-static {v2, v7, v8}, Lcom/android/systemui/screenshot/UsabilityLogging;->sendLogForUsabilityLogging(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    :cond_d
    :goto_0
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenWidth()I

    move-result v2

    .line 425
    iget-object v7, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v7}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenHeight()I

    move-result v7

    .line 426
    iget-object v8, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v8}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenshotRectToCapture()Landroid/graphics/Rect;

    move-result-object v14

    .line 427
    iget-object v8, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v8}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenNativeWidth()F

    move-result v8

    .line 428
    iget-object v10, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v10}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenNativeHeight()F

    move-result v10

    .line 429
    iget-object v11, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v11}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenshotMinLayer()I

    move-result v11

    .line 430
    iget-object v12, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v12}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenshotMaxLayer()I

    move-result v12

    .line 431
    iget-object v13, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v13}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getDisplayId()I

    move-result v15

    .line 432
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "screenWidth = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", screenHeight = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", rectToCapture = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    invoke-virtual {v14}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", screenNativeWidth = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", screenNativeHeight = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", minLayer ="

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", maxLayer = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", buildInDisplayId = "

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 432
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 441
    invoke-static {}, Lcom/android/systemui/screenshot/AliveShotImageUtils;->isEdgeDevice()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/screenshot/AliveShotImageUtils;->isEdgePanelActivated(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_e

    const/4 v3, 0x1

    goto :goto_1

    :cond_e
    move v3, v4

    .line 450
    :goto_1
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "supportReadingMode : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 452
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object v11

    const/16 v12, 0x7df

    if-ne v5, v9, :cond_f

    const/4 v12, 0x1

    .line 461
    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "semWindowManager : "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " targetWindowType : "

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v3, :cond_10

    const-string v5, "Edge Device and Edge is Activated"

    .line 464
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v5}, Lcom/android/systemui/screenshot/AliveShotImageUtils;->getEdgeTransparencyValue(Landroid/content/Context;)I

    move-result v5

    .line 466
    iget-object v6, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v6, v9}, Lcom/android/systemui/screenshot/AliveShotImageUtils;->resetEdgeTransparency(Landroid/content/Context;I)V

    const-wide/16 v16, 0x64

    .line 468
    :try_start_1
    invoke-static/range {v16 .. v17}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    .line 470
    :catch_0
    sget-object v6, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string v9, "InterruptedException occurred"

    invoke-static {v6, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_10
    move v5, v4

    :goto_2
    if-eqz v11, :cond_11

    const/4 v13, 0x0

    float-to-int v6, v8

    float-to-int v8, v10

    const/16 v17, 0x1

    move-object v10, v11

    move v11, v15

    move v9, v15

    move v15, v6

    move/from16 v16, v8

    .line 475
    invoke-virtual/range {v10 .. v17}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZ)Landroid/graphics/Bitmap;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    goto :goto_3

    :cond_11
    move v9, v15

    :goto_3
    if-eqz v3, :cond_12

    .line 485
    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3, v5}, Lcom/android/systemui/screenshot/AliveShotImageUtils;->resetEdgeTransparency(Landroid/content/Context;I)V

    .line 488
    :cond_12
    invoke-static {v9}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isSubDisplayCapture(I)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "CoverScreen"

    .line 489
    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTopApplication:Ljava/lang/String;

    goto :goto_4

    .line 491
    :cond_13
    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/screenshot/ScreenshotUtils;->getTopMostApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mTopApplication:Ljava/lang/String;

    .line 494
    :goto_4
    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_19

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-lez v3, :cond_19

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gtz v3, :cond_14

    goto/16 :goto_8

    .line 502
    :cond_14
    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 504
    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->canExtractWebData(Landroid/content/Context;)Z

    move-result v3

    if-ne v3, v6, :cond_15

    .line 505
    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v7}, Lcom/android/systemui/screenshot/SmartClipDataExtractor;->getWebData(Landroid/content/Context;II)Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    goto :goto_5

    :cond_15
    const/4 v2, 0x0

    .line 507
    iput-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    .line 510
    :goto_5
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v2}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->getScreenDegrees()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_16

    move v3, v6

    goto :goto_6

    :cond_16
    move v3, v4

    :goto_6
    if-eqz v3, :cond_17

    .line 514
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 515
    invoke-virtual {v10, v2}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 516
    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x0

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 519
    :cond_17
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->onPostScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    .line 520
    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 521
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->prepareToDraw()V

    .line 523
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    monitor-enter v2

    .line 524
    :try_start_2
    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmapList:Ljava/util/List;

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 525
    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->isShowScreenshotAnimation()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 526
    iget-object v3, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v3, v4, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->startAnimation(FFLjava/lang/Runnable;)V

    goto :goto_7

    .line 528
    :cond_18
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->playCaptureSound()V

    .line 529
    invoke-direct {v0, v1, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->onFinish(Ljava/lang/Runnable;Z)V

    .line 531
    :goto_7
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 495
    :cond_19
    :goto_8
    sget-object v2, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string v3, "mScreenBitmap is not available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->screen_capture_fail_for_security_policy:I

    invoke-static {v2, v3}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    .line 497
    invoke-direct {v0, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setAnimationStarted(Z)V

    .line 498
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 368
    :cond_1a
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->screenshot_memory_full_msg:I

    invoke-static {v2, v3}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    .line 369
    sget-object v2, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string v3, "CapacityState : CAPACITY_ERROR_MEMORY_FULL, so finish screenshot."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    invoke-direct {v0, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setAnimationStarted(Z)V

    .line 371
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 374
    :cond_1b
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->screenshot_failed_title:I

    invoke-static {v2, v3}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    .line 375
    sget-object v2, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string v3, "CapacityState : CAPACITY_ERROR_UNKNOWN, so finish screenshot."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-direct {v0, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setAnimationStarted(Z)V

    .line 377
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 319
    :cond_1c
    :goto_9
    sget-object v2, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "takeScreenshot mHelper :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", mContext :"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    iget-object v2, v0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/systemui/R$string;->screen_capture_fail_for_security_policy:I

    invoke-static {v2, v3}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    .line 322
    invoke-direct {v0, v4}, Lcom/android/systemui/screenshot/GlobalScreenshot;->setAnimationStarted(Z)V

    .line 323
    invoke-interface/range {p1 .. p1}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_1
    move-exception v0

    .line 316
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method takeScreenshot(Ljava/lang/Runnable;ZZLandroid/os/Bundle;)V
    .locals 2

    .line 573
    invoke-virtual {p0}, Lcom/android/systemui/screenshot/GlobalScreenshot;->stopScreenshot()V

    .line 575
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getScreenCaptureHelper(Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    .line 576
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->initiallize(Landroid/content/Context;ZZLandroid/os/Bundle;)V

    .line 577
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;)V

    return-void
.end method

.method takeScreenshotPartial(Ljava/lang/Runnable;ZZLandroid/os/Bundle;)V
    .locals 9

    .line 591
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x7f4

    const v6, 0x5080500

    const/4 v7, -0x3

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    const/4 v0, 0x1

    .line 600
    iput v0, v8, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    const/4 v0, 0x0

    .line 601
    invoke-virtual {v8, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    const-string v0, "ScreenshotSelectorView"

    .line 602
    invoke-virtual {v8, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 604
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 605
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 606
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotView:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 608
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 609
    sget-object p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "takeScreenshotPartial screenshot view window token is not null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 614
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    invoke-interface {v0, v1, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 620
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    new-instance v7, Lcom/android/systemui/screenshot/GlobalScreenshot$2;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move v4, p2

    move v5, p3

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/systemui/screenshot/GlobalScreenshot$2;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Landroid/os/Bundle;ZZLjava/lang/Runnable;)V

    invoke-virtual {v0, v7}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 657
    iget-object p2, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotSelectorView:Lcom/android/systemui/screenshot/ScreenshotSelectorView;

    new-instance p3, Lcom/android/systemui/screenshot/GlobalScreenshot$3;

    invoke-direct {p3, p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot$3;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;Ljava/lang/Runnable;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 670
    iget-object p1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mScreenshotLayout:Landroid/view/View;

    new-instance p2, Lcom/android/systemui/screenshot/GlobalScreenshot$4;

    invoke-direct {p2, p0}, Lcom/android/systemui/screenshot/GlobalScreenshot$4;-><init>(Lcom/android/systemui/screenshot/GlobalScreenshot;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_0
    move-exception p0

    .line 616
    sget-object p2, Lcom/android/systemui/screenshot/GlobalScreenshot;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "takeScreenshotPartial "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method

.method takeScreenshotWindow(Ljava/lang/Runnable;ZZLandroid/os/Bundle;)V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    const/16 v1, 0x64

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->getScreenCaptureHelper(Landroid/content/Context;I)Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mHelper:Lcom/android/systemui/screenshot/ScreenCaptureHelper;

    .line 582
    iget-object v1, p0, Lcom/android/systemui/screenshot/GlobalScreenshot;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2, p3, p4}, Lcom/android/systemui/screenshot/ScreenCaptureHelper;->initiallize(Landroid/content/Context;ZZLandroid/os/Bundle;)V

    .line 583
    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/GlobalScreenshot;->takeScreenshot(Ljava/lang/Runnable;)V

    return-void
.end method
