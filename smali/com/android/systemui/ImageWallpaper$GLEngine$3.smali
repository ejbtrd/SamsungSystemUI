.class Lcom/android/systemui/ImageWallpaper$GLEngine$3;
.super Ljava/lang/Object;
.source "ImageWallpaper.java"

# interfaces
.implements Lcom/android/wm/shell/common/DisplayController$OnDisplaysChangedListener;


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
.method public static synthetic $r8$lambda$KmDfT0vdBSsFf2-bXiGKK8uo6Ao(Lcom/android/systemui/ImageWallpaper$GLEngine$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->lambda$onFixedRotationFinished$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$NL3Wglon2w78cemtaKK2EHHyaHU(Lcom/android/systemui/ImageWallpaper$GLEngine$3;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->lambda$onFixedRotationStarted$0()V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/ImageWallpaper$GLEngine;)V
    .locals 0

    .line 876
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isMatchingRotationAndOrientation(Landroid/content/res/Configuration;)Z
    .locals 4

    .line 916
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$1900(Lcom/android/systemui/ImageWallpaper$GLEngine;)I

    move-result p0

    invoke-static {p0}, Lcom/android/systemui/util/DeviceState;->getRotation(I)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_0

    const/4 v3, 0x3

    if-ne p0, v3, :cond_1

    .line 917
    :cond_0
    iget v3, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v3, v1, :cond_1

    return v0

    :cond_1
    if-eqz p0, :cond_2

    if-ne p0, v1, :cond_3

    .line 921
    :cond_2
    iget p0, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq p0, v2, :cond_3

    return v0

    :cond_3
    return v2
.end method

.method private synthetic lambda$onFixedRotationFinished$1()V
    .locals 1

    .line 910
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$1900(Lcom/android/systemui/ImageWallpaper$GLEngine;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$2000(Lcom/android/systemui/ImageWallpaper$GLEngine;I)V

    return-void
.end method

.method private synthetic lambda$onFixedRotationStarted$0()V
    .locals 1

    .line 897
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$1900(Lcom/android/systemui/ImageWallpaper$GLEngine;)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$2000(Lcom/android/systemui/ImageWallpaper$GLEngine;I)V

    return-void
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayConfigurationChanged(ILandroid/content/res/Configuration;)V
    .locals 1

    .line 884
    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onDisplayConfigurationChanged "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method

.method public onFixedRotationFinished(I)V
    .locals 4

    .line 904
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-object p1, p1, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {p1}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    .line 905
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$600(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFixedRotationFinished "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {v3}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$1900(Lcom/android/systemui/ImageWallpaper$GLEngine;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 906
    invoke-direct {p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->isMatchingRotationAndOrientation(Landroid/content/res/Configuration;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$600(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, " Error orientation. So update Again."

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 908
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-object p1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$1902(Lcom/android/systemui/ImageWallpaper$GLEngine;I)I

    .line 909
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-object p1, p1, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/systemui/ImageWallpaper$GLEngine$3$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$3$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine$3;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onFixedRotationStarted(II)V
    .locals 4

    .line 893
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-object v0, v0, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/ImageWallpaper;->access$600(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    move-result-object v0

    invoke-static {}, Lcom/android/systemui/ImageWallpaper;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFixedRotationStarted display id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", rotateion "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " , "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-object p1, p1, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {p1}, Landroid/service/wallpaper/WallpaperService;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$1900(Lcom/android/systemui/ImageWallpaper$GLEngine;)I

    move-result p1

    if-eq p1, p2, :cond_0

    .line 895
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-static {p1, p2}, Lcom/android/systemui/ImageWallpaper$GLEngine;->access$1902(Lcom/android/systemui/ImageWallpaper$GLEngine;I)I

    .line 896
    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper$GLEngine$3;->this$1:Lcom/android/systemui/ImageWallpaper$GLEngine;

    iget-object p1, p1, Lcom/android/systemui/ImageWallpaper$GLEngine;->this$0:Lcom/android/systemui/ImageWallpaper;

    invoke-static {p1}, Lcom/android/systemui/ImageWallpaper;->access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/HandlerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/systemui/ImageWallpaper$GLEngine$3$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine$3$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/ImageWallpaper$GLEngine$3;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
