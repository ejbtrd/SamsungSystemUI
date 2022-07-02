.class Lcom/android/systemui/wallpaper/video/VideoPlayer$1;
.super Landroid/os/Handler;
.source "VideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/video/VideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 85
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e9

    if-ne p1, v0, :cond_0

    .line 86
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    .line 87
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$000(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$1;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$000(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    move-result-object p0

    sget-object p1, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string v0, "Video playing time out (5minutes)"

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
