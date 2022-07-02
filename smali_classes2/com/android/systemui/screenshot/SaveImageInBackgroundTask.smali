.class Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;
.super Landroid/os/AsyncTask;
.source "SaveImageInBackgroundTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        "Ljava/lang/Void;",
        "Lcom/android/systemui/screenshot/SaveImageInBackgroundData;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mTickerAddSpace:Z


# instance fields
.field private clipBoardServiceConnection:Landroid/content/ServiceConnection;

.field mAm:Landroid/app/IActivityManager;

.field private mBixbyCaptureSharedActivityName:Ljava/lang/String;

.field private mBixbyCaptureSharedPackageName:Ljava/lang/String;

.field private mCaptureSharedBundle:Landroid/os/Bundle;

.field private mCapturedDisplay:I

.field private mCapturedOrigin:I

.field private mCapturedType:I

.field private mClipBoardMessenger:Landroid/os/Messenger;

.field private mDisplayNotiIcon:Z

.field final mForegroundToken:Landroid/os/IBinder;

.field private final mImageDisplayName:Ljava/lang/String;

.field private final mImageFileName:Ljava/lang/String;

.field private final mImageFilePath:Ljava/lang/String;

.field private final mImageHeight:I

.field private final mImageTime:J

.field private final mImageWidth:I

.field private mIsBixbyCaptureShared:Z

.field private mIsFormatPNG:Z

.field private mIsSavingFailed:Z

.field private mIsScrollCaptureConnectionListenerInvoked:Z

.field private mNavigationBarHeight:I

.field private mNavigationBarVisible:Z

.field private final mNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mNotificationManager:Landroid/app/NotificationManager;

.field private final mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

.field private final mPublicNotificationBuilder:Landroid/app/Notification$Builder;

.field private mRotation:I

.field private mSafeInsetBottom:I

.field private mSafeInsetLeft:I

.field private mSafeInsetRight:I

.field private mSafeInsetTop:I

.field private mScreenCaptureTime:Ljava/lang/String;

.field private final mScreenshotDir:Ljava/io/File;

.field private mScrollCaptureAvailable:Z

.field private mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

.field private mScrollCaptureTransactionId:J

.field private mStatusBarHeight:I

.field private mStatusBarVisible:Z

