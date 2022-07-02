.class Lcom/android/systemui/ImageWallpaper$GifGLEngine;
.super Landroid/service/wallpaper/WallpaperService$Engine;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GifGLEngine"
.end annotation


# static fields
.field static final MIN_SURFACE_HEIGHT:I = 0x40
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final MIN_SURFACE_WIDTH:I = 0x40
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private mGifWakefulNessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

.field private final mPluginGifWallpaperConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mPluginUpdateTask:Ljava/lang/Runnable;

.field private mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

.field private mVirtualDisplayMode:Z

.field final synthetic this$0:Lcom/android/systemui/ImageWallpaper;


# direct methods
.method public static synthetic $r8$lambda$70Uo-nz1j2Irnx4dBai8nQAMzRk(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->lambda$onCreate$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$T8nBWW0ZnDoPXVB7V1I29Zx8k4A(Lcom/android/systemui/ImageWallpaper$GifGLEngine;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->lambda$onVisibilityChanged$1(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$ayuX6TpytOs3F-0sXuiFBrbGc5Y(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->updatePluginWallpaper()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/ImageWallpaper;)V
    .locals 0

    .line 1016
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-direct {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;-><init>(Landroid/service/wallpaper/WallpaperService;)V

    .line 1011
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mPluginUpdateTask:Ljava/lang/Runnable;

    const/4 p1, 0x0

    .line 1013
    iput-boolean p1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mVirtualDisplayMode:Z

    .line 1182
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;-><init>(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mPluginGifWallpaperConsumer:Ljava/util/function/Consumer;

    .line 1217
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine$2;-><init>(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)V

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mGifWakefulNessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    return-void
.end method

.method static synthetic access$2500(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;
    .locals 0

    .line 1003
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    return-object p0
.end method

.method static synthetic access$2600(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)V
    .locals 0

    .line 1003
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->schedulePluginUpdate()V

    return-void
.end method

.method private cancelPluginUpdateTask()V
    .locals 1

    .line 1139
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1140
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mPluginUpdateTask:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0()V
    .locals 3

    .line 1060
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/CoverWallpaper;->isCoverWallpaperRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1061
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1063
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->setThumbnail(Landroid/graphics/Bitmap;Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 1065
    :cond_0
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperPath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->setGifPath(Ljava/lang/String;)V

    goto :goto_1

    .line 1069
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getCoverWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object v0

    .line 1070
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->setGifUri(Landroid/net/Uri;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$onVisibilityChanged$1(Z)V
    .locals 3

    .line 1101
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " GIF onVisibilityChanged  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1102
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    if-eqz v0, :cond_0

    .line 1103
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->onVisibilityChanged(ZLandroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method private schedulePluginUpdate()V
    .locals 4

    .line 1144
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 1145
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->cancelPluginUpdateTask()V

    const/16 v0, 0x1f4

    .line 1147
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mVirtualDisplayMode:Z

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 1150
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mPluginUpdateTask:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updatePluginWallpaper()V
    .locals 3

    .line 1154
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    if-eqz v0, :cond_3

    .line 1155
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updatePlugInWallpaper "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$2200(Lcom/android/systemui/ImageWallpaper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$2200(Lcom/android/systemui/ImageWallpaper;)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperType()I

    move-result v1

    const/16 v2, 0x16

    if-eq v0, v1, :cond_1

    .line 1159
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/ImageWallpaper;->access$2202(Lcom/android/systemui/ImageWallpaper;I)I

    .line 1161
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$2200(Lcom/android/systemui/ImageWallpaper;)I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$2200(Lcom/android/systemui/ImageWallpaper;)I

    move-result v0

    if-eq v2, v0, :cond_3

    .line 1162
    sget-boolean v0, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v0, :cond_0

    const/16 v0, 0x11

    .line 1164
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 1165
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 1168
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getCoverWhich()I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->forceRebindWallpaper(I)V

    goto :goto_1

    .line 1170
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$2200(Lcom/android/systemui/ImageWallpaper;)I

    move-result v0

    if-ne v0, v2, :cond_3

    .line 1171
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1173
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->setThumbnail(Landroid/graphics/Bitmap;Landroid/view/SurfaceHolder;)V

    goto :goto_0

    .line 1175
    :cond_2
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, " bitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1177
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->setGifPath(Ljava/lang/String;)V

    .line 1178
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->updateGif(Landroid/view/SurfaceHolder;Z)V

    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method protected dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1126
    invoke-super {p0, p1, p2, p3, p4}, Landroid/service/wallpaper/WallpaperService$Engine;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1128
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "Engine="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1129
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p2, "valid surface="

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1130
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    const-string p4, "null"

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1131
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/Surface;->isValid()Z

    move-result p2

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p4

    .line 1130
    :goto_0
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1134
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p1, "surface frame="

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1135
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p4

    :cond_1
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/view/SurfaceHolder;)V
    .locals 6

    const/4 p1, 0x1

    .line 1021
    invoke-virtual {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->setFixedSizeAllowed(Z)V

    const/4 v0, 0x0

    .line 1022
    invoke-virtual {p0, v0}, Landroid/service/wallpaper/WallpaperService$Engine;->setOffsetNotificationsEnabled(Z)V

    .line 1023
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$600(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    move-result-object v1

    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Gif Engine onCreate  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " , displayId"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 1024
    new-instance v1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v3}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    iput-object v1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    .line 1026
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1027
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v1}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mPluginGifWallpaperConsumer:Ljava/util/function/Consumer;

    invoke-interface {v1, v2}, Lcom/android/systemui/wallpaper/CoverWallpaper;->setWallpaperUpdateConsumer(Ljava/util/function/Consumer;)V

    .line 1030
    :cond_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz v1, :cond_1

    .line 1031
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v3

    invoke-static {v2, v3}, Landroid/app/WallpaperManager;->isVirtualWallpaperDisplay(Landroid/content/Context;I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mVirtualDisplayMode:Z

    .line 1034
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/service/wallpaper/WallpaperService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    .line 1035
    new-instance v3, Landroid/view/DisplayInfo;

    invoke-direct {v3}, Landroid/view/DisplayInfo;-><init>()V

    .line 1036
    sget-boolean v4, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v4, :cond_2

    sget-boolean v5, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz v5, :cond_2

    .line 1037
    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    .line 1038
    invoke-virtual {p1, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    const-string p1, "com.samsung.android.hardware.display.category.VIEW_COVER_DISPLAY"

    .line 1040
    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p1

    .line 1041
    array-length v1, p1

    if-lez v1, :cond_3

    .line 1042
    aget-object p1, p1, v0

    .line 1043
    invoke-virtual {p1, v3}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 1047
    :cond_3
    :goto_0
    iget p1, v3, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 1048
    iget v0, v3, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 1050
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " device height : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , width "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v4, :cond_4

    .line 1053
    const-class v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mGifWakefulNessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v1, v2}, Lcom/android/systemui/keyguard/SecLifecycle;->addObserver(Ljava/lang/Object;)V

    .line 1056
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    invoke-virtual {v1, v0, p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->setFrameSize(II)V

    .line 1057
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v1

    invoke-interface {v1, v0, p1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 1059
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1077
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->onDestroy()V

    .line 1079
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GIF onDestroy "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_PLAY_GIF:Z

    if-eqz v0, :cond_1

    .line 1082
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService$Engine;->getDisplayId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mVirtualDisplayMode:Z

    if-eqz v0, :cond_1

    .line 1083
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->cancelPluginUpdateTask()V

    .line 1084
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/CoverWallpaper;->onHomeWallpaperDestroyed()V

    .line 1088
    :cond_1
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_2

    .line 1089
    const-class v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mGifWakefulNessObserver:Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;

    invoke-virtual {v0, v1}, Lcom/android/systemui/keyguard/SecLifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 1092
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    invoke-virtual {v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->stopPlay()V

    const/4 v0, 0x0

    .line 1093
    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    return-void
.end method

.method public onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1115
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 1116
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->mRenderer:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->onCreate(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1121
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceDestroyed(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1110
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onSurfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V

    return-void
.end method

.method public onVisibilityChanged(Z)V
    .locals 2

    .line 1098
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService$Engine;->onVisibilityChanged(Z)V

    .line 1100
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ImageWallpaper$GifGLEngine$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/ImageWallpaper$GifGLEngine;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
