.class public Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;
.super Ljava/lang/Object;
.source "FaceWidgetWallpaperUtilsWrapper.java"

# interfaces
.implements Lcom/android/systemui/plugins/facewidget/PluginSystemUIWallpaperUtils;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;
    }
.end annotation


# instance fields
.field private mCallbackMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;",
            "Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;


# direct methods
.method public static synthetic $r8$lambda$Ntwj4biUZlD6UOucuvFwAjFi9Ts()Ljava/lang/Integer;
    .locals 1

    invoke-static {}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->lambda$registerCallback$0()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public constructor <init>(Lcom/android/systemui/wallpaper/KeyguardWallpaperController;)V
    .locals 1

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    .line 33
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    return-void
.end method

.method private static synthetic lambda$registerCallback$0()Ljava/lang/Integer;
    .locals 1

    .line 51
    const-class v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;

    invoke-virtual {v0}, Lcom/android/systemui/facewidget/plugin/PluginFaceWidgetManager;->getAppPluginVersion()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized registerCallback(ZLcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;I)V
    .locals 5

    monitor-enter p0

    if-eqz p2, :cond_2

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 51
    :cond_0
    sget-object v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$$ExternalSyntheticLambda0;

    .line 53
    new-instance v1, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;

    new-instance v2, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;

    const-class v3, Lcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;

    invoke-direct {v2, v3, p2, v0}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;-><init>(Ljava/lang/Class;Ljava/lang/Object;Ljava/util/function/Supplier;)V

    invoke-virtual {v2}, Lcom/android/systemui/plugins/annotations/VersionCheckingProxy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;

    invoke-direct {v1, v0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;-><init>(Lcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    int-to-long p2, p3

    .line 56
    invoke-static {p2, p3}, Lcom/android/systemui/wallpaper/colors/KeyguardWallpaperColors;->getChangeFlagsString(J)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FaceWidgetWallpaperUtilsWrapper"

    .line 57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "registerCallback: flags = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    .line 60
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0, v1, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->registerCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;J)V

    goto :goto_0

    .line 62
    :cond_1
    invoke-static {v1, p2, p3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->registerSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 48
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized removeCallback(ZLcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;)V
    .locals 2

    monitor-enter p0

    if-eqz p2, :cond_2

    .line 77
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper$FaceWidgetSystemUIWidgetCallbackWrapper;

    .line 82
    iget-object v1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mCallbackMap:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 84
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->getInstance()Lcom/android/systemui/wallpaper/WallpaperEventNotifier;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2, v0}, Lcom/android/systemui/wallpaper/WallpaperEventNotifier;->removeCallback(ZLcom/android/systemui/widget/SystemUIWidgetCallback;)V

    goto :goto_0

    .line 86
    :cond_1
    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->removeSystemUIWidgetCallback(Lcom/android/systemui/widget/SystemUIWidgetCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 88
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 78
    :cond_2
    :goto_1
    monitor-exit p0

    return-void
.end method


# virtual methods
.method public getColorByName(Ljava/lang/String;)I
    .locals 0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getAdaptiveColorResult()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    const/4 p0, -0x1

    return p0
.end method

.method public hasAdaptiveColorResult()Z
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getAdaptiveColorResult()Lcom/android/systemui/wallpaper/WallpaperAdaptiveColor$AdaptiveColorResult;

    const/4 p0, 0x0

    return p0
.end method

.method public isOpenThemeLook()Z
    .locals 0

    .line 107
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isOpenThemeLockWallpaper()Z

    move-result p0

    return p0
.end method

.method public isWhiteKeyguardWallpaper(Ljava/lang/String;)Z
    .locals 0

    .line 92
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isWhiteKeyguardWallpaper(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isWhiteSubUiWallpaper(I)Z
    .locals 4

    const/4 p0, 0x0

    if-gez p1, :cond_0

    return p0

    .line 100
    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getInstance()Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    int-to-long v2, p1

    .line 101
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getHint(ZJ)Landroid/app/SemWallpaperColors$Item;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 102
    invoke-virtual {p1}, Landroid/app/SemWallpaperColors$Item;->getFontColor()I

    move-result p1

    if-ne p1, v1, :cond_2

    move p0, v1

    :cond_2
    return p0
.end method

.method public declared-synchronized registerCallback(Lcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 38
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->registerCallback(ZLcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerSubUiCallback(Lcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;I)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 43
    :try_start_0
    invoke-direct {p0, v0, p1, p2}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->registerCallback(ZLcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeCallback(Lcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 68
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->removeCallback(ZLcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeSubUiCallback(Lcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;)V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 73
    :try_start_0
    invoke-direct {p0, v0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetWallpaperUtilsWrapper;->removeCallback(ZLcom/android/systemui/plugins/facewidget/PluginSystemUIWidgetCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
