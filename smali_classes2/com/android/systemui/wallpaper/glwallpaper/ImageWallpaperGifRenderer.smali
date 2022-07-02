.class public Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;
.super Ljava/lang/Object;
.source "ImageWallpaperGifRenderer.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageWallpaperGifRenderer"


# instance fields
.field private final MIN_GIF_FRAME_DELAY:I

.field private mContext:Landroid/content/Context;

.field private mFilePath:Ljava/lang/String;

.field private mHeight:I

.field private mIsFinishedPlayGif:Z

.field mMovie:Landroid/graphics/Movie;

.field private mMoviePaint:Landroid/graphics/Paint;

.field private final mOnDrawHandler:Landroid/os/Handler;

.field private mPlayedMovieIndex:J

.field private mPm:Landroid/os/PowerManager;

.field private mStartedMovieTime:J

.field private mSurfaceHolder:Landroid/view/SurfaceHolder;

.field private mVisible:Z

.field private final mWallpaperManager:Landroid/app/WallpaperManager;

.field private mWidth:I

.field private final mWorker:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMoviePaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mIsFinishedPlayGif:Z

    const/16 v0, 0x32

    .line 39
    iput v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->MIN_GIF_FRAME_DELAY:I

    .line 59
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mWorker:Landroid/os/HandlerThread;

    .line 61
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/WallpaperManager;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 62
    new-instance p1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;

    invoke-virtual {p2}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;-><init>(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mOnDrawHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mPlayedMovieIndex:J

    return-wide v0
.end method

.method static synthetic access$102(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mIsFinishedPlayGif:Z

    return p1
.end method

.method static synthetic access$202(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;J)J
    .locals 0

    .line 25
    iput-wide p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mStartedMovieTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;)Landroid/view/SurfaceHolder;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;Landroid/view/SurfaceHolder;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->drawGif(Landroid/view/SurfaceHolder;Z)V

    return-void
.end method

.method private drawGif(Landroid/view/SurfaceHolder;Z)V
    .locals 7

    if-eqz p1, :cond_9

    .line 93
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    if-nez v0, :cond_0

    .line 94
    sget-object p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->TAG:Ljava/lang/String;

    const-string p1, "drawGif movie is null "

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 98
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    :cond_1
    if-nez v0, :cond_2

    .line 102
    sget-object p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->TAG:Ljava/lang/String;

    const-string p1, "Cannot draw onto the canvas as it\'s null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 105
    :cond_2
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 106
    iget-wide v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mStartedMovieTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    long-to-int v3, v1

    int-to-long v3, v3

    .line 107
    iput-wide v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mStartedMovieTime:J

    .line 110
    :cond_3
    iget-wide v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mStartedMovieTime:J

    sub-long/2addr v1, v3

    long-to-int v1, v1

    .line 111
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->duration()I

    move-result v2

    if-le v1, v2, :cond_4

    .line 112
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->duration()I

    move-result v1

    .line 115
    :cond_4
    iget-boolean v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mIsFinishedPlayGif:Z

    if-eqz v2, :cond_5

    const/4 v1, 0x0

    .line 118
    :cond_5
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2, v1}, Landroid/graphics/Movie;->setTime(I)Z

    int-to-long v1, v1

    .line 119
    iput-wide v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mPlayedMovieIndex:J

    .line 127
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v1}, Landroid/graphics/Movie;->height()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mHeight:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-eq v1, v2, :cond_6

    int-to-float v1, v2

    .line 128
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->height()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_0

    :cond_6
    move v1, v3

    .line 131
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->width()I

    move-result v2

    iget v4, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mWidth:I

    if-eq v2, v4, :cond_7

    int-to-float v2, v4

    .line 132
    iget-object v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v3}, Landroid/graphics/Movie;->width()I

    move-result v3

    int-to-float v3, v3

    div-float v3, v2, v3

    :cond_7
    const/high16 v2, -0x1000000

    .line 135
    invoke-virtual {v0, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    const/4 v2, 0x0

    .line 136
    invoke-virtual {v0, v3, v1, v2, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 137
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMoviePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/graphics/Movie;->draw(Landroid/graphics/Canvas;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 139
    sget-object v2, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GIF Exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :goto_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mOnDrawHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p2, :cond_8

    .line 144
    iget-boolean p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mVisible:Z

    if-eqz p2, :cond_8

    .line 145
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mOnDrawHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x32

    invoke-virtual {p0, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 148
    :cond_8
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    if-eqz p0, :cond_a

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/Surface;->isValid()Z

    move-result p0

    if-eqz p0, :cond_a

    .line 149
    invoke-interface {p1, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    goto :goto_2

    .line 153
    :cond_9
    sget-object p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->TAG:Ljava/lang/String;

    const-string p1, " holder is null "

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    return-void
.end method

.method private setInputStreamToMovie(Ljava/io/InputStream;)V
    .locals 3

    if-nez p1, :cond_1

    .line 230
    :try_start_0
    sget-object p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->TAG:Ljava/lang/String;

    const-string v0, " is is null"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 244
    :try_start_1
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 246
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void

    .line 233
    :cond_1
    :try_start_2
    invoke-static {p1}, Landroid/graphics/Movie;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Movie;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_2

    .line 235
    sget-object v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " movie size : w: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {v2}, Landroid/graphics/Movie;->width()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , h: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {p0}, Landroid/graphics/Movie;->height()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 237
    :cond_2
    sget-object p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->TAG:Ljava/lang/String;

    const-string v0, " movie is null"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 244
    :goto_1
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    .line 240
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz p1, :cond_3

    .line 244
    :try_start_5
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    .line 246
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_2
    return-void

    :goto_3
    if-eqz p1, :cond_4

    .line 244
    :try_start_6
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    .line 246
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 249
    :cond_4
    :goto_4
    throw p0
.end method


# virtual methods
.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 85
    sget-object v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->TAG:Ljava/lang/String;

    const-string v1, " onCreate "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 87
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mPm:Landroid/os/PowerManager;

    return-void
.end method

.method public onVisibilityChanged(ZLandroid/view/SurfaceHolder;)V
    .locals 3

    .line 254
    sget-object v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onVisibilityChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iput-object p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 257
    iput-boolean p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mVisible:Z

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x0

    .line 260
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mStartedMovieTime:J

    const/4 p1, 0x1

    .line 261
    invoke-direct {p0, p2, p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->drawGif(Landroid/view/SurfaceHolder;Z)V

    goto :goto_0

    .line 263
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->stopPlay()V

    :goto_0
    return-void
.end method

.method public setFrameSize(II)V
    .locals 3

    .line 158
    sget-object v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " setFrameSize : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iput p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mWidth:I

    .line 160
    iput p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mHeight:I

    return-void
.end method

.method public setGifPath(Ljava/lang/String;)V
    .locals 1

    .line 200
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mFilePath:Ljava/lang/String;

    .line 202
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 203
    new-instance p1, Ljava/io/FileInputStream;

    invoke-direct {p1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 204
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->setInputStreamToMovie(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 206
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setGifUri(Landroid/net/Uri;)V
    .locals 2

    .line 211
    sget-object v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->TAG:Ljava/lang/String;

    const-string v1, " setGifUri : "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string v0, "content"

    .line 214
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1

    goto :goto_0

    .line 217
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 218
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object p1, v0

    .line 220
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->setInputStreamToMovie(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 222
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;Landroid/view/SurfaceHolder;)V
    .locals 4

    if-nez p1, :cond_0

    .line 165
    sget-object p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->TAG:Ljava/lang/String;

    const-string p1, " setThumbnail bitmap is null"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p2, :cond_4

    .line 169
    invoke-interface {p2}, Landroid/view/SurfaceHolder;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    if-nez v0, :cond_1

    .line 171
    sget-object p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->TAG:Ljava/lang/String;

    const-string p1, "Cannot draw onto the canvas as it\'s null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 178
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mHeight:I

    if-le v1, v2, :cond_2

    int-to-float v1, v2

    .line 179
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    div-float/2addr v1, v2

    goto :goto_1

    .line 181
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mHeight:I

    goto :goto_0

    .line 183
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mWidth:I

    if-le v2, v3, :cond_3

    int-to-float v2, v3

    .line 184
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    :goto_2
    int-to-float v3, v3

    div-float/2addr v2, v3

    goto :goto_3

    .line 186
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mWidth:I

    goto :goto_2

    :goto_3
    const/4 v3, 0x0

    .line 189
    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 190
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMoviePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, v3, v3, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p0

    .line 192
    sget-object p1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->TAG:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 194
    :goto_4
    invoke-interface {p2, v0}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_4
    :goto_5
    return-void
.end method

.method public stopPlay()V
    .locals 2

    .line 275
    sget-object v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->TAG:Ljava/lang/String;

    const-string v1, " stopPlay"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mOnDrawHandler:Landroid/os/Handler;

    const/16 v0, 0x3e9

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public updateGif(Landroid/view/SurfaceHolder;Z)V
    .locals 3

    .line 268
    sget-object v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateGif "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    .line 269
    iput-wide v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mStartedMovieTime:J

    .line 270
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->drawGif(Landroid/view/SurfaceHolder;Z)V

    return-void
.end method
