.class Lcom/android/systemui/wallpaper/video/VideoPlayer$2;
.super Ljava/lang/Object;
.source "VideoPlayer.java"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnInitCompleteListener;


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
.method constructor <init>(Lcom/android/systemui/wallpaper/video/VideoPlayer;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitComplete(Lcom/samsung/android/media/SemMediaPlayer;[Lcom/samsung/android/media/SemMediaPlayer$TrackInfo;)V
    .locals 4

    .line 97
    iget-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$102(Lcom/android/systemui/wallpaper/video/VideoPlayer;Z)Z

    .line 98
    iget-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    const/4 v1, 0x0

    invoke-static {p2, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$202(Lcom/android/systemui/wallpaper/video/VideoPlayer;Z)Z

    .line 99
    iget-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$000(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 100
    iget-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$000(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    move-result-object p2

    sget-object v2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "onInitComplete!!"

    invoke-interface {p2, v2, v3}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    :cond_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/media/SemMediaPlayer;->setLooping(Z)V

    .line 104
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$300(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Ljava/io/FileInputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 105
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$300(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Ljava/io/FileInputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 111
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$400(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$400(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->hasWindowFocus()Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    .line 112
    :goto_1
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDeviceInteractive()Z

    move-result p1

    .line 113
    sget-object p2, Lcom/android/systemui/wallpaper/video/VideoPlayer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onInitComplete() p = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$500(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , focus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , isDeviceInteractive = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , hasSurface = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 116
    invoke-static {v3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$600(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " , bouncer = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    .line 117
    invoke-static {v3}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$700(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$500(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 120
    iget-object v2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {v2, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$502(Lcom/android/systemui/wallpaper/video/VideoPlayer;Z)Z

    .line 121
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->startDrawing()V

    .line 126
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$600(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 127
    iget-object v1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$000(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    move-result-object v1

    const-string/jumbo v2, "setSurface because it had failed before"

    invoke-interface {v1, p2, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$800(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Landroid/view/Surface;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->setSurface(Landroid/view/Surface;)V

    :cond_4
    if-eqz v0, :cond_5

    .line 131
    iget-object p2, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p2}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$700(Lcom/android/systemui/wallpaper/video/VideoPlayer;)Z

    move-result p2

    if-nez p2, :cond_5

    if-nez p1, :cond_6

    .line 132
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->access$900(Lcom/android/systemui/wallpaper/video/VideoPlayer;)V

    .line 133
    iget-object p0, p0, Lcom/android/systemui/wallpaper/video/VideoPlayer$2;->this$0:Lcom/android/systemui/wallpaper/video/VideoPlayer;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/video/VideoPlayer;->stopDrawing()V

    :cond_6
    return-void
.end method
