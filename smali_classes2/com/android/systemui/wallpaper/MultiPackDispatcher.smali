.class public Lcom/android/systemui/wallpaper/MultiPackDispatcher;
.super Ljava/lang/Object;
.source "MultiPackDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;,
        Lcom/android/systemui/wallpaper/MultiPackDispatcher$OnApplyMultipackListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MultiPackDispatcher"

.field private static mRetryCount:I

.field private static mRetryCountSub:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

.field private mLastUri:Landroid/net/Uri;

.field private mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

.field private mOnApplyMultipackListener:Lcom/android/systemui/wallpaper/MultiPackDispatcher$OnApplyMultipackListener;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/wallpaper/log/WallpaperLogger;)V
    .locals 1

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mOnApplyMultipackListener:Lcom/android/systemui/wallpaper/MultiPackDispatcher$OnApplyMultipackListener;

    .line 140
    iput-object p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    .line 141
    iput-object p2, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)Z
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->isSubUser()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/systemui/wallpaper/MultiPackDispatcher;Ljava/lang/String;)Z
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->requestImageWallpaper(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/systemui/wallpaper/MultiPackDispatcher;Landroid/os/Bundle;)I
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->request2DLS(Landroid/os/Bundle;)I

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/android/systemui/wallpaper/MultiPackDispatcher;)Lcom/android/systemui/wallpaper/MultiPackDispatcher$OnApplyMultipackListener;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mOnApplyMultipackListener:Lcom/android/systemui/wallpaper/MultiPackDispatcher$OnApplyMultipackListener;

    return-object p0
.end method

.method static synthetic access$404()I
    .locals 1

    .line 37
    sget v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mRetryCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mRetryCount:I

    return v0
.end method

.method static synthetic access$504()I
    .locals 1

    .line 37
    sget v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mRetryCountSub:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mRetryCountSub:I

    return v0
.end method

