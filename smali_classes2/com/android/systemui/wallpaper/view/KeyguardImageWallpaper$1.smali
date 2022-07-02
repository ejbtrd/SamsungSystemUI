.class Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;
.super Landroid/os/AsyncTask;
.source "KeyguardImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->updateWallpaper(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;",
        ">;"
    }
.end annotation


# instance fields
.field final seq:I

.field final synthetic this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

.field final synthetic val$currentUser:I


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;I)V
    .locals 0

    .line 405
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    iput p2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->val$currentUser:I

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 406
    invoke-static {p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$004(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->seq:I

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;
    .locals 6

    .line 410
    iget-object p1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->val$currentUser:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->loadBitmap(IZ)Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;

    move-result-object p1

    .line 411
    iget-boolean v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->success:Z

    const/4 v1, 0x0

    const-string v2, "KeyguardImageWallpaper"

    if-nez v0, :cond_0

    const-string p0, "doInBackground, result is fail"

    .line 412
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 416
    :cond_0
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p0, "doInBackground, task is cancelled"

    .line 417
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 421
    :cond_1
    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->seq:I

    iget-object v3, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {v3}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$000(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)I

    move-result v3

    if-eq v0, v3, :cond_2

    .line 422
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "doInBackground, request : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->seq:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", current : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$000(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 426
    :cond_2
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_3

    sget-boolean v3, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-nez v3, :cond_3

    .line 427
    iget v3, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->which:I

    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCurrentWhich()I

    move-result v4

    if-eq v3, v4, :cond_3

    const-string p0, "Loaded bitmap is not for current display. Just return here."

    .line 428
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    const/4 v3, 0x0

    if-eqz v0, :cond_8

    .line 434
    iget-boolean v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->fromPluginLock:Z

    if-eqz v0, :cond_8

    .line 436
    iget v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->which:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 437
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$100(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "WPaperChangedByDlsSub"

    invoke-static {v0, v4, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0

    .line 439
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$100(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Landroid/content/Context;

    move-result-object v0

    const-string v4, "WPaperChangedByDls"

    invoke-static {v0, v4, v3}, Lcom/android/systemui/Prefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    .line 442
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "wallpaperUpdateFromDls: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    const-string p0, "Image loaded from PluginLock but DynamicWallpaper is not enabled at this moment. Just return here."

    .line 444
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 446
    :cond_5
    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$200(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->isDynamicWallpaperEnabled()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 447
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDynamicWallpaperEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :try_start_0
    iget-object v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->wallpaerPath:Ljava/lang/String;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$200(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    const-string v0, "DLS does not have wallpaepr path. Just keep going."

    .line 450
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 451
    :cond_6
    iget-object v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->wallpaerPath:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$200(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 452
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bitmap and the path are not matched. loaded path = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->wallpaerPath:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", current path = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$200(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Lcom/android/systemui/pluginlock/PluginLockManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/pluginlock/PluginLockManager;->getWallpaperPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 456
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "e = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_7
    const-string v0, "We are fine. Just keep going."

    .line 459
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$400(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)V

    .line 465
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    iget-object v4, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v4}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$302(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 466
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cache = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {v4}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->which:I

    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$300(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedWallpaper(ILandroid/graphics/Bitmap;)V

    .line 469
    iget-boolean v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->fromPluginLock:Z

    if-eqz v0, :cond_9

    .line 470
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {v0, v1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$502(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 471
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$600(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 472
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    iget v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->which:I

    invoke-static {p0, v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$700(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;I)V

    goto :goto_2

    .line 475
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$800(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 476
    iget v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->which:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    .line 479
    :cond_a
    iget v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->which:I

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 480
    new-instance v1, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    invoke-direct {v1, v3, v3, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 482
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$900(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$1000(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 483
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    iget v2, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->which:I

    invoke-static {v0, v2}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$1100(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;I)V

    .line 484
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$500(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Landroid/graphics/Rect;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 485
    iget-object v0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$1200(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object v0

    iget v2, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->which:I

    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$500(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {v0, v2, v1, p0}, Landroid/app/WallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_2

    .line 488
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    invoke-static {p0}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$1200(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;)Landroid/app/WallpaperManager;

    move-result-object p0

    iget v0, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->which:I

    invoke-virtual {p0, v0, v1, v1}, Landroid/app/WallpaperManager;->semSetSmartCropRect(ILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    :cond_c
    :goto_2
    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 405
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->doInBackground([Ljava/lang/Void;)Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;)V
    .locals 2

    .line 496
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v0, "KeyguardImageWallpaper"

    if-eqz p1, :cond_2

    .line 497
    iget-boolean v1, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->success:Z

    if-nez v1, :cond_0

    goto :goto_0

    .line 502
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    iget p1, p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;->which:I

    invoke-static {v1, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;->access$1300(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;I)Z

    const-string/jumbo p1, "updateWallpaper() DONE"

    .line 504
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mWallpaperResultCallback:Lcom/android/systemui/wallpaper/WallpaperResultCallback;

    if-eqz p0, :cond_1

    .line 507
    invoke-interface {p0}, Lcom/android/systemui/wallpaper/WallpaperResultCallback;->onPreviewReady()V

    :cond_1
    return-void

    :cond_2
    :goto_0
    const-string/jumbo p0, "return onPostExecute: result is null or fail"

    .line 498
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 405
    check-cast p1, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;

    invoke-virtual {p0, p1}, Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$1;->onPostExecute(Lcom/android/systemui/wallpaper/view/KeyguardImageWallpaper$LoaderResult;)V

    return-void
.end method
