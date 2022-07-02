.class Lcom/android/systemui/ImageWallpaper$GLEngine$2;
.super Ljava/lang/Object;
.source "ImageWallpaper.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper$GLEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;


# direct methods
.method public static synthetic $r8$lambda$N5hU8EXc765aNdHhYdsDvFntTP4(Lcom/android/systemui/ImageWallpaper$GLEngine$2;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$2;->lambda$onStartedWakingUp$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    .line 852
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onStartedWakingUp$0()V
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WallpaperManager;->getLidState()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 858
    :goto_0
    sget-boolean v1, Lcom/android/systemui/LsRune;->SUBSCREEN_WATCHFACE:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-virtual {v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_1

    .line 859
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Ignore Waking up when closed in watch face mode. "

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 862
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$1700(Lcom/android/systemui/ImageWallpaper$GLEngine;)Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$1700(Lcom/android/systemui/ImageWallpaper$GLEngine;)Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;->onStartedWakingUp()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 863
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 864
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$1800(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    .line 867
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$1900(Lcom/android/systemui/ImageWallpaper$GLEngine;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$2000(Lcom/android/systemui/ImageWallpaper$GLEngine;I)V

    .line 869
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$2100(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public onStartedWakingUp()V
    .locals 2

    .line 856
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$2;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GLEngine$2$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$2$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
