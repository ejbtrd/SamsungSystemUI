.class Lcom/android/systemui/ImageWallpaper$GLEngine$1;
.super Ljava/lang/Object;
.source "ImageWallpaper.java"

# interfaces
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;


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
.method public static synthetic $r8$lambda$MdlCLB-_Cski9AR65Qnl2vI396U(Lcom/android/systemui/ImageWallpaper$GLEngine$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$1;->lambda$onChanged$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    .line 833
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$onChanged$0()V
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$1500(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    .line 844
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$1600(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    return-void
.end method


# virtual methods
.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    const-string v0, "display_night_theme_wallpaper"

    .line 837
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 839
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object p1

    const-string v0, " Apply Dark mode option changed"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 840
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$1;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-object p1, p1, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/ImageWallpaper$GLEngine$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine$1;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
