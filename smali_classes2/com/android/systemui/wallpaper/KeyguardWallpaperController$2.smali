.class Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;
.super Ljava/lang/Object;
.source "KeyguardWallpaperController.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/WallpaperResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/KeyguardWallpaperController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDelegateBitmapReady(Landroid/graphics/Bitmap;Z)V
    .locals 0

    .line 211
    iget-object p1, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$000(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 212
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$100(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeSemWallpaperColors()Landroid/app/SemWallpaperColors;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V

    :cond_0
    return-void
.end method

.method public onDrawFinished()V
    .locals 3

    .line 219
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDrawFinished: chaged = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$300(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_CAPTURED_BLUR:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/DeviceState;->isCapturedBlurAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$400(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$300(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$400(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaperBase;->update()V

    .line 222
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$302(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Z)Z

    :cond_0
    return-void
.end method

.method public onPreviewReady()V
    .locals 1

    .line 228
    iget-object p0, p0, Lcom/android/systemui/wallpaper/KeyguardWallpaperController$2;->this$0:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->access$500(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)Lcom/android/systemui/wallpaper/WallpaperChangeObserver;

    move-result-object p0

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/systemui/wallpaper/WallpaperChangeObserver;->updateState(I)V

    return-void
.end method
