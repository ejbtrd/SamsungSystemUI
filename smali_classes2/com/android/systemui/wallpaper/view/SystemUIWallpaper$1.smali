.class Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;
.super Ljava/lang/Object;
.source "SystemUIWallpaper.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/view/DisplayInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;


# direct methods
.method constructor <init>(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Landroid/view/DisplayInfo;
    .locals 4

    const-string v0, "SystemUIWallpaper"

    const-string/jumbo v1, "mUpdateCallable, start"

    .line 350
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->access$000(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    if-nez v1, :cond_0

    .line 353
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->access$100(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "display"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->access$002(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;Landroid/hardware/display/DisplayManager;)Landroid/hardware/display/DisplayManager;

    .line 356
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->access$000(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)Landroid/hardware/display/DisplayManager;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 357
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-static {v1}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->access$000(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;)Landroid/hardware/display/DisplayManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v2

    iput-object v2, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    .line 360
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    iget-boolean v2, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mIsPreview:Z

    if-eqz v2, :cond_2

    .line 361
    iget-object v2, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    if-eqz v2, :cond_3

    .line 362
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    goto :goto_0

    .line 365
    :cond_2
    const-class v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/keyguard/DisplayLifecycle;

    invoke-virtual {v1}, Lcom/android/systemui/keyguard/DisplayLifecycle;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    iget-object v2, v2, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v1, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 368
    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    iget-object v2, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplay:Landroid/view/Display;

    if-eqz v2, :cond_5

    .line 369
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 371
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    iget-object v2, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsWidth:I

    .line 372
    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsHeight:I

    .line 374
    iget-object v1, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 376
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mUpdateCallable, deviceRotation="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mMetricsWidth="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    iget v1, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsWidth:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mMetricsHeight="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    iget v1, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsHeight:I

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    iget-object v2, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsWidth:I

    .line 379
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, v1, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mMetricsHeight:I

    .line 382
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->access$202(Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;J)J

    .line 383
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mUpdateCallable, end, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    iget-object v2, v2, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    iget-object v2, v2, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    iget v2, v2, Landroid/view/DisplayInfo;->logicalHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->this$0:Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper;->mCurDisplayInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 347
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/view/SystemUIWallpaper$1;->call()Landroid/view/DisplayInfo;

    move-result-object p0

    return-object p0
.end method
