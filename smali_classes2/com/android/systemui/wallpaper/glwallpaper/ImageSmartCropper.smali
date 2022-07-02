.class public Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;
.super Ljava/lang/Object;
.source "ImageSmartCropper.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCropResult:Landroid/graphics/Rect;

.field private mDefaultDisplay:Landroid/view/Display;

.field private mDisplayId:I

.field private mFaceCount:I

.field private mFromLandScape:Z

.field private mLidState:I

.field private final mTmpDisplayInfo:Landroid/view/DisplayInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 55
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    .line 57
    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDefaultDisplay:Landroid/view/Display;

    .line 58
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    const/4 v0, 0x1

    .line 63
    iput v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mLidState:I

    .line 66
    iput-object p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    .line 67
    iput p2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDisplayId:I

    const/4 p1, 0x0

    .line 69
    iput p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFaceCount:I

    return-void
.end method

.method private getDefaultDisplayInfo()Landroid/view/DisplayInfo;
    .locals 2

    .line 259
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDefaultDisplay:Landroid/view/Display;

    if-nez v0, :cond_0

    .line 260
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/view/WindowManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDefaultDisplay:Landroid/view/Display;

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDefaultDisplay:Landroid/view/Display;

    iget-object v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    invoke-virtual {v0, v1}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 263
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mTmpDisplayInfo:Landroid/view/DisplayInfo;

    return-object p0
.end method

.method private getSettingKey()Ljava/lang/String;
    .locals 2

    .line 243
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " getSettingKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mLidState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageSmartCropper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    iget v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mLidState:I

    if-nez v0, :cond_0

    const-string/jumbo v0, "sub_display_system_wallpaper_transparency"

    goto :goto_0

    :cond_0
    const-string v0, "android.wallpaper.settings_systemui_transparency"

    .line 251
    :goto_0
    iget p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mDisplayId:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_1

    const-string v0, "dex_system_wallpaper_transparency"

    :cond_1
    return-object v0
.end method


# virtual methods
.method public checkDisplaySize(Landroid/content/res/Configuration;)V
    .locals 6

    .line 268
    iget-object p0, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 269
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 270
    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    .line 272
    sget-boolean v1, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v1, :cond_0

    .line 273
    iget p1, p1, Landroid/content/res/Configuration;->semDisplayDeviceType:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    const/16 p1, 0x11

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 278
    :goto_0
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSmartCroppedRect(I)Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v1, :cond_1

    int-to-float v2, v0

    int-to-float v3, p0

    div-float v4, v2, v3

    div-float/2addr v3, v2

    .line 282
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v2, v5

    sub-float/2addr v4, v2

    .line 283
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_1

    sub-float/2addr v3, v2

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpl-float v2, v2, v5

    if-lez v2, :cond_1

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Smart Crop ratio different display size.So clear cache. which : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " display w: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " , h: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", cropRect : "

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImageSmartCropper"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->clearCachedSmartCroppedRect(I)V

    :cond_1
    return-void
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    return-object p0
.end method

.method public getCropRectByWhich(I)Landroid/graphics/Rect;
    .locals 0

    .line 74
    invoke-static {p1}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSmartCroppedRect(I)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public needToSmartCrop()Z
    .locals 4

    .line 223
    invoke-static {}, Lcom/android/systemui/wallpaper/WallpaperUtils;->isDexStandAloneMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 228
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "sehome_portrait_mode_only"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_1

    return v1

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->getSettingKey()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_2

    move v1, v3

    :cond_2
    return v1
.end method

.method public setLidState(I)V
    .locals 1

    .line 218
    sget-boolean v0, Lcom/android/systemui/LsRune;->WALLPAPER_SUB_DISPLAY_MODE:Z

    if-eqz v0, :cond_0

    .line 219
    iput p1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mLidState:I

    :cond_0
    return-void
.end method

