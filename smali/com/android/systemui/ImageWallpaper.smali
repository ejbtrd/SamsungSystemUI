.class public Lcom/android/systemui/ImageWallpaper;
.super Landroid/service/wallpaper/WallpaperService;
.source "ImageWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/ImageWallpaper$GifGLEngine;,
        Lcom/android/systemui/ImageWallpaper$GLEngine;
    }
.end annotation


# static fields
.field private static final LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mColorAreas:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

.field private mDisplayController:Lcom/android/wm/shell/common/DisplayController;

.field private final mEngineList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/ImageWallpaper$GLEngine;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNightModeOn:Z

.field private final mLocalColorsToAdd:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/RectF;",
            ">;"
        }
    .end annotation
.end field

.field private final mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field private mMiniBitmap:Landroid/graphics/Bitmap;

.field private volatile mPages:I

.field private final mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSubWallpaperType:I

.field private final mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

.field private mWorker:Landroid/os/HandlerThread;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 79
    const-class v0, Lcom/android/systemui/ImageWallpaper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/ImageWallpaper;->TAG:Ljava/lang/String;

    .line 83
    new-instance v0, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    sput-object v0, Lcom/android/systemui/ImageWallpaper;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/wallpaper/log/WallpaperLogger;Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;Lcom/android/systemui/util/SettingsHelper;Lcom/android/systemui/wallpaper/CoverWallpaper;Ljava/util/Optional;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/wallpaper/log/WallpaperLogger;",
            "Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;",
            "Lcom/android/systemui/util/SettingsHelper;",
            "Lcom/android/systemui/wallpaper/CoverWallpaper;",
            "Ljava/util/Optional<",
            "Lcom/android/wm/shell/common/DisplayController;",
            ">;)V"
        }
    .end annotation

    .line 122
    invoke-direct {p0}, Landroid/service/wallpaper/WallpaperService;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    .line 87
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mColorAreas:Landroid/util/ArraySet;

    const/4 v0, 0x1

    .line 88
    iput v0, p0, Lcom/android/systemui/ImageWallpaper;->mPages:I

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mEngineList:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 96
    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mIsNightModeOn:Z

    const/4 v0, 0x0

    .line 113
    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    .line 123
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    .line 124
    iput-object p2, p0, Lcom/android/systemui/ImageWallpaper;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    .line 125
    iput-object p3, p0, Lcom/android/systemui/ImageWallpaper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 126
    iput-object p4, p0, Lcom/android/systemui/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 127
    invoke-virtual {p5}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/wm/shell/common/DisplayController;

    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 78
    sget-object v0, Lcom/android/systemui/ImageWallpaper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/ImageWallpaper;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Landroid/service/wallpaper/WallpaperService;->mIsSupportInconsistencyWallpaper:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/ImageWallpaper;)Landroid/graphics/Bitmap;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static synthetic access$1002(Lcom/android/systemui/ImageWallpaper;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/systemui/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/ImageWallpaper;)Ljava/util/ArrayList;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper;->mLocalColorsToAdd:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/ImageWallpaper;)Landroid/util/ArraySet;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper;->mColorAreas:Landroid/util/ArraySet;

    return-object p0
.end method

.method static synthetic access$1300()Landroid/graphics/RectF;
    .locals 1

    .line 78
    sget-object v0, Lcom/android/systemui/ImageWallpaper;->LOCAL_COLOR_BOUNDS:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/systemui/ImageWallpaper;)Z
    .locals 0

    .line 78
    iget-boolean p0, p0, Landroid/service/wallpaper/WallpaperService;->mIsSupportInconsistencyWallpaper:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/ImageWallpaper;)Lcom/android/wm/shell/common/DisplayController;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper;->mDisplayController:Lcom/android/wm/shell/common/DisplayController;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/systemui/ImageWallpaper;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/android/systemui/ImageWallpaper;->mSubWallpaperType:I

    return p0
.end method

.method static synthetic access$2202(Lcom/android/systemui/ImageWallpaper;I)I
    .locals 0

    .line 78
    iput p1, p0, Lcom/android/systemui/ImageWallpaper;->mSubWallpaperType:I

    return p1
.end method

.method static synthetic access$300(Lcom/android/systemui/ImageWallpaper;)Ljava/util/HashMap;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper;->mEngineList:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/util/SettingsHelper;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/systemui/ImageWallpaper;)Landroid/os/HandlerThread;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/log/WallpaperLogger;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper;->mLogger:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper;->mSystemWallpaperColors:Lcom/android/systemui/wallpaper/colors/SystemWallpaperColors;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/ImageWallpaper;)Lcom/android/systemui/wallpaper/CoverWallpaper;
    .locals 0

    .line 78
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/ImageWallpaper;)I
    .locals 0

    .line 78
    iget p0, p0, Lcom/android/systemui/ImageWallpaper;->mPages:I

    return p0
