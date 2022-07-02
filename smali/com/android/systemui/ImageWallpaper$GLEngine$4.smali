.class Lcom/android/systemui/ImageWallpaper$GLEngine$4;
.super Ljava/lang/Object;
.source "ImageWallpaper.java"

# interfaces
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/ImageWallpaper$GLEngine;
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
.field final synthetic this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;


# direct methods
.method public static synthetic $r8$lambda$h3jglzE9VsORXsoOfHPLdBcPqO8(Lcom/android/systemui/ImageWallpaper$GLEngine$4;Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine$4;->lambda$accept$0(Ljava/lang/Boolean;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    .line 974
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic lambda$accept$0(Ljava/lang/Boolean;)V
    .locals 3

    .line 986
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPluginHomeWallpaperConsumer "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-object v2, v2, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$2200(Lcom/android/systemui/ImageWallpaper;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " -> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-object v2, v2, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p1, 0x11

    .line 988
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedWallpaper(I)V

    .line 989
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 992
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-object p1, p1, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperType()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/systemui/ImageWallpaper;->access$2202(Lcom/android/systemui/ImageWallpaper;I)I

    .line 993
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$1700(Lcom/android/systemui/ImageWallpaper$GLEngine;)Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$2300(Lcom/android/systemui/ImageWallpaper$GLEngine;)Lcom/android/systemui/glwallpaper/EglHelper;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 994
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$2400(Lcom/android/systemui/ImageWallpaper$GLEngine;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Boolean;)V
    .locals 2

    .line 977
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$1700(Lcom/android/systemui/ImageWallpaper$GLEngine;)Lcom/android/systemui/glwallpaper/ImageWallpaperRenderer;

    move-result-object v0

    if-nez v0, :cond_0

    .line 978
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object p0

    const-string p1, " mPluginHomeWallpaperConsumer, skip, renderer is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 985
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$4;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/ImageWallpaper$GLEngine$4$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine$4$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine$4;Ljava/lang/Boolean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 974
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine$4;->accept(Ljava/lang/Boolean;)V

    return-void
.end method
