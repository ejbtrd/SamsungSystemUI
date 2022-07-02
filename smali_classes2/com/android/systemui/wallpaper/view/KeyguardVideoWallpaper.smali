.class public Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;
.super Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;
.source "KeyguardVideoWallpaper.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private mDlsViewMode:I

.field private mHandler:Landroid/os/Handler;

.field private mIsBlurEnabled:Z

.field private mIsCleanUp:Z

.field private mIsPendingSurfaceViewAdd:Z

.field private mIsSurfaceViewAdded:Z

.field private mIsThumbnailViewAdded:Z

.field private mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field private mOnInfoListener:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

.field private final mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

.field private mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

.field private mRootView:Landroid/view/View;

.field private mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

.field private mShowing:Z

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mThemePackage:Ljava/lang/String;

.field private mThumbnail:Landroid/graphics/drawable/Drawable;

.field private mThumbnailLoader:Landroid/os/AsyncTask;
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

.field private mThumbnailView:Landroid/widget/ImageView;

.field private mVideoColor:Ljava/lang/String;

.field private mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

.field private mVideoFileName:Ljava/lang/String;

.field private mVideoFilePath:Ljava/lang/String;

.field private mVideoFileUri:Landroid/net/Uri;

.field private mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

.field private mVideoScreenSize:Landroid/graphics/Point;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Lcom/android/systemui/pluginlock/PluginLockManager;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Ljava/util/function/Consumer;ZZIZ)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/keyguard/KeyguardUpdateMonitor;",
            "Lcom/android/systemui/wallpaper/WallpaperResultCallback;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/android/systemui/pluginlock/PluginLockManager;",
            "Lcom/android/systemui/wallpaper/log/WallpaperLogger;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;ZZIZ)V"
        }
    .end annotation

    move-object v9, p0

    move/from16 v10, p16

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move-object/from16 v5, p12

    move/from16 v7, p13

    move/from16 v8, p14

    .line 122
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/wallpaper/WallpaperResultCallback;Ljava/util/concurrent/ExecutorService;Ljava/util/function/Consumer;ZZZ)V

    const/4 v0, 0x0

    .line 53
    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 54
    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 55
    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    .line 56
    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    .line 65
    iput-boolean v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsPendingSurfaceViewAdd:Z

    .line 66
    iput-boolean v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    .line 67
    iput-boolean v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsCleanUp:Z

    .line 77
    iput-boolean v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsBlurEnabled:Z

    .line 81
    iput v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mDlsViewMode:I

    .line 88
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;Landroid/os/Looper;)V

    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance v1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)V

    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mOnInfoListener:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    move-object v1, p1

    .line 124
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    move/from16 v1, p15

    .line 125
    iput v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mCurrentUserId:I

    move-object/from16 v1, p10

    .line 127
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    move-object/from16 v1, p11

    .line 130
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    move-object v1, p3

    .line 133
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThemePackage:Ljava/lang/String;

    move-object/from16 v1, p5

    .line 134
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoColor:Ljava/lang/String;

    move-object/from16 v1, p6

    .line 135
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    move-object v1, p4

    .line 136
    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 138
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRootView:Landroid/view/View;

    .line 139
    iget-boolean v1, v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    if-eqz v1, :cond_0

    iget-boolean v1, v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOccluded:Z

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    .line 140
    new-instance v0, Landroid/app/SemWallpaperResourcesInfo;

    iget-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/SemWallpaperResourcesInfo;-><init>(Landroid/content/Context;)V

    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 141
    new-instance v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    iget-object v2, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRootView:Landroid/view/View;

    iget-object v3, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    iget-object v4, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/systemui/wallpaper/video/VideoPlayer;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/app/SemWallpaperResourcesInfo;Lcom/android/systemui/wallpaper/log/WallpaperLogger;)V

    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 142
    iput-boolean v10, v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    .line 143
    invoke-virtual {v0, v10}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setBouncer(Z)V

    move-object v0, p2

    .line 145
    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 146
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->getVideoFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 147
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->getVideoFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "KeyguardVideoWallpaper: path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , fd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , color ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " fileName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , focus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsKeyguardShowing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mOccluded = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOccluded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVideoWallpaper"

    .line 149
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-boolean v0, v9, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    if-eqz v0, :cond_1

    const-string v0, "Showing state"

    .line 154
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->initSurfaceViewIfNeeded()V

    .line 158
    :cond_1
    iget-object v0, v9, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    if-eqz v0, :cond_2

    .line 159
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onPreviewReady()V

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;Z)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/widget/ImageView;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;Landroid/widget/ImageView;)Landroid/widget/ImageView;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Z
    .locals 0

    .line 46
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;Z)Z
    .locals 0

    .line 46
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/os/Handler;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/content/Context;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/content/res/AssetFileDescriptor;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/net/Uri;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnail:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$902(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnail:Landroid/graphics/drawable/Drawable;

    return-object p1
.end method

.method private addSurfaceViewIfNeeded()V
    .locals 1

    .line 752
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->initSurfaceViewIfNeeded()V

    .line 753
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    if-nez v0, :cond_0

    .line 754
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    const/4 v0, 0x1

    .line 755
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    :cond_0
    return-void
.end method

.method private drawVideo(Z)V
    .locals 4

    .line 547
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "KeyguardVideoWallpaper"

    if-eqz p1, :cond_1

    .line 552
    iget v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mDlsViewMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 553
    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    const-string p0, "drawVideo() skip by DLS"

    .line 554
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 559
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "drawVideo() "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    .line 561
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->startDrawing()V

    goto :goto_0

    .line 563
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    :goto_0
    return-void
.end method

.method private getDefaultFrameMillis()I
    .locals 4

    .line 508
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 509
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/SemWallpaperResourcesInfo;->isBlackFirstFrame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultVideoFrameInfo(Ljava/lang/String;)I

    move-result v0

    .line 512
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoFrameCount()I

    move-result v2

    if-lez v0, :cond_0

    if-lez v2, :cond_0

    if-lt v2, v0, :cond_0

    .line 514
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoDuration()I

    move-result p0

    int-to-float p0, p0

    int-to-float v1, v0

    int-to-float v3, v2

    div-float/2addr v1, v3

    mul-float/2addr p0, v1

    float-to-int p0, p0

    move v1, p0

    .line 516
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDefaultFrameMillis: "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , count = "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , requested index = "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "KeyguardVideoWallpaper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1
.end method

.method private getVideoFileDescriptor()Landroid/content/res/AssetFileDescriptor;
    .locals 4

    .line 642
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->isOldDefaultVideoUsed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "com.samsung.android.wallpaper.res"

    .line 643
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThemePackage:Ljava/lang/String;

    .line 646
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 647
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoColor:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getLegacyFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 650
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThemePackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoColor:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoResID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    .line 652
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->isDefaultVideoWallpaper()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 653
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->showDefaultVideoIfNeeded(Landroid/content/res/AssetFileDescriptor;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private initSurfaceViewIfNeeded()V
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initSurfaceViewIfNeeded: mSurfaceView == null? : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , showing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVideoWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v0, :cond_1

    .line 209
    new-instance v0, Landroid/view/SurfaceView;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    .line 210
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 211
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 214
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    if-nez v0, :cond_2

    .line 215
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    :cond_2
    return-void
.end method

.method private isDefaultVideoWallpaper()Z
    .locals 4

    .line 536
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 537
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getDefaultWallpaperType(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoColor:Ljava/lang/String;

    .line 538
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    if-eqz v0, :cond_2

    .line 541
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isVideoWallpaperEnabled()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method private isMainScreenRatio()Z
    .locals 3

    .line 741
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    .line 742
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result p0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p0, :cond_0

    goto :goto_0

    .line 744
    :cond_0
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 745
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    int-to-float v0, v2

    int-to-float p0, p0

    div-float/2addr v0, p0

    const/high16 p0, 0x40000000    # 2.0f

    cmpl-float p0, v0, p0

    if-lez p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    return v1
.end method

.method private isOldDefaultVideoUsed()Z
    .locals 4

    .line 632
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThemePackage:Ljava/lang/String;

    .line 633
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThemePackage:Ljava/lang/String;

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 635
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOldDefaultVideoUsed : color = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoColor:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "KeyguardVideoWallpaper"

    invoke-interface {v1, v2, p0}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v0
.end method

.method private loadMediaPlayer(Z)V
    .locals 7

    .line 220
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mVideoFileDescriptor = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " , mRetrieverFd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVideoWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoScreenSize:Landroid/graphics/Point;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_1

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoScreenSize(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Point;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoScreenSize:Landroid/graphics/Point;

    .line 225
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->isDefaultVideoWallpaper()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 226
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoFrameCount()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_3

    .line 227
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    const/16 v4, 0x20

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateMediaMetadata(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 229
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoDuration()I

    move-result v0

    if-eqz v0, :cond_4

    if-eqz p1, :cond_5

    .line 230
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    const/16 v4, 0x9

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->updateMediaMetadata(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 233
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseResource(Z)V

    .line 234
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 235
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v5, 0x0

    if-nez v0, :cond_6

    move-object v0, v5

    goto :goto_0

    :cond_6
    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    .line 236
    :goto_0
    sget-boolean v6, Lcom/android/systemui/LsRune;->WALLPAPER_DRAW_THUMBNAIL_BEFORE_VIDEO_RENDERING:Z

    if-eqz v6, :cond_7

    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mOnInfoListener:Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;

    :cond_7
    move-object v6, v5

    move-object v5, v0

    .line 234
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->initFile(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;Landroid/view/Surface;Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;)V

    .line 237
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_8

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 238
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->updateSurfaceScale(II)V

    .line 240
    :cond_8
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->updateDrawable(Z)V

    return-void
.end method

.method private releaseMediaPlayer()V
    .locals 2

    const-string v0, "KeyguardVideoWallpaper"

    const-string/jumbo v1, "releaseVideoPlayer()"

    .line 574
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseResource(Z)V

    return-void
.end method

.method private seekTo(I)V
    .locals 0

    .line 568
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz p0, :cond_0

    .line 569
    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method private seekToDefaultFrame()V
    .locals 1

    .line 496
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 500
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->isDefaultVideoWallpaper()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 503
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->getDefaultFrameMillis()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->seekTo(I)V

    return-void
.end method

.method private seekToRandomFrameIfNeeded()V
    .locals 3

    .line 523
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 527
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->isDefaultVideoWallpaper()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIDEO_PLAY_RANDOM_POSITION:Z

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoDuration()I

    move-result v0

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "videoDuration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardVideoWallpaper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getRandomFrame(I)I

    move-result v0

    .line 531
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->seekTo(I)V

    :cond_1
    return-void
.end method

.method private showDefaultVideoIfNeeded(Landroid/content/res/AssetFileDescriptor;)Landroid/content/res/AssetFileDescriptor;
    .locals 7

    .line 612
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 613
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v6

    .line 614
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v0, v6}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultVideoWallpaperFileName(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVideoWallpaper"

    if-eqz v0, :cond_1

    .line 615
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 616
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "old file = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", default file name :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " , which = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 618
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.wallpaper.res"

    invoke-static {p1, v2, v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFDFromPackage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    iget v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mCurrentUserId:I

    const-string v3, "com.samsung.android.wallpaper.res"

    invoke-virtual/range {v1 .. v6}, Landroid/app/WallpaperManager;->setVideoLockscreenWallpaper(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    .line 622
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find resources or fail to openFD : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 625
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This file was already set. : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p1
.end method

.method private updateDrawable(Z)V
    .locals 1

    .line 681
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_DRAW_THUMBNAIL_BEFORE_VIDEO_RENDERING:Z

    if-nez v0, :cond_0

    return-void

    .line 685
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnail:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_3

    .line 686
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailLoader:Landroid/os/AsyncTask;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result p1

    if-nez p1, :cond_2

    .line 687
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailLoader:Landroid/os/AsyncTask;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    const/4 p1, 0x0

    .line 688
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 691
    :cond_2
    new-instance p1, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;

    invoke-direct {p1, p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$3;-><init>(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailLoader:Landroid/os/AsyncTask;

    .line 718
    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {p1, p0, v0}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    :cond_3
    return-void
.end method

.method private updateSurfaceScale(II)V
    .locals 10

    .line 659
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoScreenSize:Landroid/graphics/Point;

    const-string v1, "KeyguardVideoWallpaper"

    if-eqz v0, :cond_5

    if-lez p1, :cond_5

    if-gtz p2, :cond_0

    goto/16 :goto_1

    .line 664
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    if-nez v2, :cond_1

    const-string/jumbo p0, "updateSurfaceScale() mSurfaceView is null"

    .line 665
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 669
    :cond_1
    iget v2, v0, Landroid/graphics/Point;->x:I

    mul-int/2addr v2, p2

    int-to-float v2, v2

    iget v0, v0, Landroid/graphics/Point;->y:I

    mul-int/2addr v0, p1

    int-to-float v0, v0

    div-float/2addr v2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v3, v2, v0

    if-ltz v3, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    move v3, v0

    :goto_0
    cmpg-float v4, v2, v0

    if-gtz v4, :cond_3

    div-float/2addr v0, v2

    .line 672
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSurfaceScale: video size = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoScreenSize:Landroid/graphics/Point;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", height = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", sx = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", sy = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 673
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v1}, Landroid/view/SurfaceView;->semResetRenderNodePosition()V

    .line 674
    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    int-to-float p1, p1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr p1, v1

    int-to-float p2, p2

    mul-float/2addr p2, v1

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, v3

    move v9, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->updateViewSize(Landroid/view/View;FFFF)V

    .line 675
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_DRAW_THUMBNAIL_BEFORE_VIDEO_RENDERING:Z

    if-eqz v1, :cond_4

    iget-object v5, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    if-eqz v5, :cond_4

    move-object v4, p0

    move v6, p1

    move v7, p2

    move v8, v3

    move v9, v0

    .line 676
    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->updateViewSize(Landroid/view/View;FFFF)V

    :cond_4
    return-void

    :cond_5
    :goto_1
    const-string/jumbo p0, "updateSurfaceScale() mVideoScreenSize is null"

    .line 660
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateViewSize(Landroid/view/View;FFFF)V
    .locals 0

    .line 723
    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 724
    invoke-virtual {p1, p3}, Landroid/view/View;->setPivotY(F)V

    .line 725
    invoke-virtual {p1, p4}, Landroid/view/View;->setScaleX(F)V

    .line 726
    invoke-virtual {p1, p5}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 2

    const-string v0, "KeyguardVideoWallpaper"

    const-string v1, "cleanUp: "

    .line 418
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 419
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsCleanUp:Z

    .line 420
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 421
    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->removeCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 422
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 423
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 425
    :cond_0
    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 428
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_DRAW_THUMBNAIL_BEFORE_VIDEO_RENDERING:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    .line 429
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 432
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz v0, :cond_3

    .line 433
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->releaseMediaPlayer()V

    .line 434
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseThread()V

    .line 437
    :cond_3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 v0, 0x0

    .line 438
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    .line 439
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    .line 440
    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnail:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public getCapturedWallpaper()Landroid/graphics/Bitmap;
    .locals 3

    .line 600
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    const-string v1, "KeyguardVideoWallpaper"

    if-eqz v0, :cond_0

    .line 601
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    const-string/jumbo v2, "stop video because need to get current frame"

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    .line 603
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 605
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    const-string v0, "fail to get current frame"

    invoke-interface {p0, v1, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 6

    .line 591
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->getDefaultFrameMillis()I

    move-result p0

    mul-int/lit16 p0, p0, 0x3e8

    int-to-long v4, p0

    invoke-static/range {v0 .. v5}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getVideoFrame(Landroid/content/Context;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;J)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    .line 593
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .line 245
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 580
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onConfigurationChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVideoWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 581
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 582
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 583
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsBlurEnabled:Z

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->updateBlurState(Z)V

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .line 250
    invoke-super {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onDetachedFromWindow()V

    return-void
.end method

.method public onDlsViewModeChanged(IZ)V
    .locals 2

    .line 337
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onDlsViewModeChanged(), mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVideoWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mDlsViewMode:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    if-nez p1, :cond_1

    .line 342
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->seekToDefaultFrame()V

    .line 343
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(Z)V

    goto :goto_1

    .line 345
    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOccluded:Z

    if-nez p1, :cond_2

    if-eqz p2, :cond_2

    .line 346
    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(Z)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onFaceAuthError()V
    .locals 2

    const-string v0, "KeyguardVideoWallpaper"

    const-string/jumbo v1, "onFaceAuthError(), pause video"

    .line 316
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 317
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(Z)V

    return-void
.end method

.method public onFingerprintAuthSuccess()V
    .locals 2

    const-string v0, "KeyguardVideoWallpaper"

    const-string/jumbo v1, "onFingerprintAuthSuccess()"

    .line 322
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 323
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(Z)V

    return-void
.end method

.method public onKeyguardBouncerChanged(Z)V
    .locals 0

    .line 485
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onKeyguardBouncerChanged(Z)V

    .line 486
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    if-eqz p1, :cond_0

    .line 487
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->seekToDefaultFrame()V

    .line 490
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz p1, :cond_1

    .line 491
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    invoke-virtual {p1, p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setBouncer(Z)V

    :cond_1
    return-void
.end method

.method public onKeyguardShowing(Z)V
    .locals 0

    .line 328
    invoke-super {p0, p1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onKeyguardShowing(Z)V

    .line 329
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOccluded:Z

    if-eqz p1, :cond_0

    .line 330
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->releaseMediaPlayer()V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    .line 354
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->onLayout(ZIIII)V

    .line 355
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onLayout called : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardVideoWallpaper"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsPendingSurfaceViewAdd:Z

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->isMainScreenRatio()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 357
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsPendingSurfaceViewAdd:Z

    .line 358
    iget-boolean p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsCleanUp:Z

    if-nez p3, :cond_0

    .line 359
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->addSurfaceViewIfNeeded()V

    .line 360
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "SurfaceView is added, visibility = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p4}, Landroid/view/SurfaceView;->getVisibility()I

    move-result p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    iget-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    const/16 p3, 0x8

    invoke-virtual {p2, p3}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 365
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onPause: showing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , focus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , mBouncer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVideoWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    if-eqz v0, :cond_2

    .line 291
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->isDefaultVideoWallpaper()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_VIDEO_PLAY_RANDOM_POSITION:Z

    if-eqz v0, :cond_1

    .line 292
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_DRAW_THUMBNAIL_BEFORE_VIDEO_RENDERING:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->hasSurface()Z

    move-result v0

    if-nez v0, :cond_0

    .line 293
    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->seekTo(I)V

    goto :goto_0

    .line 295
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->seekToRandomFrameIfNeeded()V

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    invoke-direct {p0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->seekTo(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 0

    return-void
.end method

.method public onUnlock()V
    .locals 1

    const/4 v0, 0x0

    .line 311
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(Z)V

    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 6

    .line 255
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    .line 256
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsKeyguardShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mOccluded:Z

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    .line 257
    :goto_1
    iput-boolean v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    .line 258
    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onVisibilityChanged: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " , isKeyguardShowing = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", mIsSurfaceViewAdded = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " view = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "KeyguardVideoWallpaper"

    invoke-interface {v3, p2, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    if-eqz p1, :cond_4

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsCleanUp:Z

    if-nez p1, :cond_4

    .line 261
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->isPrepared()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->isPreparing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 262
    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->loadMediaPlayer(Z)V

    .line 264
    :cond_2
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p1, :cond_3

    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p1, :cond_3

    .line 265
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->isMainScreenRatio()Z

    move-result p1

    if-nez p1, :cond_3

    .line 266
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsPendingSurfaceViewAdd:Z

    .line 270
    :cond_3
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsPendingSurfaceViewAdd:Z

    if-nez p1, :cond_5

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->addSurfaceViewIfNeeded()V

    goto :goto_2

    .line 273
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz p1, :cond_5

    .line 274
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsPendingSurfaceViewAdd:Z

    .line 275
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->releaseMediaPlayer()V

    .line 276
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    if-eqz p1, :cond_5

    .line 277
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 278
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsSurfaceViewAdded:Z

    :cond_5
    :goto_2
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 4

    .line 466
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 468
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasWindowFocus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getDrawState()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", blur = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsBlurEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVideoWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getDrawState()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 470
    :goto_0
    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v0, :cond_1

    .line 471
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsBlurEnabled:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v0, v1

    :cond_2
    if-eqz p1, :cond_3

    .line 474
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(Z)V

    goto :goto_2

    .line 476
    :cond_3
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p1, :cond_4

    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p1, :cond_4

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isSubDisplay()Z

    move-result p1

    if-nez p1, :cond_4

    .line 477
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->seekToDefaultFrame()V

    .line 479
    :cond_4
    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(Z)V

    :goto_2
    return-void
.end method

.method public resizeThumbnailBitmap(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 733
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p0

    int-to-float p0, p0

    mul-float/2addr p0, p2

    float-to-int p0, p0

    .line 734
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int p2, v0

    const/4 v0, 0x1

    .line 735
    invoke-static {p1, p0, p2, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 736
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V

    return-object p0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 2

    .line 191
    iget-object p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "surfaceChanged: w = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", h = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , showing = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " , surface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "KeyguardVideoWallpaper"

    .line 191
    invoke-interface {p2, v0, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-direct {p0, p3, p4}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->updateSurfaceScale(II)V

    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 165
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceCreated: shoiwng = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , frame = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", prepared = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 166
    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->isPrepared()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , preparing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->isPreparing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , focus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , surface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "KeyguardVideoWallpaper"

    .line 165
    invoke-interface {v0, v2, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 169
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getDrawState()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(Z)V

    .line 172
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->isPrepared()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->isPreparing()Z

    move-result v0

    if-nez v0, :cond_2

    .line 173
    invoke-direct {p0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->loadMediaPlayer(Z)V

    .line 176
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    if-eqz v0, :cond_3

    .line 177
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 178
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    .line 181
    :cond_3
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_DRAW_THUMBNAIL_BEFORE_VIDEO_RENDERING:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 182
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 183
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    .line 185
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 3

    .line 198
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "surfaceDestroyed: shoiwng = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mShowing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " , surface = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "KeyguardVideoWallpaper"

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoPlayer:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    .line 200
    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    if-eqz p1, :cond_0

    .line 201
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 p1, 0x0

    .line 202
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsThumbnailViewAdded:Z

    :cond_0
    return-void
.end method

.method public update()V
    .locals 5

    .line 372
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v0

    .line 373
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WallpaperManager;->getVideoColor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoColor:Ljava/lang/String;

    .line 374
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->getVideoFileName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    .line 376
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v1

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 377
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isWallpaperSrcUri()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 378
    iput-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 379
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperUri()Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    goto :goto_1

    .line 381
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 382
    iput-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 384
    :goto_1
    iput-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThemePackage:Ljava/lang/String;

    goto :goto_2

    .line 386
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->getVideoFilePath(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 387
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->getVideoPackage(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThemePackage:Ljava/lang/String;

    .line 388
    iput-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    .line 391
    :goto_2
    sget-boolean v1, Lcom/android/systemui/LsRune;->KEYGUARD_FBE:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mCurrentUserId:I

    invoke-virtual {v1, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 392
    invoke-static {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getScreenId(I)I

    move-result v0

    .line 393
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperAvailable(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 394
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeWallpaperPath(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    .line 395
    iput-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThemePackage:Ljava/lang/String;

    .line 399
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update new video wallpaper! path = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThemePackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", color = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , fileName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " , dls uri = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVideoWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->getVideoFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mVideoFileDescriptor:Landroid/content/res/AssetFileDescriptor;

    .line 401
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->getVideoFileDescriptor()Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mRetrieverFd:Landroid/content/res/AssetFileDescriptor;

    .line 402
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_DRAW_THUMBNAIL_BEFORE_VIDEO_RENDERING:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mThumbnailView:Landroid/widget/ImageView;

    if-eqz v0, :cond_4

    .line 403
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    const/4 v0, 0x1

    .line 405
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->loadMediaPlayer(Z)V

    .line 407
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mPluginLockMgr:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 408
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getDrawState()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(Z)V

    .line 411
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    if-eqz p0, :cond_6

    .line 412
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onPreviewReady()V

    :cond_6
    return-void
.end method

.method public updateBlurState(Z)V
    .locals 2

    .line 456
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsBlurEnabled:Z

    if-eq v0, p1, :cond_1

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateBlurState: b = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", f = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", s = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getDrawState()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVideoWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->mIsBlurEnabled:Z

    if-nez p1, :cond_0

    .line 459
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getDrawState()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 460
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(Z)V

    :cond_1
    return-void
.end method

.method public updateDrawState(Z)V
    .locals 2

    .line 445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateDrawState() needDraw "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mBouncer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardVideoWallpaper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(Z)V

    .line 447
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz p1, :cond_0

    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez p1, :cond_0

    .line 448
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->isSubDisplay()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mBouncer:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 449
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->drawVideo(Z)V

    :cond_0
    return-void
.end method
