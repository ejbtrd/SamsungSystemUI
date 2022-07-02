.class public Lcom/android/systemui/keyguardimage/KeyguardImageProvider;
.super Landroid/content/ContentProvider;
.source "KeyguardImageProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/keyguardimage/KeyguardImageProvider$MyWriter;
    }
.end annotation


# instance fields
.field private mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

.field private mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

.field private mCreatorsForWallpaper:[Lcom/android/systemui/keyguardimage/ImageCreator;

.field private final mHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$GSHM8YZxV6caglYgUpcNHcal9hA([Lcom/android/systemui/keyguardimage/ImageCreator;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->lambda$openFile$1([Lcom/android/systemui/keyguardimage/ImageCreator;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;)V

    return-void
.end method

.method public static synthetic $r8$lambda$e9GfZFFXJL8Mvn3JKJstH4rslCs([Lcom/android/systemui/keyguardimage/ImageCreator;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->lambda$openFile$0([Lcom/android/systemui/keyguardimage/ImageCreator;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 37
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private getImageCreator(Landroid/content/Context;ZZ)[Lcom/android/systemui/keyguardimage/ImageCreator;
    .locals 5

    .line 207
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 208
    monitor-enter p0

    .line 209
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    if-nez v0, :cond_0

    new-array v0, v1, [Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 210
    new-instance v3, Lcom/android/systemui/keyguardimage/ClockImageCreator;

    invoke-direct {v3, p1}, Lcom/android/systemui/keyguardimage/ClockImageCreator;-><init>(Landroid/content/Context;)V

    aput-object v3, v0, v2

    iput-object v0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 212
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    const-string v0, "KeyguardImageProvider"

    .line 215
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getImageCreator isShortcutEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->isShortcutEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2

    .line 216
    invoke-static {p1}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->isShortcutEnabled(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_3

    :cond_2
    if-nez p3, :cond_3

    .line 217
    iget-object p0, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    return-object p0

    .line 221
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    const/4 v0, 0x3

    const/4 v3, 0x2

    if-nez p2, :cond_5

    .line 222
    monitor-enter p0

    .line 223
    :try_start_1
    iget-object p2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    if-nez p2, :cond_4

    new-array p2, v0, [Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 224
    iget-object v4, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    aget-object v4, v4, v2

    aput-object v4, p2, v2

    new-instance v4, Lcom/android/systemui/keyguardimage/LeftShortcutImageCreator;

    invoke-direct {v4, p1}, Lcom/android/systemui/keyguardimage/LeftShortcutImageCreator;-><init>(Landroid/content/Context;)V

    aput-object v4, p2, v1

    new-instance v4, Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;

    invoke-direct {v4, p1}, Lcom/android/systemui/keyguardimage/RightShortcutImageCreator;-><init>(Landroid/content/Context;)V

    aput-object v4, p2, v3

    iput-object p2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 228
    :cond_4
    monitor-exit p0

    goto :goto_1

    :catchall_1
    move-exception p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1

    .line 230
    :cond_5
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    if-eqz p3, :cond_8

    .line 234
    monitor-enter p0

    .line 235
    :try_start_2
    iget-object p2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForWallpaper:[Lcom/android/systemui/keyguardimage/ImageCreator;

    if-nez p2, :cond_7

    .line 236
    invoke-static {p1}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->isShortcutEnabled(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/4 p2, 0x4

    new-array p2, p2, [Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 237
    new-instance p3, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;

    invoke-direct {p3, p1}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;-><init>(Landroid/content/Context;)V

    aput-object p3, p2, v2

    iget-object p1, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    aget-object p1, p1, v2

    aput-object p1, p2, v1

    iget-object p1, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForFixedShortcut:[Lcom/android/systemui/keyguardimage/ImageCreator;

    aget-object p3, p1, v1

    aput-object p3, p2, v3

    aget-object p1, p1, v3

    aput-object p1, p2, v0

    iput-object p2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForWallpaper:[Lcom/android/systemui/keyguardimage/ImageCreator;

    goto :goto_2

    :cond_6
    new-array p2, v3, [Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 242
    new-instance p3, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;

    invoke-direct {p3, p1}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;-><init>(Landroid/content/Context;)V

    aput-object p3, p2, v2

    iget-object p1, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mClockImageCreator:[Lcom/android/systemui/keyguardimage/ImageCreator;

    aget-object p1, p1, v2

    aput-object p1, p2, v1

    iput-object p2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForWallpaper:[Lcom/android/systemui/keyguardimage/ImageCreator;

    .line 247
    :cond_7
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 248
    iget-object p2, p0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mCreatorsForWallpaper:[Lcom/android/systemui/keyguardimage/ImageCreator;

    goto :goto_3

    :catchall_2
    move-exception p1

    .line 247
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1

    :cond_8
    :goto_3
    return-object p2
.end method

.method private static isShortcutEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lockscreen_show_shortcut"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static synthetic lambda$openFile$0([Lcom/android/systemui/keyguardimage/ImageCreator;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;)V
    .locals 2

    const-string v0, "openFile() : "

    const/4 v1, 0x0

    .line 121
    aget-object p0, p0, v1

    const/4 v1, 0x0

    invoke-interface {p0, p1, v1}, Lcom/android/systemui/keyguardimage/ImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object p0

    const-string p1, "KeyguardImageProvider"

    if-eqz p0, :cond_0

    .line 124
    :try_start_0
    invoke-interface {p2, p0}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 129
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    .line 126
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "openFile() clock bitmap return null."

    .line 133
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static synthetic lambda$openFile$1([Lcom/android/systemui/keyguardimage/ImageCreator;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;)V
    .locals 8

    const/4 v0, -0x1

    .line 164
    invoke-static {v0}, Lcom/android/systemui/util/LogUtil;->startTime(I)I

    move-result v0

    .line 165
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    const/4 v2, 0x0

    .line 167
    :try_start_0
    array-length v3, p0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, p0, v4

    .line 168
    new-instance v6, Landroid/graphics/Point;

    invoke-direct {v6}, Landroid/graphics/Point;-><init>()V

    .line 169
    invoke-interface {v5, p1, v6}, Lcom/android/systemui/keyguardimage/ImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 170
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 171
    new-instance v7, Landroid/util/Pair;

    invoke-interface {v5, p1, v6}, Lcom/android/systemui/keyguardimage/ImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-direct {v7, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 174
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/concurrent/BlockingDeque;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 176
    invoke-virtual {p0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Object;

    .line 178
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v2

    const-string p1, "KeyguardImageProvider"

    const-string p2, "%d images were created"

    invoke-static {v0, p1, p2, p0}, Lcom/android/systemui/util/LogUtil;->endTime(ILjava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 66
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->createImageOption(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 67
    iget p0, p0, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    if-ne p0, v0, :cond_0

    const-string p0, "image/jpeg"

    goto :goto_0

    :cond_0
    const-string p0, "image/png"

    :goto_0
    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    move-object/from16 v0, p0

    const-string v1, ""

    const-string v2, "openFile failed "

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Object;

    .line 88
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->toSafeString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v4, v7

    const-string v5, "KeyguardImageProvider"

    const-string v8, "openFile() %s / pid: %d"

    invoke-static {v5, v8, v4}, Lcom/android/systemui/util/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_d

    move-object/from16 v8, p1

    .line 96
    invoke-static {v4, v8, v6}, Lcom/android/systemui/keyguardimage/ImageOptionCreator;->createImageOption(Landroid/content/Context;Landroid/net/Uri;Z)Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;

    move-result-object v9

    if-eqz v9, :cond_c

    .line 101
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "openFile() imageOption "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v10, "image/png"

    .line 107
    iget v11, v9, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    const-string v12, "image/jpeg"

    const/4 v13, 0x0

    if-eq v11, v7, :cond_b

    const/4 v14, 0x5

    if-ne v11, v14, :cond_0

    goto/16 :goto_6

    :cond_0
    if-eq v11, v3, :cond_2

    const/4 v3, 0x4

    if-ne v11, v3, :cond_1

    goto :goto_0

    :cond_1
    move v3, v6

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v7

    :goto_1
    const/4 v14, 0x3

    if-ne v11, v14, :cond_3

    move v6, v7

    .line 115
    :cond_3
    invoke-direct {v0, v4, v3, v6}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->getImageCreator(Landroid/content/Context;ZZ)[Lcom/android/systemui/keyguardimage/ImageCreator;

    move-result-object v4

    const-wide/16 v14, 0xbb8

    const-string v6, "operation failed"

    if-eqz v3, :cond_5

    .line 119
    new-instance v1, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v1, v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 120
    iget-object v2, v0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda1;

    invoke-direct {v3, v4, v9, v1}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda1;-><init>([Lcom/android/systemui/keyguardimage/ImageCreator;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 139
    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v1, v14, v15, v2}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 141
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 143
    new-instance v3, Landroid/graphics/Canvas;

    invoke-direct {v3, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v4, 0x0

    .line 144
    invoke-virtual {v3, v1, v4, v4, v13}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_4
    const-string v1, "openFile() clock bitmap return null"

    .line 146
    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v2, v13

    :goto_2
    move-object v5, v2

    move-object v3, v10

    move-object v2, v13

    goto/16 :goto_7

    :catchall_0
    move-exception v0

    .line 155
    throw v0

    :catch_0
    move-exception v0

    .line 152
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openFile clock bitmap failed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 157
    :cond_5
    iget v3, v9, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->type:I

    const/4 v11, 0x3

    if-ne v3, v11, :cond_6

    move-object v10, v12

    .line 160
    :cond_6
    iget v3, v9, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->width:I

    iget v11, v9, Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;->height:I

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 161
    new-instance v11, Landroid/graphics/Canvas;

    invoke-direct {v11, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 162
    new-instance v12, Ljava/util/concurrent/LinkedBlockingDeque;

    invoke-direct {v12, v7}, Ljava/util/concurrent/LinkedBlockingDeque;-><init>(I)V

    .line 163
    iget-object v7, v0, Lcom/android/systemui/keyguardimage/KeyguardImageProvider;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;

    invoke-direct {v13, v4, v9, v12}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$$ExternalSyntheticLambda0;-><init>([Lcom/android/systemui/keyguardimage/ImageCreator;Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Ljava/util/concurrent/BlockingDeque;)V

    invoke-virtual {v7, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 184
    :try_start_1
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v12, v14, v15, v4}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-eqz v4, :cond_8

    .line 185
    :try_start_2
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 186
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/util/Pair;

    .line 187
    iget-object v12, v9, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v12, Landroid/graphics/Bitmap;

    iget-object v9, v9, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v13, v9

    check-cast v13, Landroid/graphics/Point;

    iget v13, v13, Landroid/graphics/Point;->x:I

    int-to-float v13, v13

    check-cast v9, Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v13, v9, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_3

    .line 189
    :cond_7
    invoke-interface {v4}, Ljava/util/List;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v0

    move-object v13, v4

    goto :goto_5

    :cond_8
    :goto_4
    if-eqz v4, :cond_9

    move-object v5, v3

    move-object v3, v10

    const/4 v2, 0x0

    goto :goto_7

    .line 195
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_2
    move-exception v0

    const/4 v13, 0x0

    :goto_5
    if-nez v13, :cond_a

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 198
    :cond_a
    throw v0

    :catch_1
    move-exception v0

    .line 195
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Ljava/io/FileNotFoundException;

    invoke-direct {v0, v6}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 109
    :cond_b
    :goto_6
    new-instance v1, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;

    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-virtual {v1, v9, v2}, Lcom/android/systemui/keyguardimage/WallpaperImageCreator;->createImage(Lcom/android/systemui/keyguardimage/ImageOptionCreator$ImageOption;Landroid/graphics/Point;)Landroid/graphics/Bitmap;

    move-result-object v1

    move-object v5, v1

    move-object v3, v12

    :goto_7
    const/4 v4, 0x0

    .line 202
    new-instance v6, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$MyWriter;

    invoke-direct {v6, v2}, Lcom/android/systemui/keyguardimage/KeyguardImageProvider$MyWriter;-><init>(Lcom/android/systemui/keyguardimage/KeyguardImageProvider$1;)V

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentProvider;->openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0

    :cond_c
    const-string/jumbo v0, "wrong uri"

    .line 98
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    new-instance v1, Ljava/io/FileNotFoundException;

    invoke-direct {v1, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    const-string v0, "not prepared"

    .line 91
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "illegal state"

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
