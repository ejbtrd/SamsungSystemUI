.class public Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;
.super Ljava/lang/Object;
.source "BlurredCaptureStorage.java"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/util/PanelScreenShotLogger$LogProvider;


# instance fields
.field endTime:J

.field private mBackground:Landroid/view/View;

.field private mCapture:Landroid/graphics/drawable/BitmapDrawable;

.field private mCaptureRect:Landroid/graphics/Rect;

.field private mContext:Landroid/content/Context;

.field private mCustomBlurPercentage:F

.field private mIsReduceTransparencyEnabled:Z

.field private mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field mNoNeedBlurUpdate:Z

.field private mPanelExpanded:Z

.field private mQsExpanded:Z

.field private mSbStateController:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

.field private mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mSizePoint:Landroid/graphics/Point;

.field private mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

.field private mWindowManager:Landroid/view/WindowManager;

.field startTime:J


# direct methods
.method public static synthetic $r8$lambda$RtpdkU1v2esdDkTddPhGJuv8JN8(Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->lambda$onStateChanged$1()V

    return-void
.end method

.method public static synthetic $r8$lambda$erVmn9ilTXJP28HO5jjl4giQeBo(Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->lambda$panelExpansionChanged$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;Lcom/android/systemui/wallpaper/KeyguardWallpaperController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/dump/DumpManager;)V
    .locals 3

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mCaptureRect:Landroid/graphics/Rect;

    .line 88
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSizePoint:Landroid/graphics/Point;

    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mNoNeedBlurUpdate:Z

    const-wide/16 v1, 0x0

    .line 105
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->startTime:J

    .line 106
    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->endTime:J

    .line 111
    sget-boolean v1, Lcom/android/systemui/QpRune;->QUICK_STYLE_PANEL_BLUR_FOR_MASSIVE:Z

    if-nez v1, :cond_0

    return-void

    .line 112
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSbStateController:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 114
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 115
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    .line 116
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    const-string p1, "BlurredCaptureStorage"

    .line 117
    invoke-virtual {p5, p1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 118
    sget-object p2, Lcom/android/systemui/util/PanelScreenShotLogger;->INSTANCE:Lcom/android/systemui/util/PanelScreenShotLogger;

    new-instance p3, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;)V

    invoke-virtual {p2, p1, p3}, Lcom/android/systemui/util/PanelScreenShotLogger;->addLogProvider(Ljava/lang/String;Lcom/android/systemui/util/PanelScreenShotLogger$LogProvider;)V

    .line 120
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "window"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mWindowManager:Landroid/view/WindowManager;

    .line 121
    invoke-static {}, Lcom/samsung/android/view/SemWindowManager;->getInstance()Lcom/samsung/android/view/SemWindowManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    .line 122
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mCaptureRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0, v0, v0, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 123
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->updateScreenSize()V

    .line 126
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const-string p1, "accessibility_reduce_transparency"

    .line 127
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 128
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    const/4 p3, 0x1

    new-array p3, p3, [Landroid/net/Uri;

    aput-object p1, p3, v0

    invoke-virtual {p2, p0, p3}, Lcom/android/systemui/util/SettingsHelper;->registerCallback(Lcom/android/systemui/util/SettingsHelper$OnChangedCallback;[Landroid/net/Uri;)V

    .line 129
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mIsReduceTransparencyEnabled:Z

    return-void
.end method

.method private getBackgroundBitmap()Landroid/graphics/Bitmap;
    .locals 11

    .line 182
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v2

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSbStateController:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->getState()I

    move-result v0

    if-nez v0, :cond_0

    .line 185
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mCaptureRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSizePoint:Landroid/graphics/Point;

    iget v6, p0, Landroid/graphics/Point;->x:I

    iget v7, p0, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v3, 0x7d0

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 188
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "BlurredCaptureStorage"

    if-eqz v0, :cond_1

    const-string v0, "isExternalLiveWallpaper"

    .line 189
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSemWindowManager:Lcom/samsung/android/view/SemWindowManager;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mCaptureRect:Landroid/graphics/Rect;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSizePoint:Landroid/graphics/Point;

    iget v6, p0, Landroid/graphics/Point;->x:I

    iget v7, p0, Landroid/graphics/Point;->y:I

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/16 v3, 0x7d0

    invoke-virtual/range {v1 .. v10}, Lcom/samsung/android/view/SemWindowManager;->screenshot(IIZLandroid/graphics/Rect;IIZIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 193
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->getCapturedWallpaper()Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_2

    const-string v0, "Wallpaper capture failed."

    .line 195
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 197
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x5

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x5

    const/4 v2, 0x1

    invoke-static {p0, v0, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private synthetic lambda$onStateChanged$1()V
    .locals 1

    const/4 v0, 0x0

    .line 296
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mNoNeedBlurUpdate:Z

    return-void
.end method

.method private synthetic lambda$panelExpansionChanged$0()V
    .locals 1

    const/4 v0, 0x0

    .line 250
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mNoNeedBlurUpdate:Z

    return-void
.end method

.method private setBlurBackgroud()V
    .locals 6

    const-string v0, "BlurredCaptureStorage"

    const-string/jumbo v1, "take ScreenShot for blur background"

    .line 134
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->startTime:J

    .line 137
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$integer;->theme_designer_quick_star_blur_level_for_massive:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mCustomBlurPercentage:F

    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCustomBlurPercentage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mCustomBlurPercentage:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget v1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mCustomBlurPercentage:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mIsReduceTransparencyEnabled:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 143
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->getBackgroundBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-nez v1, :cond_1

    const-string p0, "bitmap is null !!!!"

    .line 145
    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 165
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->setBlurEffect(Landroid/graphics/Bitmap;)V

    .line 167
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mCapture:Landroid/graphics/drawable/BitmapDrawable;

    .line 169
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mBackground:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 170
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->endTime:J

    .line 173
    iget-wide v3, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->startTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x32

    cmp-long v1, v1, v3

    if-lez v1, :cond_3

    .line 174
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "It tooks so long to set the blur background : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->endTime:J

    iget-wide v4, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->startTime:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 141
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mBackground:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_1
    return-void
.end method

.method private setBlurEffect(Landroid/graphics/Bitmap;)V
    .locals 4

    .line 206
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    .line 207
    invoke-static {v0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 208
    invoke-virtual {v1}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v2

    .line 209
    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v0

    .line 210
    iget p0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mCustomBlurPercentage:F

    const/high16 v3, 0x41700000    # 15.0f

    mul-float/2addr p0, v3

    invoke-virtual {v0, p0}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 212
    invoke-virtual {v0, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 213
    invoke-virtual {v2, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private updateScreenSize()V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSizePoint:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 224
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSizePoint:Landroid/graphics/Point;

    iget v0, p0, Landroid/graphics/Point;->x:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/graphics/Point;->x:I

    .line 225
    iget v0, p0, Landroid/graphics/Point;->y:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Landroid/graphics/Point;->y:I

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    const-string p1, "BlurredCaptureStorage ============================================= "

    .line 316
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 317
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "CaptureView alpha : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mBackground:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getAlpha()F

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mIsReduceTransparencyEnabled : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mIsReduceTransparencyEnabled:Z

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "WallpaperUtils.isExternalLiveWallpaper(mContext) : "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 320
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "themeParkBlurRadius: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$integer;->theme_designer_quick_star_blur_level:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 321
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isThemeParkTurnedOn: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget v0, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 322
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "isOccluded: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "=================================================================== "

    .line 323
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public gatherState()Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "BlurredCaptureStorage ============================================= "

    .line 330
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CaptureView alpha : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsReduceTransparencyEnabled : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mIsReduceTransparencyEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WallpaperUtils.isExternalLiveWallpaper(mContext) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isExternalLiveWallpaper(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "themeParkBlurRadius: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$integer;->theme_designer_quick_star_blur_level:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isThemeParkTurnedOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$bool;->theme_designer_quick_panel_turned_on:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 336
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isOccluded: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p0, "=================================================================== "

    .line 337
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public onChanged(Landroid/net/Uri;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "accessibility_reduce_transparency"

    .line 309
    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 310
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {p1}, Lcom/android/systemui/util/SettingsHelper;->isReduceTransparencyEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mIsReduceTransparencyEnabled:Z

    :cond_1
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p8, p6

    if-ne p4, p8, :cond_0

    return-void

    .line 233
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->updateScreenSize()V

    .line 234
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSbStateController:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->isKeyguardState()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mQsExpanded:Z

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mPanelExpanded:Z

    :goto_0
    if-eqz p1, :cond_2

    .line 236
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->setBlurBackgroud()V

    :cond_2
    return-void
.end method

.method public onPanelCollapsed()V
    .locals 2

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mBackground:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 280
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 282
    :cond_0
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onPanelExpanded(Z)V

    .line 285
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mQsExpanded:Z

    .line 286
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mPanelExpanded:Z

    return-void
.end method

.method public onStateChanged(I)V
    .locals 3

    .line 291
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->onPanelCollapsed()V

    .line 292
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSbStateController:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->getState()I

    move-result p1

    if-nez p1, :cond_1

    .line 293
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    if-eqz p1, :cond_1

    .line 294
    invoke-interface {p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateController;->isOccluded()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 295
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mNoNeedBlurUpdate:Z

    .line 296
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mBackground:Landroid/view/View;

    new-instance v0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 298
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->setBlurBackgroud()V

    :cond_1
    :goto_0
    return-void
.end method

.method public panelExpansionChanged(ZZ)V
    .locals 2

    .line 248
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mPanelExpanded:Z

    if-eq p2, p1, :cond_2

    .line 249
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mNoNeedBlurUpdate:Z

    if-eqz p2, :cond_0

    .line 250
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mBackground:Landroid/view/View;

    new-instance p2, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;)V

    const-wide/16 v0, 0xc8

    invoke-virtual {p1, p2, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 253
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSbStateController:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->isKeyguardState()Z

    move-result p2

    if-nez p2, :cond_1

    const-class p2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    .line 254
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;

    invoke-virtual {p2}, Lcom/android/systemui/keyguard/KeyguardFastBioUnlockController;->isEnabled()Z

    move-result p2

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 256
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->setBlurBackgroud()V

    .line 259
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mPanelExpanded:Z

    :cond_2
    return-void
.end method

.method public setPanelBackground(Landroid/view/View;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 242
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mBackground:Landroid/view/View;

    .line 243
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_0
    return-void
.end method

.method public setQsExpanded(ZZ)V
    .locals 1

    .line 264
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mQsExpanded:Z

    if-eq v0, p1, :cond_2

    .line 265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mSbStateController:Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->isKeyguardState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 266
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isVideoWallpaper()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p2, :cond_0

    .line 268
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mWallpaperController:Lcom/android/systemui/wallpaper/KeyguardWallpaperController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/wallpaper/KeyguardWallpaperController;->onPanelExpanded(Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 271
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->setBlurBackgroud()V

    .line 274
    :cond_1
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/BlurredCaptureStorage;->mQsExpanded:Z

    :cond_2
    return-void
.end method
