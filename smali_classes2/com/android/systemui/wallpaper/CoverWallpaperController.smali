.class public Lcom/android/systemui/wallpaper/CoverWallpaperController;
.super Ljava/lang/Object;
.source "CoverWallpaperController.java"

# interfaces
.implements Lcom/android/systemui/wallpaper/CoverWallpaper;
.implements Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;


# static fields
.field private static sInstance:Lcom/android/systemui/wallpaper/CoverWallpaper;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFirstWallpaperType:I

.field private mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

.field private final mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

.field private final mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

.field private mWallpaperConsumer:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperId:I

.field private final mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field private final mWallpaperManager:Landroid/app/WallpaperManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/pluginlock/PluginLockMediator;Landroid/app/WallpaperManager;Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/pluginlock/PluginLockManager;)V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x2

    .line 30
    iput v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mFirstWallpaperType:I

    .line 44
    sput-object p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->sInstance:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 45
    iput-object p1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mContext:Landroid/content/Context;

    .line 46
    iput-object p5, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 47
    iput-object p2, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    .line 48
    iput-object p3, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    .line 49
    iput-object p4, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 50
    invoke-interface {p2, p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->setHomeWallpaperCallback(Lcom/android/systemui/pluginlock/component/PluginWallpaperCallback;)V

    return-void
.end method

.method public static getInstance()Lcom/android/systemui/wallpaper/CoverWallpaper;
    .locals 1

    .line 55
    sget-object v0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->sInstance:Lcom/android/systemui/wallpaper/CoverWallpaper;

    return-object v0
.end method

.method private isFbeAvailable()Z
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isFbeAvailable()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeRequired(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    .line 241
    invoke-virtual {p0, v1}, Lcom/android/systemui/pluginlock/PluginLockManager;->isFbeWallpaperAvailable(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private isStartMultiPackCondition(I)Z
    .locals 2

    .line 224
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1, p1}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result p1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 226
    iget p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperId:I

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startMultiPack(I)V
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;-><init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/log/WallpaperLogger;)V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    .line 234
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->startMultipack(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mMultiPackDispatcher:Lcom/android/systemui/wallpaper/MultiPackDispatcher;

    invoke-virtual {v0, p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->buildTypeList(I)Landroid/util/SparseIntArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p1

    iput p1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mFirstWallpaperType:I

    :cond_1
    return-void
.end method


# virtual methods
.method public getCoverMode()I
    .locals 2

    .line 159
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    const/16 v0, 0x10

    if-eqz p0, :cond_0

    goto :goto_0

    .line 161
    :cond_0
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz p0, :cond_1

    const/16 v0, 0x20

    goto :goto_0

    :cond_1
    const-string p0, "CoverWallpaperController"

    const-string v1, "getCoverMode, abnormal state "

    .line 164
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method public getCoverWhich()I
    .locals 1

    .line 147
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_WATCHFACE:Z

    if-eqz p0, :cond_0

    const/16 p0, 0x11

    goto :goto_0

    .line 149
    :cond_0
    sget-boolean p0, Lcom/android/systemui/LsRune;->WALLPAPER_VIRTUAL_DISPLAY:Z

    if-eqz p0, :cond_1

    const/16 p0, 0x21

    goto :goto_0

    :cond_1
    const-string p0, "CoverWallpaperController"

    const-string v0, "getCoverWhich, abnormal state "

    .line 152
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public getFirstWallpaperType()I
    .locals 0

    .line 141
    iget p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mFirstWallpaperType:I

    return p0
.end method

.method public getWallpaperBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 91
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeWallpaper(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 97
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getWallpaperBitmap(I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperPath()Ljava/lang/String;
    .locals 1

    .line 104
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 105
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getFbeWallpaperPath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getWallpaperPath(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getWallpaperType()I
    .locals 1

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockManager:Lcom/android/systemui/pluginlock/PluginLockManager;

    invoke-virtual {p0}, Lcom/android/systemui/pluginlock/PluginLockManager;->getSubFbeWallpaperType()I

    move-result p0

    return p0

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getWallpaperType(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x2

    return p0
.end method

.method public isCoverWallpaperRequired()Z
    .locals 5

    .line 183
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->getPluginLockHomeWallpaper()Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {v0}, Lcom/android/systemui/pluginlock/component/PluginHomeWallpaper;->getCurrentScreen()I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 189
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-interface {v3, v2}, Lcom/android/systemui/pluginlock/PluginLockMediator;->isHomeWallpaperRequired(I)Z

    move-result v3

    .line 190
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isFbeAvailable()Z

    move-result p0

    if-nez v3, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    move v1, v2

    .line 193
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isCoverWallpaperRequired: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", [homeWallpaperReq:"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isFbeAvailable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", isSubScreen:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "CoverWallpaperController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method public isGifWallpaper()Z
    .locals 1

    .line 177
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getWallpaperType()I

    move-result p0

    const/16 v0, 0xc

    if-eq p0, v0, :cond_1

    const/16 v0, 0x16

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onDataCleared()V
    .locals 0

    return-void
.end method

.method public onHomeWallpaperDestroyed()V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onHomeWallpaperDestroyed: wallpaperId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mWallpaperId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CoverWallpaperController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget v1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperId:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    .line 217
    iput-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperConsumer:Ljava/util/function/Consumer;

    const/4 v0, -0x2

    .line 218
    iput v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mFirstWallpaperType:I

    .line 219
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mPluginLockMediator:Lcom/android/systemui/pluginlock/PluginLockMediator;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverMode()I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/systemui/pluginlock/PluginLockMediator;->onHomeWallpaperChanged(I)V

    :cond_0
    return-void
.end method

.method public onHomeWallpaperReady()V
    .locals 4

    .line 201
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    move-result v0

    .line 202
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->isStartMultiPackCondition(I)Z

    move-result v1

    const-string v2, "CoverWallpaperController"

    if-eqz v1, :cond_0

    .line 203
    iget-object v1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {v1, v0}, Landroid/app/WallpaperManager;->getWallpaperId(I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperId:I

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onHomeWallpaperReady: startMultiPack, mWallpaperId = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperId:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    invoke-direct {p0, v0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->startMultiPack(I)V

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "onHomeWallpaperReady: Dont start multipack."

    .line 207
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onReady()V
    .locals 2

    const-string v0, "CoverWallpaperController"

    const-string/jumbo v1, "onReady"

    .line 68
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperConsumer:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 70
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onWallpaperHintUpdate(Landroid/app/SemWallpaperColors;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getWhich()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    .line 77
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onWallpaperHintUpdate: invalid which. which = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/app/SemWallpaperColors;->getWhich()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CoverWallpaperController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperManager:Landroid/app/WallpaperManager;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/CoverWallpaperController;->getCoverWhich()I

    move-result p0

    invoke-virtual {v0, p1, p0}, Landroid/app/WallpaperManager;->semSetDLSWallpaperColors(Landroid/app/SemWallpaperColors;I)V

    return-void
.end method

.method public onWallpaperUpdate(Z)V
    .locals 2

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onWallpaperUpdate:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperConsumer:Ljava/util/function/Consumer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isFirst:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverWallpaperController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p0, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperConsumer:Ljava/util/function/Consumer;

    if-eqz p0, :cond_0

    .line 62
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public setWallpaperUpdateConsumer(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 171
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setWallpaperUpdateConsumer: consumer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoverWallpaperController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    iput-object p1, p0, Lcom/android/systemui/wallpaper/CoverWallpaperController;->mWallpaperConsumer:Ljava/util/function/Consumer;

    return-void
.end method
