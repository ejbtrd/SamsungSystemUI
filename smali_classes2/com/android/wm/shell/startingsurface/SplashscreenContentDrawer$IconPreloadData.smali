.class public Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;
.super Ljava/lang/Object;
.source "SplashscreenContentDrawer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IconPreloadData"
.end annotation


# instance fields
.field private config:Landroid/content/res/Configuration;

.field private dataReusable:Z

.field private isIconLoading:Z

.field private preloadBrandingImageHeight:I

.field private preloadBrandingImageWidth:I

.field private preloadDefaultIconSize:I

.field private preloadIconDrawables:[Landroid/graphics/drawable/Drawable;

.field private preloadIconSize:I

.field private preloadMainWindowShiftLength:I

.field private final syncKey:Ljava/lang/Object;

.field private themeId:I

.field final synthetic this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)V
    .locals 0

    .line 1267
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1268
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->syncKey:Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$1100(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;)[Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1254
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->preloadIconDrawables:[Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;)I
    .locals 0

    .line 1254
    iget p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->preloadIconSize:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;)Z
    .locals 0

    .line 1254
    iget-boolean p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->isIconLoading:Z

    return p0
.end method


# virtual methods
.method public getSyncKey()Ljava/lang/Object;
    .locals 0

    .line 1298
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->syncKey:Ljava/lang/Object;

    return-object p0
.end method

.method public isDataReusable()Z
    .locals 1

    .line 1323
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->syncKey:Ljava/lang/Object;

    monitor-enter v0

    .line 1324
    :try_start_0
    iget-boolean p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->dataReusable:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1325
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isDensityReusable()Z
    .locals 2

    .line 1272
    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->preloadIconSize:I

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->preloadDefaultIconSize:I

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 1273
    invoke-static {v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1300(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->preloadBrandingImageWidth:I

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 1274
    invoke-static {v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$2100(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->preloadBrandingImageHeight:I

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 1275
    invoke-static {v1}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$2200(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->preloadMainWindowShiftLength:I

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    .line 1276
    invoke-static {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$2800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public notifyIconLoadComplete()V
    .locals 1

    const/4 v0, 0x0

    .line 1306
    iput-boolean v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->isIconLoading:Z

    .line 1307
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->syncKey:Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    return-void
.end method

.method public setConfig(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1315
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->config:Landroid/content/res/Configuration;

    return-void
.end method

.method public setIconDrawables([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1311
    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->preloadIconDrawables:[Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setIconLoading()V
    .locals 1

    const/4 v0, 0x1

    .line 1302
    iput-boolean v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->isIconLoading:Z

    return-void
.end method

.method public setThemeId(I)V
    .locals 0

    .line 1319
    iput p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->themeId:I

    return-void
.end method

.method public updateDataReusable(Landroid/content/res/Configuration;I)V
    .locals 1

    .line 1280
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->config:Landroid/content/res/Configuration;

    if-nez v0, :cond_0

    .line 1281
    invoke-static {}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1000()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Icon Predraw updating called somewhere before init, callers : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p2, 0x3

    .line 1282
    invoke-static {p2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1281
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1285
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->isDensityReusable()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->config:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->diffPublicOnly(Landroid/content/res/Configuration;)I

    move-result p1

    if-nez p1, :cond_1

    iget p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->themeId:I

    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->dataReusable:Z

    return-void
.end method

.method public updateDensity()V
    .locals 1

    .line 1290
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$700(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->preloadIconSize:I

    .line 1291
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$1300(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->preloadDefaultIconSize:I

    .line 1292
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$2100(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->preloadBrandingImageWidth:I

    .line 1293
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$2200(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->preloadBrandingImageHeight:I

    .line 1294
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->this$0:Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;

    invoke-static {v0}, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;->access$2800(Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer;)I

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/SplashscreenContentDrawer$IconPreloadData;->preloadMainWindowShiftLength:I

    return-void
.end method
