.class Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;
.super Landroid/os/Handler;
.source "KeyguardVideoWallpaper.java"


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
.method constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;Landroid/os/Looper;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 91
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->hasWindowFocus()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$000(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getDrawState()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    invoke-static {p1, v0}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$100(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;Z)V

    .line 94
    sget-boolean p1, Lcom/android/systemui/LsRune;->WALLPAPER_DRAW_THUMBNAIL_BEFORE_VIDEO_RENDERING:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$200(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/widget/ImageView;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 95
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$200(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 96
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;

    invoke-static {p0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;->access$302(Lcom/android/systemui/wallpaper/view/KeyguardVideoWallpaper;Z)Z

    :cond_2
    :goto_1
    return-void
.end method
