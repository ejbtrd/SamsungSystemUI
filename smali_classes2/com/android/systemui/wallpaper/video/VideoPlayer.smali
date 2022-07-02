.class public Lcom/android/systemui/wallpaper/video/VideoPlayer;
.super Ljava/lang/Object;
.source "VideoPlayer.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "VideoPlayer"


# instance fields
.field private mBouncer:Z

.field private mContext:Landroid/content/Context;

.field private mFileInputStream:Ljava/io/FileInputStream;

.field private mHasSurface:Z

.field private mIsPendingStarted:Z

.field private mIsPrepared:Z

.field private mIsPreparing:Z

.field private mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field private mMediaControlHandler:Landroid/os/Handler;

.field private mMetadataMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

.field private mRootView:Landroid/view/View;

.field private mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

.field private mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

.field private mSurface:Landroid/view/Surface;

.field private mVideoPlayerThread:Landroid/os/HandlerThread;


# direct methods
.method public static synthetic $r8$lambda$Ef83Cc9th1M3xxecjLJY_NgGS6Q(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;Landroid/view/Surface;Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->lambda$initFile$0(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;Landroid/view/Surface;Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rvAvTFSaZf7lrXCemLh-xht0HNY(Lcom/android/systemui/wallpaper/video/VideoPlayer;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->lambda$releaseResourceInternal$1()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Landroid/app/SemWallpaperResourcesInfo;Lcom/android/systemui/wallpaper/log/WallpaperLogger;)V
    .locals 2

    .line 164
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 63
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreparing:Z

    .line 65
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    .line 66
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mHasSurface:Z

    .line 71
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMetadataMap:Ljava/util/HashMap;

    .line 74
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mBouncer:Z

    .line 82
    new-instance v0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaControlHandler:Landroid/os/Handler;

    .line 94
    new-instance v0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    .line 165
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mRootView:Landroid/view/View;

    .line 167
    iput-object p4, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 168
    iput-object p3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    .line 169
    new-instance p1, Landroid/os/HandlerThread;

    sget-object p2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    invoke-direct {p1, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoPlayerThread:Landroid/os/HandlerThread;

    .line 170
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 171
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoPlayerThread:Landroid/os/HandlerThread;

    const/16 p1, 0xa

    invoke-virtual {p0, p1}, Landroid/os/HandlerThread;->setPriority(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Lcom/android/systemui/wallpaper/log/WallpaperLogger;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/systemui/wallpaper/video/VideoPlayer;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/wallpaper/video/VideoPlayer;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreparing:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Ljava/io/FileInputStream;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mFileInputStream:Ljava/io/FileInputStream;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Landroid/view/View;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/wallpaper/video/VideoPlayer;Z)Z
    .locals 0

    .line 54
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mHasSurface:Z

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z
    .locals 0

    .line 54
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mBouncer:Z

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Landroid/view/Surface;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/wallpaper/video/VideoPlayer;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->initSeekTime()V

    return-void
.end method

.method private initFileInternal(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;Landroid/view/Surface;Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;)V
    .locals 6

    .line 181
    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initFile() filePath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", fd = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", uri = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 183
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    const/4 v1, 0x1

    .line 184
    iput-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreparing:Z

    .line 185
    new-instance v2, Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {v2}, Lcom/samsung/android/media/SemMediaPlayer;-><init>()V

    iput-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const v3, 0x88bc

    .line 186
    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(II)Z

    .line 187
    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const v3, 0x9088

    invoke-virtual {v2, v3, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setParameter(II)Z

    if-eqz p4, :cond_0

    .line 189
    invoke-virtual {p0, p4}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    .line 191
    :cond_0
    iget-object p4, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mOnInitCompleteListener:Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;

    invoke-virtual {p4, v1}, Lcom/samsung/android/media/SemMediaPlayer;->setOnInitCompleteListener(Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;)V

    if-eqz p5, :cond_1

    .line 193
    iget-object p4, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p4, p5}, Lcom/samsung/android/media/SemMediaPlayer;->setOnInfoListener(Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;)V

    .line 196
    :cond_1
    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 197
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 198
    new-instance p2, Ljava/io/FileInputStream;

    invoke-direct {p2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    iput-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mFileInputStream:Ljava/io/FileInputStream;

    .line 199
    invoke-virtual {p2}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object p1

    .line 200
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;)V

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    .line 202
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Lcom/samsung/android/media/SemMediaPlayer;->init(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    :cond_3
    if-eqz p3, :cond_4

    .line 204
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p3}, Lcom/samsung/android/media/SemMediaPlayer;->init(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    :cond_4
    const-string/jumbo p0, "video file is invalid"

    .line 206
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 209
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 210
    sget-object p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string p1, "mSemMediaPlayer is not exist"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private initSeekTime()V
    .locals 6

    .line 139
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getVideoColor()Ljava/lang/String;

    move-result-object v1

    .line 141
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/WallpaperManager;->getVideoFileName(I)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    invoke-static {v1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getLegacyFileName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 148
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    if-eqz v1, :cond_1

    .line 149
    invoke-virtual {v1, v0}, Landroid/app/SemWallpaperResourcesInfo;->isBlackFirstFrame(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mBouncer:Z

    if-eqz v1, :cond_1

    .line 151
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemWallpaperResourcesInfo:Landroid/app/SemWallpaperResourcesInfo;

    invoke-virtual {v1, v0}, Landroid/app/SemWallpaperResourcesInfo;->getDefaultVideoFrameInfo(Ljava/lang/String;)I

    move-result v0

    .line 152
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoFrameCount()I

    move-result v1

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->getVideoDuration()I

    move-result v2

    if-lez v0, :cond_1

    if-lez v1, :cond_1

    if-lt v1, v0, :cond_1

    int-to-float v2, v2

    int-to-float v3, v0

    int-to-float v4, v1

    div-float/2addr v3, v4

    mul-float/2addr v2, v3

    float-to-int v2, v2

    .line 156
    sget-object v3, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "initSeekTime: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , count = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " , requested index = "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 161
    :goto_0
    invoke-virtual {p0, v2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->seekTo(I)V

    return-void
.end method

.method private synthetic lambda$initFile$0(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;Landroid/view/Surface;Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;)V
    .locals 0

    .line 176
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->initFileInternal(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;Landroid/view/Surface;Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;)V

    return-void
.end method

.method private synthetic lambda$releaseResourceInternal$1()V
    .locals 1

    .line 347
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseMediaPlayer(Lcom/samsung/android/media/SemMediaPlayer;)V

    return-void
.end method

.method private releaseMediaPlayer(Lcom/samsung/android/media/SemMediaPlayer;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 357
    :cond_0
    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "releaseMediaPlayer() mp = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 360
    :try_start_0
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    .line 361
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreparing:Z

    .line 362
    invoke-virtual {p1}, Lcom/samsung/android/media/SemMediaPlayer;->release()V

    const/4 p1, 0x0

    .line 363
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 365
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 366
    sget-object p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "releaseMediaPlayer() failed stop"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private releaseResourceInternal(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 344
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseMediaPlayer(Lcom/samsung/android/media/SemMediaPlayer;)V

    goto :goto_0

    .line 345
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoPlayerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 346
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoPlayerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private setDataSource(Landroid/media/MediaMetadataRetriever;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7

    .line 463
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    invoke-virtual {p1, p3}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 466
    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v5

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    goto :goto_0

    :cond_1
    if-eqz p4, :cond_2

    .line 468
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p4}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    goto :goto_0

    .line 470
    :cond_2
    sget-object p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string p1, "getVideoScreenSize() file is invalid"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getCurrentFrame()Landroid/graphics/Bitmap;
    .locals 2

    .line 393
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 394
    sget-object p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "getCurrentFrame() mediaPlayer is null"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 399
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/media/SemMediaPlayer;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 401
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 402
    sget-object p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "failed getCurrentFrame"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-object v0
.end method

.method public getVideoDuration()I
    .locals 1

    .line 245
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMetadataMap:Ljava/util/HashMap;

    const/16 v0, 0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 249
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getVideoFrameCount()I
    .locals 1

    .line 236
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMetadataMap:Ljava/util/HashMap;

    const/16 v0, 0x20

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 240
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public getVideoScreenSize(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;)Landroid/graphics/Point;
    .locals 5

    const-string v0, ""

    .line 414
    new-instance v1, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v1}, Landroid/media/MediaMetadataRetriever;-><init>()V

    const/16 v2, 0x280

    const/16 v3, 0x1e0

    .line 416
    :try_start_0
    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setDataSource(Landroid/media/MediaMetadataRetriever;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;)V

    const/16 p0, 0x12

    .line 417
    invoke-virtual {v1, p0}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 p1, 0x13

    .line 418
    :try_start_1
    invoke-virtual {v1, p1}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 p2, 0x18

    .line 419
    :try_start_2
    invoke-virtual {v1, p2}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v0

    const-string p2, "90"

    .line 420
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "270"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 425
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    goto :goto_1

    .line 421
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 422
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move p2, v3

    .line 432
    :goto_1
    :try_start_3
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_4

    :catch_0
    move-exception p3

    .line 434
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4

    :catch_1
    move-exception p2

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    goto :goto_2

    :catch_2
    move-exception p2

    move-object p1, v0

    move-object v0, p0

    move-object p0, p1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_3
    move-exception p2

    move-object p0, v0

    move-object p1, p0

    .line 428
    :goto_2
    :try_start_4
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 429
    sget-object p2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string p3, "getVideoScreenSize() occur exception"

    invoke-static {p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 432
    :try_start_5
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p2

    .line 434
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    move p2, v3

    move-object v4, v0

    move-object v0, p0

    move-object p0, v4

    .line 438
    :goto_4
    sget-object p3, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVideoScreenSize() w = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", h = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", r = "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p3, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance p0, Landroid/graphics/Point;

    invoke-direct {p0, v2, p2}, Landroid/graphics/Point;-><init>(II)V

    return-object p0

    .line 432
    :goto_5
    :try_start_6
    invoke-virtual {v1}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    goto :goto_6

    :catch_5
    move-exception p1

    .line 434
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 436
    :goto_6
    throw p0
.end method

.method public hasSurface()Z
    .locals 0

    .line 232
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mHasSurface:Z

    return p0
.end method

.method public initFile(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;Landroid/view/Surface;Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;)V
    .locals 9

    .line 175
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoPlayerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v8, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/wallpaper/video/VideoPlayer$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;Landroid/view/Surface;Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isPrepared()Z
    .locals 0

    .line 478
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    return p0
.end method

.method public isPreparing()Z
    .locals 0

    .line 482
    iget-boolean p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPreparing:Z

    return p0
.end method

.method public releaseResource(Z)V
    .locals 0

    .line 339
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->releaseResourceInternal(Z)V

    return-void
.end method

.method public releaseThread()V
    .locals 0

    .line 335
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mVideoPlayerThread:Landroid/os/HandlerThread;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public seekTo(I)V
    .locals 3

    .line 315
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    if-nez v0, :cond_0

    .line 316
    sget-object p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "seekTo() mediaPlayer is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 320
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    if-nez v0, :cond_1

    .line 321
    sget-object p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "seekTo() mediaPlayer is not prepared"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 326
    :cond_1
    :try_start_0
    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seekTo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {p0, p1}, Lcom/samsung/android/media/SemMediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 329
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    .line 330
    sget-object p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string p1, "failed seekTo"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public setBouncer(Z)V
    .locals 0

    .line 475
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mBouncer:Z

    return-void
.end method

.method public setSurface(Landroid/view/Surface;)V
    .locals 4

    .line 215
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurface:Landroid/view/Surface;

    if-eqz p1, :cond_1

    .line 217
    :try_start_0
    invoke-virtual {p1}, Landroid/view/Surface;->isValid()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 221
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 222
    sget-object p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSurface() success, surface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 223
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mHasSurface:Z

    goto :goto_1

    .line 218
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSurface() is null or not valid, surface = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 219
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mHasSurface:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 226
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    sget-object v1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setSurface: fail to setSurface, surface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSurface:Landroid/view/Surface;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, v1, p0}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public startDrawing()V
    .locals 1

    const v0, 0x493e0

    .line 254
    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->startDrawing(I)V

    return-void
.end method

.method public startDrawing(I)V
    .locals 4

    .line 259
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    if-nez v0, :cond_0

    .line 260
    sget-object p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startDrawing() mediaPlayer is not prepared"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 261
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    return-void

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    if-nez v0, :cond_1

    .line 266
    sget-object p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "startDrawing() mediaPlayer is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 270
    :cond_1
    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startDrawing() mIsPrepared = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", playTime = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_3

    .line 274
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->start()V

    .line 275
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaControlHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 276
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaControlHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    if-lez p1, :cond_3

    .line 279
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaControlHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 283
    sget-object p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "startDrawing() failed start"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public stopDrawing()V
    .locals 3

    .line 289
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    if-nez v0, :cond_0

    .line 290
    sget-object p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "stopDrawing() mediaPlayer is null"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 294
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    if-eqz v0, :cond_1

    .line 295
    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopDrawing() Do not play for previous request."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPendingStarted:Z

    .line 299
    :cond_1
    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopDrawing() mIsPrepared = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mIsPrepared:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 303
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mSemMediaPlayer:Lcom/samsung/android/media/SemMediaPlayer;

    invoke-virtual {v0}, Lcom/samsung/android/media/SemMediaPlayer;->pause()V

    .line 304
    iget-object v0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaControlHandler:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 305
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMediaControlHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 309
    sget-object v0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stopDrawing() failed pause"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateMediaMetadata(Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 1

    .line 445
    new-instance v0, Landroid/media/MediaMetadataRetriever;

    invoke-direct {v0}, Landroid/media/MediaMetadataRetriever;-><init>()V

    .line 447
    :try_start_0
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setDataSource(Landroid/media/MediaMetadataRetriever;Landroid/content/res/AssetFileDescriptor;Ljava/lang/String;Landroid/net/Uri;)V

    .line 448
    invoke-virtual {v0, p4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object p1

    .line 449
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 450
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer;->mMetadataMap:Ljava/util/HashMap;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 455
    :try_start_1
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 452
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 455
    :try_start_3
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception p0

    .line 457
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void

    .line 455
    :goto_1
    :try_start_4
    invoke-virtual {v0}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p1

    .line 457
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 459
    :goto_2
    throw p0
.end method