.field private mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-class v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/systemui/screenshot/SaveImageInBackgroundData;Landroid/app/NotificationManager;)V
    .locals 19

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    .line 157
    invoke-direct/range {p0 .. p0}, Landroid/os/AsyncTask;-><init>()V

    .line 97
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mForegroundToken:Landroid/os/IBinder;

    .line 98
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mAm:Landroid/app/IActivityManager;

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureTransactionId:J

    const/4 v10, 0x0

    .line 104
    iput-boolean v10, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsScrollCaptureConnectionListenerInvoked:Z

    .line 121
    iput-boolean v10, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    .line 122
    iput-boolean v10, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsSavingFailed:Z

    .line 136
    iput-boolean v10, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsFormatPNG:Z

    .line 140
    iput-boolean v10, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBixbyCaptureShared:Z

    const/4 v11, 0x0

    .line 141
    iput-object v11, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedPackageName:Ljava/lang/String;

    .line 142
    iput-object v11, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedActivityName:Ljava/lang/String;

    .line 153
    iput-object v11, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mClipBoardMessenger:Landroid/os/Messenger;

    .line 338
    new-instance v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$2;

    invoke-direct {v0, v7}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$2;-><init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)V

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->clipBoardServiceConnection:Landroid/content/ServiceConnection;

    .line 158
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    .line 168
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 169
    iget-object v2, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageFilePath:Ljava/lang/String;

    iput-object v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageDisplayName:Ljava/lang/String;

    .line 170
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isFormatPNG(Landroid/content/Context;)Z

    move-result v3

    iput-boolean v3, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsFormatPNG:Z

    if-eqz v3, :cond_0

    .line 171
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".png"

    goto :goto_0

    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".jpg"

    :goto_0
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    .line 172
    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotUtils;->getFormattedCurrentTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    .line 174
    new-instance v0, Ljava/io/File;

    sget-object v1, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    const-string v3, "Screenshots"

    invoke-direct {v0, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    .line 176
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    .line 178
    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIsFormatPNG = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsFormatPNG:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v13

    iput v13, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    .line 182
    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v14

    iput v14, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    .line 183
    iget v15, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->iconSize:I

    .line 184
    iget v2, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewWidth:I

    .line 185
    iget v3, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->previewheight:I

    .line 186
    iget v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->capturedOrigin:I

    iput v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedOrigin:I

    .line 187
    iget v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->capturedType:I

    iput v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedType:I

    .line 188
    iget v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->safeInsetLeft:I

    iput v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSafeInsetLeft:I

    .line 189
    iget v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->safeInsetTop:I

    iput v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSafeInsetTop:I

    .line 190
    iget v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->safeInsetRight:I

    iput v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSafeInsetRight:I

    .line 191
    iget v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->safeInsetBottom:I

    iput v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSafeInsetBottom:I

    .line 192
    iget v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->capturedDisplay:I

    iput v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedDisplay:I

    .line 193
    iget v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->rotation:I

    iput v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRotation:I

    .line 194
    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->webData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    iput-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    .line 195
    iget-boolean v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->statusBarVisible:Z

    iput-boolean v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mStatusBarVisible:Z

    .line 196
    iget-boolean v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->navigationBarVisible:Z

    iput-boolean v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNavigationBarVisible:Z

    .line 197
    iget v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->statusBarHeight:I

    iput v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mStatusBarHeight:I

    .line 198
    iget v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->navigationBarHeight:I

    iput v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNavigationBarHeight:I

    .line 199
    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->captureSharedBundle:Landroid/os/Bundle;

    iput-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCaptureSharedBundle:Landroid/os/Bundle;

    .line 201
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    .line 202
    new-instance v1, Landroid/graphics/ColorMatrix;

    invoke-direct {v1}, Landroid/graphics/ColorMatrix;-><init>()V

    const/high16 v4, 0x3e800000    # 0.25f

    .line 203
    invoke-virtual {v1, v4}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 204
    new-instance v4, Landroid/graphics/ColorMatrixColorFilter;

    invoke-direct {v4, v1}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v6, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 205
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v16, 0x4c000000    # 3.3554432E7f

    sub-int v1, v2, v13

    .line 208
    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-int v4, v3, v14

    div-int/lit8 v4, v4, 0x2

    int-to-float v4, v4

    invoke-virtual {v5, v1, v4}, Landroid/graphics/Matrix;->setTranslate(FF)V

    .line 209
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preview = ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " x "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ], matrix = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Landroid/graphics/Matrix;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    const/high16 v17, 0x4c000000    # 3.3554432E7f

    move-object/from16 v0, p0

    move-object v4, v5

    move-object v11, v5

    move-object v5, v6

    move-object/from16 v18, v6

    move/from16 v6, v17

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object v17

    int-to-float v0, v15

    .line 213
    invoke-static {v13, v14}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    div-float v1, v0, v1

    .line 214
    invoke-virtual {v11, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    int-to-float v2, v13

    mul-float/2addr v2, v1

    sub-float v2, v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    int-to-float v4, v14

    mul-float/2addr v1, v4

    sub-float/2addr v0, v1

    div-float/2addr v0, v3

    .line 215
    invoke-virtual {v11, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 216
    iget-object v1, v9, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    move v2, v15

    move v3, v15

    move-object v4, v11

    move-object/from16 v5, v18

    move/from16 v6, v16

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 218
    iput-boolean v10, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBixbyCaptureShared:Z

    .line 219
    iget-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCaptureSharedBundle:Landroid/os/Bundle;

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    .line 220
    iput-boolean v2, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBixbyCaptureShared:Z

    const-string/jumbo v3, "params"

    .line 221
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    if-eqz v1, :cond_3

    .line 222
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 223
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string/jumbo v5, "packageName"

    .line 224
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 225
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedPackageName:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v5, "activityName"

    .line 226
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 227
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedActivityName:Ljava/lang/String;

    goto :goto_1

    .line 234
    :cond_3
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isScrollCaptureAvailable(Landroid/content/Context;)Z

    move-result v1

    iput-boolean v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    if-eqz v1, :cond_4

    .line 236
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 237
    new-instance v1, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-direct {v1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;-><init>()V

    iput-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    .line 238
    new-instance v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;

    invoke-direct {v5, v7, v3, v4, v8}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask$1;-><init>(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;JLandroid/content/Context;)V

    invoke-virtual {v1, v8, v5}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->connect(Landroid/content/Context;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface$ConnectionListener;)Z

    goto :goto_2

    .line 288
    :cond_4
    invoke-direct/range {p0 .. p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->startClipBoardService(Landroid/content/Context;)V

    .line 291
    :goto_2
    sget-boolean v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    xor-int/2addr v1, v2

    sput-boolean v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mTickerAddSpace:Z

    move-object/from16 v1, p3

    .line 292
    iput-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    .line 293
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 296
    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    invoke-direct {v1}, Landroid/app/Notification$BigPictureStyle;-><init>()V

    .line 297
    invoke-virtual/range {v17 .. v17}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    iput-object v1, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationStyle:Landroid/app/Notification$BigPictureStyle;

    .line 300
    new-instance v5, Landroid/app/Notification$Builder;

    sget-object v6, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_HEADSUP:Ljava/lang/String;

    invoke-direct {v5, v8, v6}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sget v6, Lcom/android/systemui/R$string;->screenshot_saving_title:I

    .line 301
    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    sget v9, Lcom/android/systemui/R$string;->screenshot_saving_text:I

    .line 302
    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    sget v10, Lcom/android/systemui/R$drawable;->stat_notify_image:I

    .line 303
    invoke-virtual {v5, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v5

    const-string/jumbo v11, "progress"

    .line 304
    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 305
    invoke-virtual {v5, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 306
    invoke-virtual {v5, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    const v11, 0x106001c

    .line 307
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v13

    invoke-virtual {v5, v13}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v5

    iput-object v5, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 309
    invoke-static {v8, v5, v2}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 311
    new-instance v13, Landroid/app/Notification$Builder;

    sget-object v14, Lcom/android/systemui/util/NotificationChannels;->SCREENSHOTS_HEADSUP:Ljava/lang/String;

    invoke-direct {v13, v8, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 312
    invoke-virtual {v12, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 313
    invoke-virtual {v12, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 314
    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v6

    .line 315
    invoke-virtual {v6, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 316
    invoke-virtual {v3, v2}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 317
    invoke-virtual {v12, v11}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 318
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 319
    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v3

    iput-object v3, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 320
    invoke-static {v8, v3, v2}, Lcom/android/systemui/SystemUI;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 333
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->createAshmemBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    const/4 v0, 0x0

    .line 335
    invoke-virtual {v1, v0}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 88
    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsSavingFailed:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSafeInsetRight:I

    return p0
.end method

.method static synthetic access$1100(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSafeInsetBottom:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mStatusBarVisible:Z

    return p0
.end method

.method static synthetic access$1300(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNavigationBarVisible:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mStatusBarHeight:I

    return p0
.end method

.method static synthetic access$1500(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNavigationBarHeight:I

    return p0
.end method

.method static synthetic access$1600(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBixbyCaptureShared:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureTransactionId:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsScrollCaptureConnectionListenerInvoked:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    return-object p0
.end method

.method static synthetic access$2002(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Landroid/os/Messenger;)Landroid/os/Messenger;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mClipBoardMessenger:Landroid/os/Messenger;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;)Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    return-object p1
.end method

.method static synthetic access$302(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedOrigin:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mRotation:I

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedType:I

    return p0
.end method

.method static synthetic access$700(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedDisplay:I

    return p0
.end method

.method static synthetic access$800(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSafeInsetLeft:I

    return p0
.end method

.method static synthetic access$900(Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mSafeInsetTop:I

    return p0
.end method

.method private addImageToClipBoard(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5

    .line 377
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addImageToClipBoard : imagePath :: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveImageInBackgroundTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mClipBoardMessenger:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/16 v2, 0x1000

    .line 380
    invoke-static {v0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 381
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const/4 v3, 0x2

    const-string/jumbo v4, "type"

    .line 382
    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo v3, "path"

    .line 383
    invoke-virtual {v2, v3, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p2, "noToast"

    const/4 v3, 0x1

    .line 384
    invoke-virtual {v2, p2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 385
    invoke-virtual {v0, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 387
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mClipBoardMessenger:Landroid/os/Messenger;

    invoke-virtual {p2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V

    .line 388
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isCopiedToClipboardDisplayed(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 389
    sget-object p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string p2, "Show toast : Copied to clipboard."

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    sget p0, Lcom/android/systemui/R$string;->copied_to_clipboard:I

    invoke-static {p1, p0}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    .line 391
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "copied_to_clipboard_displayed"

    invoke-static {p0, p1, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 394
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "not able to add image to clipboard : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method private broadcastForLoggingApp(Landroid/content/Context;)V
    .locals 4

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCapturedOrigin : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedOrigin:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mImageFilePath : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mScreenCpatureTime :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.scapture"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 845
    iget v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedOrigin:I

    const-string/jumbo v2, "type"

    const/4 v3, 0x2

    if-ne v1, v3, :cond_0

    const/4 v1, 0x1

    .line 846
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 848
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 850
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    const-string/jumbo v2, "path"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 851
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenCaptureTime:Ljava/lang/String;

    const-string/jumbo v1, "time"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 852
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private generateAdjustedHwBitmap(Landroid/graphics/Bitmap;IILandroid/graphics/Matrix;Landroid/graphics/Paint;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 418
    new-instance p0, Landroid/graphics/Picture;

    invoke-direct {p0}, Landroid/graphics/Picture;-><init>()V

    .line 419
    invoke-virtual {p0, p2, p3}, Landroid/graphics/Picture;->beginRecording(II)Landroid/graphics/Canvas;

    move-result-object p2

    .line 420
    invoke-virtual {p2, p6}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 421
    invoke-virtual {p2, p1, p4, p5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    .line 422
    invoke-virtual {p0}, Landroid/graphics/Picture;->endRecording()V

    .line 423
    invoke-static {p0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Picture;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private isComponentAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1

    .line 813
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    const/16 v0, 0x80

    .line 815
    :try_start_0
    invoke-virtual {p0, p2, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return p1
.end method

.method private isCopiedToClipboardDisplayed(Landroid/content/Context;)Z
    .locals 2

    const/4 p0, 0x0

    .line 402
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "copied_to_clipboard_displayed"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p0, v0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 404
    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string v1, "isCopiedToClipboardDisplayed"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 407
    :cond_0
    :goto_0
    sget-object p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCopiedToClipboardDisplayed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isEditorAvailable(Landroid/content/Context;)Z
    .locals 4

    .line 826
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 827
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.sec.android.mimage.photoretouching"

    const-string v3, "com.sec.android.mimage.photoretouching.SPEActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 828
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.dama.paperartist"

    const-string v3, "com.dama.paperartist.PaperArtistActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 829
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "air.com.adobe.pstouch.oem1"

    const-string v3, "air.com.adobe.pstouch.oem1.AppEntry"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    move v2, v1

    .line 831
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 832
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ComponentName;

    invoke-direct {p0, p1, v3}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isComponentAvailable(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isFormatPNG(Landroid/content/Context;)Z
    .locals 2

    .line 427
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo p1, "smart_capture_screenshot_format"

    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 428
    sget-object p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "screenshotFormatValue : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_0

    const-string p1, "PNG"

    .line 429
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 0

    .line 471
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_0

    .line 473
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 474
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p1, 0x1

    :cond_0
    return p1
.end method

.method private isScrollCaptureAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 871
    iget p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mCapturedDisplay:I

    invoke-static {p0}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isSubDisplayCapture(I)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-static {p1}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->isPackageAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private startChooserActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 7

    .line 436
    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startChooserActivity packageName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", activityName : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", imageUri : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p4, :cond_5

    .line 438
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SEND"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 439
    invoke-direct {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isFormatPNG(Landroid/content/Context;)Z

    move-result v2

    if-eqz p2, :cond_1

    if-eqz p3, :cond_0

    .line 442
    new-instance v3, Landroid/content/ComponentName;

    invoke-direct {v3, p2, p3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 444
    :cond_0
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    const-string p3, "image/png"

    const-string v3, "image/jpeg"

    if-eqz v2, :cond_2

    move-object v4, p3

    goto :goto_1

    :cond_2
    move-object v4, v3

    .line 447
    :goto_1
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.STREAM"

    .line 448
    invoke-virtual {v0, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/high16 v5, 0x10000000

    .line 449
    invoke-virtual {v0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v6, 0xb080001

    .line 450
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    if-eqz p2, :cond_3

    .line 454
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isIntentAvailable(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 455
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_3

    .line 457
    :cond_3
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_4
    move-object p3, v3

    .line 458
    :goto_2
    invoke-virtual {p0, p3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 459
    invoke-virtual {p0, v4, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/4 p2, 0x0

    .line 460
    invoke-static {p0, p2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p0

    .line 461
    invoke-virtual {p0, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 462
    invoke-virtual {p0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 465
    invoke-virtual {p1, p0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_3
    return-void
.end method

.method private startClipBoardService(Landroid/content/Context;)V
    .locals 3

    const-string v0, "SaveImageInBackgroundTask"

    const-string/jumbo v1, "startClipBoardService"

    .line 353
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.sec.android.clipboard.REQUEST_REMOTE_CONTROL"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "com.samsung.clipboardsaveservice"

    .line 357
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 359
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->clipBoardServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 361
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private stopClipBoardService(Landroid/content/Context;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "finishClipBoardService : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SaveImageInBackgroundTask"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->clipBoardServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p1, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 371
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unbind fail : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 481
    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string v3, "doInBackground"

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    invoke-virtual/range {p0 .. p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    return-object v4

    .line 487
    :cond_0
    array-length v3, v2

    const/4 v5, 0x1

    if-eq v3, v5, :cond_1

    const-string/jumbo v1, "params.length is wrong"

    .line 488
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v4

    :cond_1
    const/4 v3, -0x2

    .line 493
    invoke-static {v3}, Landroid/os/Process;->setThreadPriority(I)V

    const/4 v3, 0x0

    .line 495
    aget-object v6, v2, v3

    iget-object v6, v6, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 496
    aget-object v7, v2, v3

    iget-object v7, v7, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    .line 497
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-wide/16 v9, 0x3e8

    .line 503
    :try_start_0
    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "Screenshot Directory does not exists"

    .line 504
    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScreenshotDir:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->mkdirs()Z

    move-result v11

    if-nez v11, :cond_2

    const-string v11, "Screenshot Directory not created"

    .line 506
    invoke-static {v0, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    :cond_2
    iget-wide v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    div-long/2addr v11, v9

    .line 515
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "mImageFilePath : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v0, v13}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    new-instance v13, Ljava/io/File;

    iget-object v14, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-direct {v13, v14}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 518
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 521
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Encoding finished : FileSize : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v3

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ", Width : "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", Height : "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", duration : "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v14

    invoke-virtual {v9, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 525
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v9, "_data"

    .line 526
    iget-object v14, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v3, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "title"

    .line 527
    iget-object v14, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "_display_name"

    .line 528
    iget-object v14, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFileName:Ljava/lang/String;

    invoke-virtual {v3, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "datetaken"

    .line 529
    iget-wide v14, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "date_added"

    .line 530
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v3, v9, v14}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v9, "date_modified"

    .line 531
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v9, "mime_type"

    .line 532
    iget-boolean v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsFormatPNG:Z

    if-eqz v11, :cond_3

    const-string v11, "image/png"

    goto :goto_0

    :cond_3
    const-string v11, "image/jpeg"

    :goto_0
    invoke-virtual {v3, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v9, "width"

    .line 533
    iget v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageWidth:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "height"

    .line 534
    iget v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageHeight:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "_size"

    .line 535
    invoke-virtual {v13}, Ljava/io/File;->length()J

    move-result-wide v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string/jumbo v9, "media_type"

    .line 538
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v9, "is_pending"

    .line 541
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v3, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 543
    iget-object v9, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    if-eqz v9, :cond_4

    const-string v11, "captured_url"

    .line 544
    iget-object v9, v9, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mUrl:Ljava/lang/String;

    invoke-virtual {v3, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v9, "captured_app"

    .line 545
    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    iget-object v11, v11, Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;->mAppPkgName:Ljava/lang/String;

    invoke-virtual {v3, v9, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v9, "content://secmedia/media"

    .line 548
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v4, v9, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    .line 552
    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mWebData:Lcom/android/systemui/screenshot/SmartClipDataExtractor$WebData;

    if-eqz v11, :cond_5

    const-string v11, "captured_url"

    .line 553
    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string v11, "captured_app"

    .line 554
    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    :cond_5
    const-string v11, "_data"

    .line 556
    invoke-virtual {v3, v11}, Landroid/content/ContentValues;->remove(Ljava/lang/String;)V

    const-string/jumbo v11, "relative_path"

    const-string v12, "DCIM/Screenshots/"

    .line 558
    invoke-virtual {v3, v11, v12}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v9, :cond_6

    const-string v11, "group_id"

    .line 560
    invoke-static {v9}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v3, v11, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 563
    :cond_6
    sget-object v9, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v9, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 567
    new-instance v11, Lcom/android/systemui/screenshot/FileStream;

    const/4 v10, 0x0

    invoke-direct {v11, v6, v9, v10}, Lcom/android/systemui/screenshot/FileStream;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 568
    :try_start_1
    invoke-virtual {v11}, Lcom/android/systemui/screenshot/FileStream;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v12

    if-eqz v7, :cond_a

    if-eqz v12, :cond_a

    .line 570
    iget-boolean v14, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsFormatPNG:Z

    const/16 v15, 0x64

    if-eqz v14, :cond_7

    .line 571
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v7, v14, v15, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v14

    goto :goto_1

    .line 573
    :cond_7
    sget-object v14, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v7, v14, v15, v12}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v14

    .line 575
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isImageCompressed : "

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v14, :cond_9

    .line 581
    :try_start_2
    check-cast v12, Ljava/io/FileOutputStream;

    invoke-virtual {v12}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v15, v6

    const-wide/16 v5, 0x0

    .line 582
    :try_start_3
    invoke-virtual {v0, v5, v6}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 584
    new-instance v0, Landroid/media/ExifInterface;

    invoke-virtual {v11}, Lcom/android/systemui/screenshot/FileStream;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v5

    invoke-direct {v0, v5}, Landroid/media/ExifInterface;-><init>(Ljava/io/FileDescriptor;)V

    const-string v5, "Software"

    .line 586
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Android "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v10, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ImageWidth"

    .line 590
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 589
    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "ImageLength"

    .line 592
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 591
    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 594
    iget-wide v5, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    .line 595
    invoke-static {v5, v6}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    move-result-object v5

    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    move-result-object v6

    .line 594
    invoke-static {v5, v6}, Ljava/time/ZonedDateTime;->ofInstant(Ljava/time/Instant;Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    move-result-object v5

    const-string v6, "DateTimeOriginal"

    const-string/jumbo v10, "yyyy:MM:dd HH:mm:ss"

    .line 597
    invoke-static {v10}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v10

    .line 596
    invoke-virtual {v0, v6, v10}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "SubSecTimeOriginal"

    const-string v10, "SSS"

    .line 599
    invoke-static {v10}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v10

    .line 598
    invoke-virtual {v0, v6, v10}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->getOffset()Ljava/time/ZoneOffset;

    move-result-object v6

    sget-object v10, Ljava/time/ZoneOffset;->UTC:Ljava/time/ZoneOffset;

    invoke-static {v6, v10}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v5, "OffsetTimeOriginal"

    const-string v6, "+00:00"

    .line 602
    invoke-virtual {v0, v5, v6}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v6, "OffsetTimeOriginal"

    const-string v10, "XXX"

    .line 605
    invoke-static {v10}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/time/format/DateTimeFormatter;->format(Ljava/time/temporal/TemporalAccessor;)Ljava/lang/String;

    move-result-object v5

    .line 604
    invoke-virtual {v0, v6, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 608
    :goto_2
    invoke-virtual {v0}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_4

    :catch_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v15, v6

    .line 610
    :goto_3
    :try_start_4
    sget-object v5, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ExifInterface exception: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4

    :cond_9
    move-object v15, v6

    goto :goto_4

    :cond_a
    move-object v15, v6

    const/4 v14, 0x0

    .line 614
    :goto_4
    :try_start_5
    invoke-virtual {v11}, Lcom/android/systemui/screenshot/FileStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_6

    :catchall_0
    move-exception v0

    move-object v3, v0

    .line 567
    :try_start_6
    invoke-virtual {v11}, Lcom/android/systemui/screenshot/FileStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_7
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_5
    throw v3

    :cond_b
    move-object v15, v6

    const/4 v14, 0x0

    :goto_6
    if-eqz v14, :cond_15

    const-string v0, "is_pending"

    const/4 v5, 0x0

    .line 619
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v0, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const/4 v5, 0x0

    .line 620
    invoke-virtual {v4, v9, v3, v5, v5}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    if-nez v9, :cond_c

    .line 623
    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string/jumbo v3, "uri is null"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 624
    aget-object v0, v2, v3

    const/4 v3, 0x1

    iput v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    move-object v5, v15

    const/4 v3, 0x0

    goto/16 :goto_d

    .line 626
    :cond_c
    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "uri : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    iget-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    if-nez v0, :cond_13

    .line 629
    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v0

    new-instance v3, Ljava/util/Date;

    iget-wide v4, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "Screenshot (%s)"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v5, v4

    .line 630
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 631
    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SEND"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 632
    const-class v4, Lcom/android/systemui/screenshot/ScreenshotShareActivity;

    move-object v5, v15

    invoke-virtual {v3, v5, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const v4, 0x10008000

    .line 633
    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v6, "FilePath"

    .line 634
    iget-object v11, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v3, v6, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "Uri"

    .line 635
    invoke-virtual {v3, v6, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v6, "Subject"

    .line 636
    invoke-virtual {v3, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "NotificationId"

    .line 637
    sget v6, Lcom/android/systemui/R$id;->notification_screenshot:I

    invoke-virtual {v3, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 639
    iget-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    if-eqz v0, :cond_d

    .line 640
    sget v0, Lcom/android/systemui/R$drawable;->tw_action_bar_icon_share_holo_dark:I

    invoke-static {v8, v0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v0

    goto :goto_7

    :cond_d
    const/4 v0, 0x0

    .line 642
    :goto_7
    new-instance v11, Landroid/app/Notification$Action$Builder;

    sget v13, Lcom/android/systemui/R$string;->screen_capture_share:I

    invoke-virtual {v8, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/high16 v14, 0x14000000

    const/4 v15, 0x0

    .line 643
    invoke-static {v5, v15, v3, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-direct {v11, v0, v13, v3}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v11}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 644
    iget-object v3, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 647
    aget-object v0, v2, v15

    iget-object v0, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->isEditorAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 648
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.EDIT"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "Uri"

    .line 649
    invoke-virtual {v0, v3, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v3, "NotificationId"

    .line 650
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 651
    const-class v3, Lcom/android/systemui/screenshot/ScreenshotEditResolveActivity;

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 652
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 654
    iget-boolean v3, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    if-eqz v3, :cond_e

    .line 655
    sget v3, Lcom/android/systemui/R$drawable;->tw_action_bar_icon_edit_holo_dark:I

    invoke-static {v8, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    goto :goto_8

    :cond_e
    const/4 v3, 0x0

    .line 657
    :goto_8
    new-instance v4, Landroid/app/Notification$Action$Builder;

    sget v11, Lcom/android/systemui/R$string;->screen_capture_edit:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    .line 658
    invoke-static {v5, v13, v0, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {v4, v3, v11, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 659
    iget-object v3, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_a

    .line 661
    :cond_f
    invoke-static {v5}, Lcom/android/systemui/screenshot/ScreenshotUtils;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_11

    .line 662
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    .line 663
    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v3, "notification_id"

    .line 664
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 665
    const-class v3, Lcom/android/systemui/screenshot/ScreenshotNotificationEditorDownloadActivity;

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 668
    iget-boolean v3, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    if-eqz v3, :cond_10

    .line 669
    sget v3, Lcom/android/systemui/R$drawable;->tw_action_bar_icon_edit_holo_dark:I

    invoke-static {v8, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    .line 671
    :goto_9
    new-instance v4, Landroid/app/Notification$Action$Builder;

    sget v11, Lcom/android/systemui/R$string;->screen_capture_edit:I

    invoke-virtual {v8, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v13, 0x0

    .line 672
    invoke-static {v5, v13, v0, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {v4, v3, v11, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 673
    iget-object v3, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 678
    :cond_11
    :goto_a
    new-instance v0, Landroid/content/Intent;

    const-string v3, "android.intent.action.DELETE"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "FilePath"

    .line 679
    iget-object v4, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 680
    const-class v3, Lcom/android/systemui/screenshot/ScreenshotDeleteActivity;

    invoke-virtual {v0, v5, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v3, "NotificationId"

    .line 681
    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 683
    iget-boolean v3, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mDisplayNotiIcon:Z

    if-eqz v3, :cond_12

    .line 684
    sget v3, Lcom/android/systemui/R$drawable;->tw_action_bar_icon_delete_holo_dark:I

    invoke-static {v8, v3}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Icon;

    move-result-object v3

    goto :goto_b

    :cond_12
    const/4 v3, 0x0

    .line 686
    :goto_b
    new-instance v4, Landroid/app/Notification$Action$Builder;

    sget v6, Lcom/android/systemui/R$string;->screen_capture_delete:I

    invoke-virtual {v8, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    .line 687
    invoke-static {v5, v8, v0, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-direct {v4, v3, v6, v0}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v4}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v0

    .line 688
    iget-object v3, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    goto :goto_c

    :cond_13
    move-object v5, v15

    :goto_c
    const/4 v3, 0x0

    .line 690
    aget-object v0, v2, v3

    iput v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 692
    :goto_d
    aget-object v0, v2, v3

    iput-object v9, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    .line 693
    aget-object v0, v2, v3

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->image:Landroid/graphics/Bitmap;

    const-string/jumbo v0, "sys.iss.state"

    const-string v3, "0"

    .line 696
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "3rd"

    const-string/jumbo v4, "ro.release.3rd_party"

    .line 697
    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    const-string/jumbo v3, "true"

    const-string/jumbo v4, "ro.release.iss"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/16 v3, 0x40

    if-lt v0, v3, :cond_16

    .line 698
    :cond_14
    invoke-direct {v1, v5}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->broadcastForLoggingApp(Landroid/content/Context;)V

    goto :goto_e

    .line 702
    :cond_15
    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string v3, "Fail to create capture image file"

    invoke-static {v0, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 703
    invoke-virtual {v4, v9, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 705
    aget-object v0, v2, v3

    const/4 v3, 0x1

    iput v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    .line 707
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 708
    invoke-virtual {v13}, Ljava/io/File;->delete()Z
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    :cond_16
    :goto_e
    const/4 v3, 0x1

    goto :goto_f

    :catch_2
    move-exception v0

    .line 712
    sget-object v3, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doInBackground() Exception occured : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    .line 713
    iput-boolean v3, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsSavingFailed:Z

    const/4 v4, 0x0

    .line 714
    aget-object v0, v2, v4

    invoke-virtual {v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 715
    aget-object v0, v2, v4

    iput v3, v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    :goto_f
    if-eqz v7, :cond_17

    .line 720
    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    const-string v4, "image recycle"

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 726
    :cond_17
    iget-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    if-ne v0, v3, :cond_19

    iget-object v3, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    if-eqz v3, :cond_19

    .line 727
    monitor-enter v3

    .line 728
    :try_start_8
    iget-boolean v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsScrollCaptureConnectionListenerInvoked:Z

    if-nez v0, :cond_18

    .line 730
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 732
    :try_start_9
    iget-object v0, v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    const-wide/16 v6, 0x3e8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_3
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_10

    :catch_3
    move-exception v0

    .line 734
    :try_start_a
    sget-object v1, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doInBackground : Exception thrown during waiting ScrollCapture connection. e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 736
    :goto_10
    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "doInBackground : ScrollCapture connection waiting time = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    :cond_18
    monitor-exit v3

    goto :goto_11

    :catchall_2
    move-exception v0

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw v0

    :cond_19
    :goto_11
    const/4 v1, 0x0

    .line 741
    aget-object v0, v2, v1

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, [Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->doInBackground([Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    move-result-object p0

    return-object p0
.end method

.method protected onCancelled(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 0

    .line 862
    iget-object p0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 863
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearImage()V

    .line 864
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    return-void
.end method

.method protected bridge synthetic onCancelled(Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onCancelled(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method

.method protected onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V
    .locals 13

    .line 746
    sget-object v0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onPostExecute. params.result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    iget-object v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 749
    iget-boolean v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureAvailable:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    if-eqz v1, :cond_1

    .line 751
    iget v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v0, :cond_0

    .line 752
    iget-object v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->screen_capture_fail_for_security_policy:I

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    iget-wide v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureTransactionId:J

    iget-object v3, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->notifyGlobalScreenshotFinished(JLjava/lang/String;Landroid/os/Bundle;)Z

    .line 755
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mScrollCaptureInterface:Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;

    invoke-virtual {v0}, Lcom/samsung/android/app/scrollcapture/lib/RemoteScrollCaptureInterface;->disconnect()V

    goto/16 :goto_1

    .line 758
    :cond_1
    iget v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-lez v1, :cond_2

    .line 760
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    sget v1, Lcom/android/systemui/R$id;->notification_screenshot:I

    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    .line 761
    iget-object v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    sget v1, Lcom/android/systemui/R$string;->screen_capture_fail_for_security_policy:I

    invoke-static {v0, v1}, Lcom/android/systemui/screenshot/ScreenshotUtils;->showToast(Landroid/content/Context;I)V

    goto/16 :goto_0

    .line 764
    :cond_2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 765
    iget-object v2, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "imageUri"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 766
    sget v2, Lcom/android/systemui/R$id;->notification_screenshot:I

    const-string v3, "NotificationId"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 767
    iget-object v3, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const-class v4, Lcom/android/systemui/screenshot/ScreenshotViewActivity;

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 769
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 772
    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    sget v6, Lcom/android/systemui/R$string;->screenshot_saved_title:I

    .line 773
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    sget v7, Lcom/android/systemui/R$string;->screenshot_saved_text:I

    .line 774
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v8, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const/4 v9, 0x0

    const/high16 v10, 0x14000000

    .line 775
    invoke-static {v8, v9, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 776
    invoke-virtual {v5, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v5

    const/4 v8, 0x1

    .line 777
    invoke-virtual {v5, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v5

    iget-object v11, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    const v12, 0x106001c

    .line 778
    invoke-virtual {v11, v12}, Landroid/content/Context;->getColor(I)I

    move-result v11

    invoke-virtual {v5, v11}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 780
    iget-object v5, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 781
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v5

    .line 782
    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v5, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 783
    invoke-static {v5, v9, v1, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 784
    invoke-virtual {v0, v3, v4}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 785
    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    .line 786
    invoke-virtual {v1, v12}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mPublicNotificationBuilder:Landroid/app/Notification$Builder;

    .line 788
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setPublicVersion(Landroid/app/Notification;)Landroid/app/Notification$Builder;

    .line 790
    iget-object v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationManager:Landroid/app/NotificationManager;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 793
    iget-object v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mImageFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->addImageToClipBoard(Landroid/content/Context;Ljava/lang/String;)V

    .line 796
    :goto_0
    iget-object v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->stopClipBoardService(Landroid/content/Context;)V

    .line 804
    :goto_1
    iget v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->result:I

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mIsBixbyCaptureShared:Z

    if-eqz v0, :cond_3

    .line 805
    iget-object v0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->mBixbyCaptureSharedActivityName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->imageUri:Landroid/net/Uri;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->startChooserActivity(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V

    .line 808
    :cond_3
    iget-object p0, p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->finisher:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 809
    invoke-virtual {p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;->clearContext()V

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 88
    check-cast p1, Lcom/android/systemui/screenshot/SaveImageInBackgroundData;

    invoke-virtual {p0, p1}, Lcom/android/systemui/screenshot/SaveImageInBackgroundTask;->onPostExecute(Lcom/android/systemui/screenshot/SaveImageInBackgroundData;)V

    return-void
.end method