.method static synthetic access$600()Ljava/lang/String;
    .locals 1

    .line 37
    sget-object v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private getContentType(Ljava/lang/String;I)I
    .locals 0

    and-int/lit8 p0, p2, 0x30

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const-string p2, "^\\S+.(?i)(gif)$"

    .line 274
    invoke-static {p2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_2

    if-eqz p0, :cond_1

    const/16 p0, 0x16

    goto :goto_1

    :cond_1
    const/16 p0, 0xc

    goto :goto_1

    :cond_2
    const-string p2, "^\\S+.(?i)(jpg|jpeg|png)$"

    .line 276
    invoke-static {p2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    if-eqz p0, :cond_3

    const/16 p0, 0x15

    goto :goto_1

    :cond_3
    const/16 p0, 0xb

    goto :goto_1

    :cond_4
    const-string p2, "^\\S+.(?i)(mp4)$"

    .line 278
    invoke-static {p2, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    if-eqz p0, :cond_5

    const/16 p0, 0x17

    goto :goto_1

    :cond_5
    const/16 p0, 0xd

    goto :goto_1

    :cond_6
    const/4 p0, -0x2

    :goto_1
    return p0
.end method

.method private getFirstImage(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 6

    .line 167
    new-instance p0, Ljava/io/File;

    invoke-direct {p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 170
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 171
    array-length v0, p0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 175
    :cond_0
    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v3, p0, v2

    if-eqz v3, :cond_1

    .line 177
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 172
    :cond_2
    :goto_1
    sget-object p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    const-string p1, "getFirstImage list is empty."

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_3
    move-object v3, v1

    :goto_2
    if-nez v3, :cond_4

    .line 186
    sget-object p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    const-string p1, "getFirstImage firstFile is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 189
    :cond_4
    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 190
    sget-object v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getFirstImage path = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", firstFilePath"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    .line 194
    :try_start_0
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Ljava/io/File;->canRead()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 196
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 199
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 202
    :cond_5
    sget-object p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    const-string p1, "getFirstImage return null"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method public static getStringReason(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "APPLY_MULTIPACK_RESULT_FAIL_DLS_INTERNAL_ERROR"

    return-object p0

    :cond_1
    const-string p0, "APPLY_MULTIPACK_RESULT_FAIL_LIVE_WALLPAPER"

    return-object p0

    :cond_2
    const-string p0, "APPLY_MULTIPACK_RESULT_FAIL_RETRY_COUNT_OVER"

    return-object p0

    :cond_3
    const-string p0, "APPLY_MULTIPACK_RESULT_SUCCESS"

    return-object p0
.end method

.method private isSubUser()Z
    .locals 0

    .line 135
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static makePath(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/overlays/homewallpaper/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private request2DLS(Landroid/os/Bundle;)I
    .locals 14

    const/4 v0, 0x4

    if-nez p1, :cond_0

    .line 313
    sget-object p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "request2DLS: data is null."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const-string/jumbo v1, "uri"

    .line 317
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    if-nez v1, :cond_1

    .line 319
    sget-object p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    const-string/jumbo p1, "request2DLS: uri is null."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const-string/jumbo v0, "screen"

    const/4 v2, 0x0

    .line 323
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    move v3, v4

    goto :goto_0

    :cond_2
    move v3, v2

    :goto_0
    const-string v5, "isMigration"

    .line 325
    invoke-virtual {v1, v5, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v6

    const-string v7, "isCustom"

    .line 326
    invoke-virtual {v1, v7, v2}, Landroid/net/Uri;->getBooleanQueryParameter(Ljava/lang/String;Z)Z

    move-result v1

    const-string/jumbo v7, "wallpaper_path"

    .line 327
    invoke-virtual {p1, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 329
    sget-object v8, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "request2DLS path= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ", isSubDisplay = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    :try_start_0
    const-string v11, ""

    .line 335
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12}, Landroid/os/Bundle;-><init>()V

    if-eqz v1, :cond_3

    const-string v1, "USER.PACK."

    goto :goto_1

    :cond_3
    const-string v1, "MULTI.PACK."

    :goto_1
    if-eqz v3, :cond_4

    .line 344
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "02"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 346
    :cond_4
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "01"

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    const-string/jumbo v13, "name"

    .line 348
    invoke-virtual {v12, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    invoke-virtual {v12, v7, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_5

    move p1, v4

    goto :goto_3

    :cond_5
    move p1, v2

    .line 350
    :goto_3
    invoke-virtual {v12, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    if-eqz v6, :cond_6

    goto :goto_4

    :cond_6
    move v4, v2

    .line 351
    :goto_4
    invoke-virtual {v12, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 353
    iget-object p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "content://com.samsung.android.dynamiclock.provider"

    .line 354
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const-string/jumbo v1, "user_pack"

    const/4 v3, 0x0

    .line 353
    invoke-virtual {p1, v0, v1, v3, v12}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_7

    const-string/jumbo v0, "result"

    .line 360
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    const-string/jumbo v1, "reason"

    .line 361
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_5

    :cond_7
    move v0, v2

    :goto_5
    if-nez v0, :cond_9

    .line 365
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 366
    iget-object p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "request2DLS fail."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v8, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    const/4 p0, 0x3

    .line 373
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_6

    :catch_0
    move-exception p1

    .line 371
    :try_start_1
    sget-object v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request2DLS: error = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 373
    :cond_9
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 376
    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    sget-object p1, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "request2DLS success."

    invoke-interface {p0, p1, v0}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 373
    :goto_6
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 374
    throw p0
.end method

.method private requestImageWallpaper(Ljava/lang/String;)Z
    .locals 8

    .line 149
    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    sget-object v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "requestImageWallpaper for subuser."

    invoke-interface {v0, v1, v2}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v2

    .line 151
    invoke-direct {p0, p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->getFirstImage(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    const/4 p0, 0x0

    if-nez v3, :cond_0

    const-string/jumbo p1, "requestImageWallpaper bitmap is null"

    .line 153
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_0
    :try_start_0
    const-string/jumbo p1, "requestImageWallpaper setBitmap"

    .line 157
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x2

    .line 158
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v7

    invoke-virtual/range {v2 .. v7}, Landroid/app/WallpaperManager;->setBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;ZII)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 160
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    return p0
.end method


# virtual methods
.method public buildTypeList(I)Landroid/util/SparseIntArray;
    .locals 7

    .line 245
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 248
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 249
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 250
    invoke-static {v1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->makePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 253
    array-length v2, v1

    if-lez v2, :cond_0

    .line 254
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 255
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "[^0-9]"

    const-string v6, ""

    .line 256
    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 257
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-direct {p0, v4, p1}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->getContentType(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->append(II)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 261
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->printStackTrace()V

    :cond_0
    return-object v0
.end method

.method public clear()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mOnApplyMultipackListener:Lcom/android/systemui/wallpaper/MultiPackDispatcher$OnApplyMultipackListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mOnApplyMultipackListener:Lcom/android/systemui/wallpaper/MultiPackDispatcher$OnApplyMultipackListener;

    .line 292
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 293
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 298
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    sget-object v0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    const-string v1, "clear"

    invoke-interface {p0, v0, v1}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "MultiPackDispatcher"

    .line 303
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mLastUri = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLastUri:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public setOnApplyMultipackListener(Lcom/android/systemui/wallpaper/MultiPackDispatcher$OnApplyMultipackListener;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mOnApplyMultipackListener:Lcom/android/systemui/wallpaper/MultiPackDispatcher$OnApplyMultipackListener;

    return-void
.end method

.method public startMultipack(I)Z
    .locals 7

    .line 208
    iget-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/WallpaperManager;->getInstance(Landroid/content/Context;)Landroid/app/WallpaperManager;

    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    sget-object v2, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "startMultipack: which ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0, p1}, Landroid/app/WallpaperManager;->semGetUri(I)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 213
    iget-object p1, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startMultipack: uri is null., uid = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, v2, p0}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    .line 217
    :cond_0
    iget-object v3, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    if-nez v3, :cond_1

    .line 218
    new-instance v3, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;-><init>(Lcom/android/systemui/wallpaper/MultiPackDispatcher;Lcom/android/systemui/wallpaper/MultiPackDispatcher$1;)V

    iput-object v3, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    .line 221
    :cond_1
    iput-object v0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLastUri:Landroid/net/Uri;

    .line 222
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 223
    invoke-static {v3}, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->makePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 225
    iget-object v4, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mLoggerWrapper:Lcom/android/systemui/wallpaper/log/WallpaperLogger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startMultipack: uri = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", fullPath = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", which = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v2, v5}, Lcom/android/systemui/wallpaper/log/WallpaperLogger;->log(Ljava/lang/String;Ljava/lang/String;)V

    and-int/lit8 p1, p1, 0x30

    if-eqz p1, :cond_2

    .line 228
    sput v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mRetryCountSub:I

    goto :goto_0

    .line 230
    :cond_2
    sput v1, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mRetryCount:I

    .line 233
    :goto_0
    new-instance v2, Landroid/os/Message;

    invoke-direct {v2}, Landroid/os/Message;-><init>()V

    .line 234
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 235
    iput v1, v2, Landroid/os/Message;->what:I

    const/4 v5, 0x1

    if-eqz p1, :cond_3

    move v1, v5

    :cond_3
    const-string/jumbo p1, "screen"

    .line 236
    invoke-virtual {v4, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string/jumbo p1, "wallpaper_path"

    .line 237
    invoke-virtual {v4, p1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo p1, "uri"

    .line 238
    invoke-virtual {v4, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 239
    invoke-virtual {v2, v4}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 240
    iget-object p0, p0, Lcom/android/systemui/wallpaper/MultiPackDispatcher;->mHandler:Lcom/android/systemui/wallpaper/MultiPackDispatcher$MyHandler;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return v5
.end method
