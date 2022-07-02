.class Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;
.super Ljava/lang/Object;
.source "KeyguardVideoWallpaper.java"

# interfaces
.implements Lcom/samsung/android/media/SemMediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Lcom/samsung/android/media/SemMediaPlayer;II)Z
    .locals 1

    .line 106
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onInfo: i = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , i1 = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "KeyguardVideoWallpaper"

    invoke-static {p3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$400(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/os/Handler;

    move-result-object p1

    const/16 p2, 0x3e8

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 109
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$2;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$400(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