.end method

.method static synthetic access$902(Lcom/android/systemui/ImageWallpaper;I)I
    .locals 0

    .line 78
    iput p1, p0, Lcom/android/systemui/ImageWallpaper;->mPages:I

    return p1
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 191
    invoke-super {p0, p1}, Landroid/service/wallpaper/WallpaperService;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 195
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->getDisplayId()I

    move-result v0

    .line 197
    iget-object v1, p0, Lcom/android/systemui/ImageWallpaper;->mEngineList:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/ImageWallpaper$GLEngine;

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {v0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 204
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 205
    :goto_0
    iget-boolean v1, p0, Lcom/android/systemui/ImageWallpaper;->mIsNightModeOn:Z

    if-eq v1, v0, :cond_2

    .line 206
    iput-boolean v0, p0, Lcom/android/systemui/ImageWallpaper;->mIsNightModeOn:Z

    .line 208
    iget-object p0, p0, Lcom/android/systemui/ImageWallpaper;->mEngineList:Ljava/util/HashMap;

    const/4 v0, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/ImageWallpaper$GLEngine;

    if-eqz p0, :cond_2

    .line 210
    invoke-virtual {p0, p1}, Lcom/android/systemui/ImageWallpaper$GLEngine;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    :cond_2
    return-void
.end method

.method public onCreate()V
    .locals 2

    .line 134
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onCreate()V

    .line 136
    sget-object v0, Lcom/android/systemui/ImageWallpaper;->TAG:Ljava/lang/String;

    const-string v1, "Main onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    new-instance v1, Landroid/os/HandlerThread;

    invoke-direct {v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/systemui/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 139
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    return-void
.end method

.method public onCreateEngine()Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 1

    .line 144
    new-instance v0, Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-direct {v0, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;-><init>(Lcom/android/systemui/ImageWallpaper;)V

    return-object v0
.end method

.method public onCreateSubEngine(I)Landroid/service/wallpaper/WallpaperService$Engine;
    .locals 4

    .line 149
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_PLAY_GIF:Z

    if-eqz v0, :cond_4

    .line 150
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    if-eqz v0, :cond_4

    .line 151
    invoke-interface {v0}, Lcom/android/systemui/wallpaper/CoverWallpaper;->onHomeWallpaperReady()V

    .line 155
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 157
    invoke-virtual {p0}, Landroid/service/wallpaper/WallpaperService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/app/WallpaperManager;->isVirtualWallpaperDisplay(Landroid/content/Context;I)Z

    move-result v1

    .line 158
    sget-boolean v2, Lcom/android/systemui/LsRune;->COVER_VIRTUAL_DISPLAY:Z

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    const/16 v1, 0x21

    goto :goto_0

    :cond_0
    const/16 v1, 0x11

    .line 164
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    invoke-interface {v2}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getWallpaperType()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/ImageWallpaper;->mSubWallpaperType:I

    .line 166
    invoke-virtual {v0, v1}, Landroid/app/WallpaperManager;->semGetWallpaperType(I)I

    move-result v0

    .line 168
    sget-object v1, Lcom/android/systemui/ImageWallpaper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onCreateSubEngine "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/ImageWallpaper;->mSubWallpaperType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    invoke-interface {v3}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getFirstWallpaperType()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", wallpaper type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " displayId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    iget p1, p0, Lcom/android/systemui/ImageWallpaper;->mSubWallpaperType:I

    const/4 v1, -0x2

    const/16 v2, 0x16

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/ImageWallpaper;->mCoverWallpaper:Lcom/android/systemui/wallpaper/CoverWallpaper;

    .line 171
    invoke-interface {p1}, Lcom/android/systemui/wallpaper/CoverWallpaper;->getFirstWallpaperType()I

    move-result p1

    if-eq p1, v2, :cond_3

    :cond_1
    iget p1, p0, Lcom/android/systemui/ImageWallpaper;->mSubWallpaperType:I

    if-eq p1, v2, :cond_3

    const/4 p1, 0x5

    if-ne v0, p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 p1, 0x1

    :goto_2
    if-eqz p1, :cond_4

    .line 174
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GifGLEngine;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GifGLEngine;-><init>(Lcom/android/systemui/ImageWallpaper;)V

    return-object p1

    .line 178
    :cond_4
    new-instance p1, Lcom/android/systemui/ImageWallpaper$GLEngine;

    invoke-direct {p1, p0}, Lcom/android/systemui/ImageWallpaper$GLEngine;-><init>(Lcom/android/systemui/ImageWallpaper;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 183
    invoke-super {p0}, Landroid/service/wallpaper/WallpaperService;->onDestroy()V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    const/4 v0, 0x0

    .line 185
    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mWorker:Landroid/os/HandlerThread;

    .line 186
    iput-object v0, p0, Lcom/android/systemui/ImageWallpaper;->mMiniBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