.method public updateSmartCropRect(Landroid/graphics/Bitmap;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "] ["

    const-string v3, "ImageSmartCropper"

    const-string/jumbo v4, "updateSmartCropRect"

    .line 117
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_0

    :try_start_0
    const-string v0, "mBackground == null"

    .line 122
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 126
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v0, "mBackground is recycled"

    .line 127
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 131
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->getDefaultDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v4

    .line 132
    iget v5, v4, Landroid/view/DisplayInfo;->logicalWidth:I

    .line 133
    iget v6, v4, Landroid/view/DisplayInfo;->logicalHeight:I

    .line 134
    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 136
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v15

    .line 137
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    .line 139
    new-instance v7, Lcom/samsung/android/media/face/SemFaceDetection;

    invoke-direct {v7}, Lcom/samsung/android/media/face/SemFaceDetection;-><init>()V

    .line 140
    invoke-virtual {v7}, Lcom/samsung/android/media/face/SemFaceDetection;->init()I

    .line 141
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v13, 0x0

    .line 142
    iput v13, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFaceCount:I

    .line 144
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "bmpWidth : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", bmpHeight : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "deviceWidth : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, ", deviceHeight : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9, v13, v13, v13, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v10, 0x1

    if-eq v4, v10, :cond_3

    const/4 v11, 0x3

    if-ne v4, v11, :cond_2

    goto :goto_0

    :cond_2
    move v4, v13

    goto :goto_1

    :cond_3
    :goto_0
    move v4, v10

    :goto_1
    if-eqz v4, :cond_4

    int-to-float v4, v6

    int-to-float v5, v5

    goto :goto_2

    :cond_4
    int-to-float v4, v5

    int-to-float v5, v6

    :goto_2
    div-float/2addr v4, v5

    int-to-float v5, v15

    mul-float/2addr v5, v4

    float-to-int v5, v5

    if-le v5, v14, :cond_5

    move v5, v14

    .line 154
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "deviceRatio: "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, ", landBitmapWidth : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", landBitmapHeight : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {v7, v1, v8}, Lcom/samsung/android/media/face/SemFaceDetection;->run(Landroid/graphics/Bitmap;Ljava/util/ArrayList;)I

    move-result v4

    .line 160
    iput v4, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFaceCount:I

    .line 161
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Number of faces = "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v9

    move v9, v13

    .line 162
    :goto_3
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v9, v11, :cond_7

    .line 163
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/samsung/android/media/face/SemFace;

    invoke-virtual {v11}, Lcom/samsung/android/media/face/SemFace;->getRect()Landroid/graphics/Rect;

    move-result-object v11

    .line 164
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "faceRect is : ["

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Landroid/graphics/Rect;->left:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Landroid/graphics/Rect;->top:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Landroid/graphics/Rect;->right:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v11, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    invoke-virtual {v11}, Landroid/graphics/Rect;->centerX()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/graphics/Rect;->centerY()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v13, "]"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 164
    invoke-static {v3, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    invoke-virtual {v11}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v12, v13, :cond_6

    move-object v6, v11

    :cond_6
    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x0

    goto :goto_3

    .line 170
    :cond_7
    invoke-virtual {v7}, Lcom/samsung/android/media/face/SemFaceDetection;->release()V

    if-nez v4, :cond_9

    .line 173
    new-instance v2, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;

    invoke-direct {v2}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;-><init>()V

    mul-int v4, v15, v14

    .line 175
    new-array v4, v4, [I

    .line 176
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v1, v7, v10}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v8, v4

    move v10, v15

    const/4 v1, 0x0

    move v13, v15

    move/from16 p1, v14

    .line 177
    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    const/16 v7, 0x1000

    move/from16 v8, p1

    .line 179
    invoke-virtual {v2, v4, v15, v8, v7}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->setImage([IIII)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 180
    invoke-virtual {v2}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->findObjectRect()Landroid/graphics/Rect;

    move-result-object v4

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[ findObjectRect() ] : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v4

    goto :goto_4

    :cond_8
    const-string v4, "do not find object"

    .line 184
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_4
    invoke-virtual {v2}, Lcom/samsung/android/saiv/imageprocessing/SmartCropper;->releaseImage()Z

    goto :goto_5

    :cond_9
    move v8, v14

    const/4 v1, 0x0

    .line 188
    :goto_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "recognizedRect: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v1, v1, v15, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 191
    invoke-virtual {v6}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 192
    div-int/lit8 v7, v5, 0x2

    .line 193
    div-int/lit8 v14, v8, 0x2

    .line 195
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_a

    sub-int/2addr v14, v7

    .line 196
    invoke-virtual {v2, v1, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_6

    :cond_a
    sub-int v14, v8, v7

    if-le v4, v14, :cond_b

    sub-int v14, v8, v5

    .line 198
    invoke-virtual {v2, v1, v14}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_6

    :cond_b
    if-lt v4, v7, :cond_c

    sub-int/2addr v4, v7

    .line 200
    invoke-virtual {v2, v1, v4}, Landroid/graphics/Rect;->offset(II)V

    .line 203
    :cond_c
    :goto_6
    iput-object v2, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    move/from16 v1, p2

    .line 204
    invoke-static {v1, v2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->setCachedSmartCroppedRect(ILandroid/graphics/Rect;)V

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[ findCropRect() of Real Image] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/LinkageError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OutOfMemoryError while smart cropping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_1
    move-exception v0

    .line 210
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "java.lang.LinkageError occurred when smart cropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/LinkageError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :catch_2
    move-exception v0

    .line 208
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception occurred when smart cropping "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_7
    return-void
.end method

.method public updateSmartCropRectIfNeeded(Landroid/graphics/Bitmap;I)V
    .locals 4

    .line 95
    invoke-static {p2}, Lcom/android/systemui/wallpaper/WallpaperUtils;->getCachedSmartCroppedRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    .line 97
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    .line 98
    iput-boolean v2, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFromLandScape:Z

    goto :goto_0

    .line 100
    :cond_0
    iput-boolean v3, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFromLandScape:Z

    .line 103
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " updateSmartCropRectIfNeeded: from landscape = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFromLandScape:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageSmartCropper"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    iget-object v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mCropResult:Landroid/graphics/Rect;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->mFromLandScape:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    if-eqz v2, :cond_4

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->needToSmartCrop()Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/wallpaper/glwallpaper/ImageSmartCropper;->updateSmartCropRect(Landroid/graphics/Bitmap;I)V

    :cond_3
    return-void

    :cond_4
    :goto_2
    const-string/jumbo p0, "updateSmartCropRectIfNeeded: Do not update SmartCrop."

    .line 107
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
