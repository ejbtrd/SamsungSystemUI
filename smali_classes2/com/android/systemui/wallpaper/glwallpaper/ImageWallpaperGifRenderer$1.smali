.class Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;
.super Landroid/os/Handler;
.source "ImageWallpaperGifRenderer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;Landroid/os/Looper;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;->this$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 65
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;->this$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    iget-object v0, p1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    if-eqz v0, :cond_1

    .line 69
    invoke-static {p1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->access$000(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;)J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;->this$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    iget-object p1, p1, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->mMovie:Landroid/graphics/Movie;

    invoke-virtual {p1}, Landroid/graphics/Movie;->duration()I

    move-result p1

    int-to-long v2, p1

    cmp-long p1, v0, v2

    if-ltz p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;->this$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->access$102(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;Z)Z

    .line 71
    iget-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;->this$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    const-wide/16 v0, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->access$202(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;J)J

    .line 75
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer$1;->this$0:Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->access$300(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;)Landroid/view/SurfaceHolder;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;->access$400(Lcom/android/systemui/wallpaper/glwallpaper/ImageWallpaperGifRenderer;Landroid/view/SurfaceHolder;Z)V

    :goto_0
    return-void
.end method
