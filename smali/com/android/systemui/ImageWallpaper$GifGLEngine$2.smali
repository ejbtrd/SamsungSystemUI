.class Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;
.super Ljava/lang/Object;
.source "ImageWallpaper.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper$GifGLEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;


# direct methods
.method public static synthetic $r8$lambda$drIEJI-lrNR-DHPjRKa2xhpzB44(Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;->lambda$onStartedWakingUp$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$msxsJf0LRs3qgAE6ef33NFhHNqg(Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;->lambda$onFinishedGoingToSleep$1()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)V
    .locals 0

    .line 1217
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onFinishedGoingToSleep$1()V
    .locals 2

    .line 1232
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " onFinishedGoingToSleep "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->access$2500(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1234
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->access$2500(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->stopPlay()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onStartedWakingUp$0()V
    .locals 3

    .line 1221
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " onStartedWakingUp "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1223
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->access$2500(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    move-result-object v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 1224
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->access$2500(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->updateGif(Landroid/view/SurfaceHolder;Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public onFinishedGoingToSleep()V
    .locals 2

    .line 1231
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GifGLEngine$2$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine$2$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 2

    .line 1220
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GifGLEngine$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
