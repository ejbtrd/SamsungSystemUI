.class Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;
.super Ljava/lang/Object;
.source "ImageWallpaper.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper$GifGLEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Consumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;


# direct methods
.method public static synthetic $r8$lambda$6aJuQnPawQWf4WmzRQ_REsniW_U(Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;->lambda$accept$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)V
    .locals 0

    .line 1182
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$accept$0(Ljava/lang/Boolean;)V
    .locals 3

    .line 1192
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPluginGifWallpaperConsumer type previous "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    iget-object v2, v2, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$2200(Lcom/android/systemui/ImageWallpaper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    iget-object v2, v2, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    .line 1193
    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1192
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1196
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    iget-object p1, p1, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1198
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v1, 0x40

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1199
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 1200
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    invoke-virtual {v2}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v2

    .line 1201
    invoke-interface {v2, v0, v1}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 1202
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->access$2500(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    move-result-object v0

    invoke-virtual {v0, p1, v2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->setThumbnail(Landroid/graphics/Bitmap;Landroid/view/SurfaceHolder;)V

    .line 1203
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->access$2500(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    move-result-object v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->setFrameSize(II)V

    goto :goto_0

    .line 1205
    :cond_0
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, " bitmap is null"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->access$2500(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->setGifPath(Ljava/lang/String;)V

    .line 1209
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->access$2500(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService$Engine;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->updateGif(Landroid/view/SurfaceHolder;Z)V

    .line 1210
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperType()I

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/ImageWallpaper;->access$2202(Lcom/android/systemui/ImageWallpaper;I)I

    goto :goto_1

    .line 1212
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->access$2600(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 2

    .line 1185
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->access$2500(Lcom/android/systemui/ImageWallpaper$GifGLEngine;)Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1186
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, " mPluginGifWallpaperConsumer, skip, renderer is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1191
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$GifGLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 1182
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ImageWallpaper$GifGLEngine$1;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
