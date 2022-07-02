.class Lcom/android/systemui/ImageWallpaper$GLEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GLEngine"
.end annotation


# static fields
.field static final MIN_SURFACE_HEIGHT:I = 0x80
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_SURFACE_WIDTH:I = 0x80
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

.field private final mFinishRenderingTask:Ljava/lang/Runnable;

.field private mHeight:I

.field private mImgHeight:I

.field private mImgWidth:I

.field private mPageOffset:F

.field private mPageWidth:F

.field private final mPluginHomeWallpaperConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

.field private mRotation:I

.field private mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

.field private mSurfaceCreated:Z

.field private final mUpdatePluginTask:Ljava/lang/Runnable;

.field private mVirtualDisplayMode:Z

.field private mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private mWidth:I

.field private onDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

.field final synthetic this$0:Lcom/android/systemui/ImageWallpaper;


# direct methods
.method public static synthetic $r8$lambda$89dxFU8sWSFIfynevrdTeLm68JA(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->finishRendering()V

    return-void
.end method

.method public static synthetic $r8$lambda$9g3qrxmCNtjmE1IJzu6AzIVY0w8(Lcom/android/systemui/ImageWallpaper$GLEngine;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$removeLocalColorsAreas$4(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EybK_er8F83eLAFvHXxWQx9jDWY(Lcom/android/systemui/ImageWallpaper$GLEngine;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$onVisibilityChanged$8(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$JDMOi5dB4LOtKUoMoFa6QNs6j7Q(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updatePluginWallpaper()V

    return-void
.end method

.method public static synthetic $r8$lambda$VqThTYKKE4bUyXZIoUJ6GkdgW7o(Lcom/android/systemui/ImageWallpaper$GLEngine;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateMiniBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YQzF0r7PnR_rHioSAVGQTRIX0Ts(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$onSwitchDisplayChanged$9()V

    return-void
.end method

.method public static synthetic $r8$lambda$bJqjp1e-t9H4Pna1VSwc1QwpKjU(Lcom/android/systemui/ImageWallpaper$GLEngine;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$onSurfaceChanged$6(II)V

    return-void
.end method

.method public static synthetic $r8$lambda$fnW8yRTQHVrEYwe4dKZC8y84dsA(I)V
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$refreshCachedWallpaper$7(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$lkx81Bng04Iod-4bvPK_-35b81g(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$onOffsetsChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$mXJHLs5z2Zup4jtXfXipAIzMdAs(Lcom/android/systemui/ImageWallpaper$GLEngine;Landroid/content/res/Configuration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$onConfigurationChanged$10(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public static synthetic $r8$lambda$pbsssQPX5ut7HYUmX6nzVEdoVgo(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->drawFrame()V

    return-void
.end method

.method public static synthetic $r8$lambda$syIXPeAQZAx14DW5Z9bTPuiC6tk(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$wiYb4Tly7uoqa--reY1GMVTo7c8(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$onDestroy$2()V

    return-void
.end method

.method public static synthetic $r8$lambda$xXQCyEnJF12w8UbEsmO_FkJelm8(Lcom/android/systemui/ImageWallpaper$GLEngine;Landroid/view/SurfaceHolder;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$onSurfaceCreated$5(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yntuzcLguMOFtXmiapf1ErFDEVc(Lcom/android/systemui/ImageWallpaper$GLEngine;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->lambda$addLocalColorsAreas$3(Ljava/util/List;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/ImageWallpaper;)V
    .locals 0

    .line 247
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 228
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mFinishRenderingTask:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 230
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWidth:I

    .line 231
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mHeight:I

    .line 232
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mImgWidth:I

    .line 233
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mImgHeight:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 234
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageWidth:F

    .line 235
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageOffset:F

    .line 240
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mUpdatePluginTask:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mVirtualDisplayMode:Z

    .line 246
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mSurfaceCreated:Z

    .line 832
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GLEngine$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$1;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 851
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GLEngine$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$2;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 875
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GLEngine$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$3;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->onDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    .line 973
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GLEngine$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$4;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPluginHomeWallpaperConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/ImageWallpaper;Landroid/os/Handler;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 251
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    .line 252
    sget-object v0, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda15;->INSTANCE:Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda15;

    invoke-direct {p0, p1, v0, p2}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;Ljava/util/function/Supplier;Landroid/os/Handler;)V

    .line 228
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mFinishRenderingTask:Ljava/lang/Runnable;

    const/4 p1, 0x1

    .line 230
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWidth:I

    .line 231
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mHeight:I

    .line 232
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mImgWidth:I

    .line 233
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mImgHeight:I

    const/high16 p1, 0x3f800000    # 1.0f

    .line 234
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageWidth:F

    .line 235
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageOffset:F

    .line 240
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mUpdatePluginTask:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 243
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mVirtualDisplayMode:Z

    .line 246
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mSurfaceCreated:Z

    .line 832
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GLEngine$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$1;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    .line 851
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GLEngine$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$2;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    .line 875
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GLEngine$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$3;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->onDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    .line 973
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GLEngine$4;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$4;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPluginHomeWallpaperConsumer:Ljava/util/function/Consumer;

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->finishRendering()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->drawFrame()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/systemui/ImageWallpaper$GLEngine;)Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateSurfaceSize()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/systemui/ImageWallpaper$GLEngine;)I
    .locals 0

    .line 218
    iget p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRotation:I

    return p0
.end method

.method static synthetic access$1902(Lcom/android/systemui/ImageWallpaper$GLEngine;I)I
    .locals 0

    .line 218
    iput p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRotation:I

    return p1
.end method

.method static synthetic access$2000(Lcom/android/systemui/ImageWallpaper$GLEngine;I)V
    .locals 0

    .line 218
    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateWallpaperOffset(I)V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateRendering()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/systemui/ImageWallpaper$GLEngine;)Lcom/android/systemui/glwallpaper/EglHelper;
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    return-object p0
.end method

.method static synthetic access$2400(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    .line 218
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->schedulePluginUpdate()V

    return-void
.end method

.method private cancelFinishRenderingTask()V
    .locals 1

    .line 671
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 672
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mFinishRenderingTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private cancelPluginUpdateTask()V
    .locals 1

    .line 944
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 945
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mUpdatePluginTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .line 460
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " computeAndNotifyLocalColors "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getLocalWallpaperColors(Ljava/util/List;Landroid/graphics/Bitmap;)Ljava/util/List;

    move-result-object p2

    .line 462
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$1200(Lcom/android/systemui/ImageWallpaper;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 464
    :try_start_0
    invoke-virtual {p0, p1, p2}, Landroid/service/wallpaper/WallpaperService$Engine;->notifyLocalColorsChanged(Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 466
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private drawFrame()V
    .locals 0

    .line 589
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->preRender()V

    .line 590
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->requestRender()V

    .line 591
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->postRender()V

    return-void
.end method

.method private finishRendering()V
    .locals 4

    .line 684
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-string/jumbo v3, "wallpaper_finish_drawing"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const-string v0, "ImageWallpaper#finishRendering"

    .line 686
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 687
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    if-eqz v0, :cond_0

    .line 688
    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglSurface()V

    .line 689
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglContext()V

    .line 691
    :cond_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method private getLocalWallpaperColors(Ljava/util/List;Landroid/graphics/Bitmap;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Ljava/util/List<",
            "Landroid/app/WallpaperColors;",
            ">;"
        }
    .end annotation

    .line 519
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 520
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateShift()V

    const/4 v1, 0x0

    .line 521
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 522
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RectF;

    invoke-direct {p0, v2}, Lcom/android/systemui/ImageWallpaper$GLEngine;->pageToImgRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    .line 523
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$1300()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_1

    .line 527
    :cond_0
    new-instance v4, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/RectF;->left:F

    .line 528
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget v6, v2, Landroid/graphics/RectF;->top:F

    .line 529
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v6, v7

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->floor(D)D

    move-result-wide v6

    double-to-int v6, v6

    iget v7, v2, Landroid/graphics/RectF;->right:F

    .line 530
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v7

    double-to-int v7, v7

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    .line 531
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v2, v8

    float-to-double v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v2, v8

    invoke-direct {v4, v5, v6, v7, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 532
    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 534
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 537
    :cond_1
    iget v2, v4, Landroid/graphics/Rect;->left:I

    iget v3, v4, Landroid/graphics/Rect;->top:I

    .line 538
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    .line 537
    invoke-static {p2, v2, v3, v5, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 539
    invoke-static {v2}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v2

    .line 540
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 524
    :cond_2
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3
    return-object v0
.end method

.method private getWindowToken()Landroid/os/IBinder;
    .locals 0

    .line 721
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getWindowTokenAsBinder()Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$addLocalColorsAreas$3(Ljava/util/List;)V
    .locals 2

    .line 446
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " addLocalColorsAreas "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$1200(Lcom/android/systemui/ImageWallpaper;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$1100(Lcom/android/systemui/ImageWallpaper;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 448
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setOffsetNotificationsEnabled(Z)V

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$1000(Lcom/android/systemui/ImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_1

    .line 452
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper;->access$1100(Lcom/android/systemui/ImageWallpaper;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 454
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$onConfigurationChanged$10(Landroid/content/res/Configuration;)V
    .locals 2

    .line 800
    iget-object v0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRotation:I

    .line 801
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    if-eqz v1, :cond_1

    .line 802
    invoke-direct {p0, v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateWallpaperOffset(I)V

    .line 804
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->onConfigurationChanged(Landroid/content/res/Configuration;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 805
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-nez p1, :cond_0

    .line 807
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateSurfaceSizeIfNeed()Z

    move-result p1

    xor-int/2addr v0, p1

    :cond_0
    if-eqz v0, :cond_1

    .line 810
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateRendering()V

    :cond_1
    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 5

    .line 305
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 307
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "WS0001"

    const-string v4, "Image"

    invoke-static {v2, v0, v3, v4}, Lcom/android/systemui/wallpaper/WallpaperUtils;->sendStatusLogging(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 309
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCreate: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper;->access$400(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/systemui/util/SettingsHelper;->getHomescreenWallpaperSource(Z)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    .line 311
    invoke-static {v3}, Lcom/android/systemui/ImageWallpaper;->access$400(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/systemui/util/SettingsHelper;->getHomescreenWallpaperSource(Z)I

    move-result v3

    invoke-static {v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getWallpaperSourceToString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WS0002"

    .line 310
    invoke-static {v2, v0, v4, v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->sendStatusLogging(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;)V

    .line 313
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_PLAY_GIF:Z

    if-eqz v0, :cond_2

    .line 314
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getDisplayId()I

    move-result v0

    if-eq v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mVirtualDisplayMode:Z

    if-eqz v0, :cond_2

    .line 315
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPluginHomeWallpaperConsumer:Ljava/util/function/Consumer;

    invoke-interface {v0, p0}, Lcom/android/systemui/wallpaper/CoverWallpaper;->setWallpaperUpdateConsumer(Ljava/util/function/Consumer;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onDestroy$2()V
    .locals 3

    .line 425
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Engine onDestroy in work thread "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->finish()V

    const/4 v0, 0x0

    .line 427
    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    .line 428
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->finish()V

    .line 429
    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    return-void
.end method

.method private synthetic lambda$onOffsetsChanged$1()V
    .locals 2

    .line 345
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$1200(Lcom/android/systemui/ImageWallpaper;)Landroid/util/ArraySet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$1000(Lcom/android/systemui/ImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$onSurfaceChanged$6(II)V
    .locals 1

    .line 565
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    .line 566
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->cancelFinishRenderingTask()V

    .line 567
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->finishRendering()V

    .line 569
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->onSurfaceChanged(II)V

    return-void
.end method

.method private synthetic lambda$onSurfaceCreated$5(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 551
    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mSurfaceCreated:Z

    if-nez v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/EglHelper;->finish()V

    .line 553
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->needSupportWideColorGamut()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/glwallpaper/EglHelper;->init(Landroid/view/SurfaceHolder;Z)Z

    .line 554
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {p1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->onSurfaceCreated()V

    :cond_0
    const/4 p1, 0x1

    .line 556
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mSurfaceCreated:Z

    return-void
.end method

.method private synthetic lambda$onSwitchDisplayChanged$9()V
    .locals 0

    .line 786
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->finishRendering()V

    .line 787
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateRendering()V

    return-void
.end method

.method private synthetic lambda$onVisibilityChanged$8(Z)V
    .locals 3

    .line 758
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onVisibilityChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 761
    iget p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRotation:I

    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateWallpaperOffset(I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$refreshCachedWallpaper$7(I)V
    .locals 1

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_1

    and-int/lit8 p0, p0, -0x5

    .line 748
    :cond_1
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    return-void
.end method

.method private synthetic lambda$removeLocalColorsAreas$4(Ljava/util/List;)V
    .locals 1

    .line 473
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$1200(Lcom/android/systemui/ImageWallpaper;)Landroid/util/ArraySet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->removeAll(Ljava/util/Collection;)Z

    .line 474
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$1100(Lcom/android/systemui/ImageWallpaper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 475
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$1200(Lcom/android/systemui/ImageWallpaper;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$1100(Lcom/android/systemui/ImageWallpaper;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 476
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setOffsetNotificationsEnabled(Z)V

    :cond_0
    return-void
.end method

.method private needSupportWideColorGamut()Z
    .locals 0

    .line 695
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->isWcgContent()Z

    move-result p0

    return p0
.end method

.method private pageToImgRect(Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 6

    .line 496
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$900(Lcom/android/systemui/ImageWallpaper;)I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    div-float v0, v1, v0

    .line 497
    iget v2, p1, Landroid/graphics/RectF;->left:F

    rem-float/2addr v2, v0

    div-float/2addr v2, v0

    .line 498
    iget v3, p1, Landroid/graphics/RectF;->right:F

    rem-float/2addr v3, v0

    div-float/2addr v3, v0

    .line 499
    invoke-virtual {p1}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    div-float/2addr v4, v0

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 501
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    .line 502
    iget v5, p1, Landroid/graphics/RectF;->bottom:F

    iput v5, v4, Landroid/graphics/RectF;->bottom:F

    .line 503
    iget p1, p1, Landroid/graphics/RectF;->top:F

    iput p1, v4, Landroid/graphics/RectF;->top:F

    .line 504
    iget p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageWidth:F

    mul-float/2addr v2, p1

    int-to-float p1, v0

    iget v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageOffset:F

    mul-float/2addr v0, p1

    add-float/2addr v2, v0

    const/4 v0, 0x0

    invoke-static {v2, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v2

    iput v2, v4, Landroid/graphics/RectF;->left:F

    .line 506
    iget v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageWidth:F

    mul-float/2addr v3, v2

    iget p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageOffset:F

    mul-float/2addr p1, p0

    add-float/2addr v3, p1

    invoke-static {v3, v0, v1}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result p0

    iput p0, v4, Landroid/graphics/RectF;->right:F

    .line 508
    iget p1, v4, Landroid/graphics/RectF;->left:F

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    .line 510
    iput v0, v4, Landroid/graphics/RectF;->left:F

    .line 511
    iput v1, v4, Landroid/graphics/RectF;->right:F

    :cond_0
    return-object v4
.end method

.method private preRenderInternal()V
    .locals 5

    .line 602
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    .line 603
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " preRenderInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    .line 606
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 607
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->cancelFinishRenderingTask()V

    .line 610
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v2

    if-nez v2, :cond_2

    .line 611
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglSurface()V

    .line 612
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->createEglContext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 613
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "recreate egl context failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 620
    :cond_2
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result v2

    if-nez v2, :cond_3

    .line 621
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->needSupportWideColorGamut()Z

    move-result v4

    invoke-virtual {v2, v3, v4}, Lcom/android/systemui/glwallpaper/EglHelper;->createEglSurface(Landroid/view/SurfaceHolder;Z)Z

    move-result v2

    if-nez v2, :cond_3

    .line 622
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "recreate egl surface failed!"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v2}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    .line 628
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->onSurfaceCreated()V

    .line 629
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->onSurfaceChanged(II)V

    :cond_4
    return-void
.end method

.method private requestRenderInternal()V
    .locals 4

    .line 641
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    .line 642
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " requestRenderInternal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    :cond_0
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 645
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v1}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 646
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 650
    iget v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRotation:I

    invoke-direct {p0, v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateWallpaperOffset(I)V

    .line 652
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->onDrawFrame()V

    .line 653
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->swapBuffer()Z

    move-result p0

    if-nez p0, :cond_3

    .line 654
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "drawFrame failed!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 657
    :cond_2
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestRender: not ready, has context="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v3}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglContext()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", has surface="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    .line 658
    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/EglHelper;->hasEglSurface()Z

    move-result p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", frame="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 657
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return-void
.end method

.method private scheduleFinishRendering()V
    .locals 3

    .line 676
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 677
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->cancelFinishRenderingTask()V

    .line 678
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mFinishRenderingTask:Ljava/lang/Runnable;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private schedulePluginUpdate()V
    .locals 4

    .line 950
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 951
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->cancelPluginUpdateTask()V

    const/16 v0, 0x1f4

    .line 955
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mVirtualDisplayMode:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 958
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mUpdatePluginTask:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateMiniBitmap(Landroid/graphics/Bitmap;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 365
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/16 v1, 0x80

    const/high16 v2, 0x3f800000    # 1.0f

    if-le v0, v1, :cond_1

    const/high16 v1, 0x43000000    # 128.0f

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_1
    move v1, v2

    .line 370
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mImgHeight:I

    .line 371
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mImgWidth:I

    .line 372
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v3

    float-to-int v3, v3

    .line 373
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    .line 372
    invoke-static {p1, v3, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/systemui/ImageWallpaper;->access$1002(Lcom/android/systemui/ImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 374
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$1100(Lcom/android/systemui/ImageWallpaper;)Ljava/util/ArrayList;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$1000(Lcom/android/systemui/ImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->computeAndNotifyLocalColors(Ljava/util/List;Landroid/graphics/Bitmap;)V

    .line 375
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper;->access$1100(Lcom/android/systemui/ImageWallpaper;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private updatePluginWallpaper()V
    .locals 2

    .line 963
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperType()I

    move-result v0

    const/16 v1, 0x16

    if-ne v0, v1, :cond_0

    .line 964
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getCoverWhich()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->forceRebindWallpaper(I)V

    goto :goto_0

    .line 966
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateSurfaceSizeIfNeed()Z

    move-result v0

    if-nez v0, :cond_1

    .line 967
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->finishRendering()V

    .line 968
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->drawFrame()V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateRendering()V
    .locals 3

    .line 820
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    if-eqz v0, :cond_0

    .line 822
    :try_start_0
    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglSurface()V

    .line 823
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/EglHelper;->destroyEglContext()V

    .line 825
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->drawFrame()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 827
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " error : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private updateShift()V
    .locals 3

    .line 349
    iget v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mImgHeight:I

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 350
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageOffset:F

    .line 351
    iput v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageWidth:F

    return-void

    .line 355
    :cond_0
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 356
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 357
    invoke-virtual {v0}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    move-result v0

    .line 358
    iget v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mImgWidth:I

    if-lez v2, :cond_1

    int-to-float v0, v0

    int-to-float v2, v2

    div-float/2addr v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 359
    iput v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageWidth:F

    sub-float/2addr v1, v0

    .line 360
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$900(Lcom/android/systemui/ImageWallpaper;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mPageOffset:F

    return-void
.end method

.method private updateSurfaceSize()V
    .locals 5

    .line 379
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    .line 380
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {p0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->reportSurfaceSize()Landroid/util/Size;

    move-result-object p0

    .line 381
    invoke-virtual {p0}, Landroid/util/Size;->getWidth()I

    move-result v1

    const/16 v2, 0x80

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 382
    invoke-virtual {p0}, Landroid/util/Size;->getHeight()I

    move-result p0

    invoke-static {v2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 383
    sget-boolean v2, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v2, :cond_0

    .line 384
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " updateSurfaceSize width : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " height : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_0
    invoke-interface {v0, v1, p0}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    return-void
.end method

.method private updateSurfaceSizeIfNeed()Z
    .locals 5

    .line 931
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->reportSurfaceSize()Landroid/util/Size;

    move-result-object v0

    .line 932
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    .line 933
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-ne v2, v3, :cond_1

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 934
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  updateSurfaceSizeIfNeed frame  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " surfaceFrame : "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->finishRendering()V

    .line 936
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateSurfaceSize()V

    const/4 p0, 0x1

    return p0
.end method

.method private updateWallpaperOffset(I)V
    .locals 1

    .line 727
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 731
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->updateWallpaperOffset(Landroid/os/IBinder;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addLocalColorsAreas(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 445
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda12;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 700
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 701
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Engine="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 702
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "valid surface="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 703
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const-string v1, "null"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 704
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 703
    :goto_0
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 707
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "surface frame="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 708
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    :cond_1
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 710
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/systemui/glwallpaper/EglHelper;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 711
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public getDisplayId()I
    .locals 0

    .line 716
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result p0

    return p0
.end method

.method getEglHelperInstance()Lcom/android/systemui/glwallpaper/EglHelper;
    .locals 0

    .line 322
    new-instance p0, Lcom/android/systemui/glwallpaper/EglHelper;

    invoke-direct {p0}, Lcom/android/systemui/glwallpaper/EglHelper;-><init>()V

    return-object p0
.end method

.method getRendererInstance()Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;
    .locals 7

    .line 326
    new-instance v6, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getDisplayId()I

    move-result v2

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$600(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    move-result-object v3

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$700(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    move-result-object v4

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    .line 327
    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;-><init>(Landroid/content/Context;ILcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/wallpaper/CoverWallpaper;)V

    return-object v6
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 799
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda9;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;Landroid/content/res/Configuration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 4

    .line 257
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Engine onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_0

    .line 259
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onCreate(Landroid/view/SurfaceHolder;)V

    .line 261
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getEglHelperInstance()Lcom/android/systemui/glwallpaper/EglHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mEglHelper:Lcom/android/systemui/glwallpaper/EglHelper;

    .line 263
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getRendererInstance()Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    const/4 p1, 0x1

    .line 264
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setFixedSizeAllowed(Z)V

    .line 265
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateSurfaceSize()V

    .line 266
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/view/WindowManager;

    .line 267
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 268
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v0

    .line 269
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 270
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mHeight:I

    .line 271
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWidth:I

    .line 273
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda14;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->setOnBitmapChanged(Ljava/util/function/Consumer;)V

    .line 277
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$100(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->setInconsistencyWallpaper(Z)V

    .line 278
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRotation:I

    .line 280
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Lcom/android/wm/shell/common/DisplayController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getDisplayId()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getDisplayId()I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Lcom/android/wm/shell/common/DisplayController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->onDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-virtual {v0, v1}, Lcom/android/wm/shell/common/DisplayController;->addDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    goto :goto_0

    .line 283
    :cond_1
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " do not add display controller in dex"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :goto_0
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_2

    .line 288
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$300(Lcom/android/systemui/ImageWallpaper;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getDisplayId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$400(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    new-array p1, p1, [Landroid/net/Uri;

    const/4 v2, 0x0

    const-string v3, "display_night_theme_wallpaper"

    .line 297
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    aput-object v3, p1, v2

    .line 296
    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 300
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz p1, :cond_3

    .line 301
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {p1}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {p1}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getDisplayId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/app/WallpaperManager;->isVirtualWallpaperDisplay(Landroid/content/Context;I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mVirtualDisplayMode:Z

    .line 304
    :cond_3
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 400
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/ImageWallpaper;->access$1002(Lcom/android/systemui/ImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 401
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Engine onDestroy displayId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getDisplayId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_PLAY_GIF:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 404
    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getDisplayId()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mVirtualDisplayMode:Z

    if-eqz v0, :cond_1

    .line 405
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->cancelPluginUpdateTask()V

    .line 406
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/CoverWallpaper;->onHomeWallpaperDestroyed()V

    .line 410
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_2

    .line 411
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mWakefulnessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 415
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$400(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mSettingsCallback:Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;

    invoke-virtual {v0, v2}, Lcom/android/systemui/util/SettingsHelper;->unregisterCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;)V

    .line 419
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Lcom/android/wm/shell/common/DisplayController;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getDisplayId()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getDisplayId()I

    move-result v0

    if-eq v0, v1, :cond_3

    .line 420
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$200(Lcom/android/systemui/ImageWallpaper;)Lcom/android/wm/shell/common/DisplayController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->onDisplaysChangedListener:Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;

    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/DisplayController;->removeDisplayWindowListener(Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;)V

    .line 424
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda7;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 432
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    const/4 p0, 0x5

    .line 433
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    const/16 p0, 0x11

    .line 434
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    const/16 p0, 0x9

    .line 435
    invoke-static {p0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    return-void
.end method

.method public onOffsetsChanged(FFFFII)V
    .locals 0

    const/4 p1, 0x0

    cmpl-float p1, p3, p1

    const/4 p2, 0x1

    if-lez p1, :cond_0

    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p4, p3, p1

    if-gtz p4, :cond_0

    div-float/2addr p1, p3

    .line 336
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    add-int/2addr p2, p1

    .line 340
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$900(Lcom/android/systemui/ImageWallpaper;)I

    move-result p1

    if-ne p2, p1, :cond_1

    return-void

    .line 341
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1, p2}, Lcom/android/systemui/ImageWallpaper;->access$902(Lcom/android/systemui/ImageWallpaper;I)I

    .line 342
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$1000(Lcom/android/systemui/ImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$1000(Lcom/android/systemui/ImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    .line 343
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->updateShift()V

    .line 344
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda4;

    invoke-direct {p2, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    :goto_0
    return-void
.end method

.method public onSurfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1

    .line 562
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 563
    :cond_0
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " onSurfaceChanged w: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , h: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda8;

    invoke-direct {p2, p0, p3, p4}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda8;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;II)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 547
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 548
    :cond_0
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onSurfaceCreated "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mSurfaceCreated:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda10;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;Landroid/view/SurfaceHolder;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 583
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 584
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onSurfaceDestroyed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mSurfaceCreated:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 585
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mSurfaceCreated:Z

    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 575
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 576
    :cond_0
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " onSurfaceRedrawNeeded  id: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSwitchDisplayChanged(Z)V
    .locals 4

    .line 770
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_2

    .line 772
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    if-eqz v0, :cond_2

    .line 773
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$1400(Lcom/android/systemui/ImageWallpaper;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->setInconsistencyWallpaper(Z)V

    .line 774
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->onFolderStateChanged(Z)V

    .line 776
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->mRenderer:Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    invoke-virtual {p1}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->reportSurfaceSize()Landroid/util/Size;

    move-result-object p1

    .line 777
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    .line 778
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    if-eq v1, v0, :cond_0

    goto :goto_0

    .line 785
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 779
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    .line 780
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    const/16 v1, 0x80

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 781
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 782
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " change surface size  width : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0, v0, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2

    .line 757
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda13;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public postRender()V
    .locals 1

    const-string v0, "ImageWallpaper#postRender"

    .line 665
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 666
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->scheduleFinishRendering()V

    .line 667
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public preRender()V
    .locals 1

    const-string v0, "ImageWallpaper#preRender"

    .line 596
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 597
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->preRenderInternal()V

    .line 598
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public refreshCachedWallpaper(I)V
    .locals 1

    .line 738
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    .line 739
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public removeLocalColorsAreas(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/RectF;",
            ">;)V"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda11;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine$$ExternalSyntheticLambda11;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine;Ljava/util/List;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public requestRender()V
    .locals 1

    const-string v0, "ImageWallpaper#requestRender"

    .line 635
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 636
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->requestRenderInternal()V

    .line 637
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void
.end method

.method public shouldZoomOutWallpaper()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public supportsLocalColorExtraction()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
