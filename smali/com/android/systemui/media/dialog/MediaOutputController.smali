.class public Lcom/android/systemui/media/dialog/MediaOutputController;
.super Ljava/lang/Object;
.source "MediaOutputController.java"

# interfaces
.implements Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/media/dialog/MediaOutputController$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mAboveStatusbar:Z

.field private final mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

.field private final mCb:Landroid/media/session/MediaController$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mGroupMediaDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation
.end field

.field mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

.field private mMediaController:Landroid/media/session/MediaController;

.field final mMediaDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field private mMetricLogger:Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

.field private final mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mPackageName:Ljava/lang/String;

.field private final mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

.field private mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public static synthetic $r8$lambda$BbeRQNa3Pc3kbkfCXSZBGEaXiaI(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputController;->lambda$adjustVolume$1(Lcom/android/settingslib/media/MediaDevice;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$KING0QJ4KuOYGMQnnP8vCcodenI(Lcom/android/systemui/media/dialog/MediaOutputController;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->lambda$launchBluetoothPairing$2()Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$nknXMz-UuEQSYUcOcbaNqDVEqTY(Lcom/android/systemui/media/dialog/MediaOutputController;Lcom/android/settingslib/media/MediaDevice;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputController;->lambda$connectDevice$0(Lcom/android/settingslib/media/MediaDevice;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "MediaOutputController"

    const/4 v1, 0x3

    .line 69
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/media/dialog/MediaOutputController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;ZLandroid/media/session/MediaSessionManager;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/systemui/statusbar/phone/ShadeController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/internal/logging/UiEventLogger;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mGroupMediaDevices:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevices:Ljava/util/List;

    .line 472
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/dialog/MediaOutputController$1;-><init>(Lcom/android/systemui/media/dialog/MediaOutputController;)V

    iput-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCb:Landroid/media/session/MediaController$Callback;

    .line 96
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    .line 97
    iput-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 99
    iput-object p6, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    .line 100
    iput-object p7, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 101
    iput-boolean p3, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mAboveStatusbar:Z

    .line 102
    iput-object p8, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 103
    new-instance p3, Lcom/android/settingslib/media/InfoMediaManager;

    const/4 p4, 0x0

    invoke-direct {p3, p1, p2, p4, p5}, Lcom/android/settingslib/media/InfoMediaManager;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 104
    new-instance p4, Lcom/android/settingslib/media/LocalMediaManager;

    invoke-direct {p4, p1, p5, p3, p2}, Lcom/android/settingslib/media/LocalMediaManager;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;Lcom/android/settingslib/media/InfoMediaManager;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    .line 105
    new-instance p3, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

    invoke-direct {p3, p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMetricLogger:Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

    .line 106
    iput-object p9, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method

.method private buildMediaDevices(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;)V"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 250
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    if-nez v0, :cond_1

    .line 252
    sget-boolean v0, Lcom/android/systemui/media/dialog/MediaOutputController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MediaOutputController"

    const-string v1, "No connected media device."

    .line 253
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevices:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 258
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaDevice;

    .line 259
    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 260
    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevices:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    .line 262
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void

    .line 268
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 269
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/media/MediaDevice;

    .line 270
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/media/MediaDevice;

    .line 271
    invoke-virtual {v2}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 272
    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 277
    :cond_7
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_8

    .line 278
    invoke-interface {p1, v0}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 279
    invoke-interface {v0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 281
    :cond_8
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevices:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 282
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevices:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method private static synthetic lambda$adjustVolume$1(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0

    .line 397
    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/MediaDevice;->requestSetVolume(I)V

    return-void
.end method

.method private synthetic lambda$connectDevice$0(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 0

    .line 325
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/LocalMediaManager;->connectDevice(Lcom/android/settingslib/media/MediaDevice;)Z

    return-void
.end method

.method private synthetic lambda$launchBluetoothPairing$2()Z
    .locals 3

    .line 441
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.android.settings.action.LAUNCH_BLUETOOTH_PAIRING"

    .line 442
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.android.settings"

    .line 443
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 441
    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 444
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mShadeController:Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p0}, Lcom/android/systemui/statusbar/phone/ShadeController;->animateCollapsePanels()V

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method addDeviceToPlayMedia(Lcom/android/settingslib/media/MediaDevice;)Z
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/LocalMediaManager;->addDeviceToPlayMedia(Lcom/android/settingslib/media/MediaDevice;)Z

    move-result p0

    return p0
.end method

.method adjustSessionVolume(I)V
    .locals 0

    .line 366
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/LocalMediaManager;->adjustSessionVolume(I)V

    return-void
.end method

.method adjustVolume(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0

    .line 396
    new-instance p0, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda1;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settingslib/media/MediaDevice;I)V

    invoke-static {p0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method connectDevice(Lcom/android/settingslib/media/MediaDevice;)V
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMetricLogger:Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->updateOutputEndPoints(Lcom/android/settingslib/media/MediaDevice;Lcom/android/settingslib/media/MediaDevice;)V

    .line 324
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/media/dialog/MediaOutputController;Lcom/android/settingslib/media/MediaDevice;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method getCurrentConnectedMediaDevice()Lcom/android/settingslib/media/MediaDevice;
    .locals 0

    .line 334
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getCurrentConnectedDevice()Lcom/android/settingslib/media/MediaDevice;

    move-result-object p0

    return-object p0
.end method

.method getDeselectableMediaDevice()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation

    .line 358
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getDeselectableMediaDevice()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getDeviceIconCompat(Lcom/android/settingslib/media/MediaDevice;)Landroidx/core/graphics/drawable/IconCompat;
    .locals 2

    .line 216
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 218
    sget-boolean v0, Lcom/android/systemui/media/dialog/MediaOutputController;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDeviceIconCompat() device : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", drawable is null"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MediaOutputController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    const p1, 0x1080363

    invoke-virtual {p0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 225
    :cond_1
    invoke-static {v0}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->createIconWithDrawable(Landroid/graphics/drawable/Drawable;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method getGroupMediaDevices()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation

    .line 286
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectedMediaDevice()Ljava/util/List;

    move-result-object v0

    .line 287
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getSelectableMediaDevice()Ljava/util/List;

    move-result-object v1

    .line 288
    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mGroupMediaDevices:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 289
    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mGroupMediaDevices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 290
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mGroupMediaDevices:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mGroupMediaDevices:Ljava/util/List;

    return-object p0

    .line 294
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 295
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 296
    invoke-interface {v2, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 297
    invoke-interface {v2, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 298
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mGroupMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/media/MediaDevice;

    .line 299
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settingslib/media/MediaDevice;

    .line 300
    invoke-virtual {v1}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/android/settingslib/media/MediaDevice;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 301
    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-interface {v2, v5}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 308
    :cond_3
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 309
    invoke-interface {v3, v2}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 311
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mGroupMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 312
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mGroupMediaDevices:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 314
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mGroupMediaDevices:Ljava/util/List;

    return-object p0
.end method

.method getHeaderIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 199
    :cond_0
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/MediaDescription;->getIconBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$dimen;->media_output_dialog_icon_corner_radius:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 203
    invoke-static {p0, v0, v1}, Lcom/android/settingslib/Utils;->convertCornerRadiusBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 206
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createWithBitmap(Landroid/graphics/Bitmap;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    .line 209
    :cond_1
    sget-boolean v0, Lcom/android/systemui/media/dialog/MediaOutputController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MediaOutputController"

    const-string v1, "Media meta data does not contain icon information"

    .line 210
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/dialog/MediaOutputController;->getNotificationIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0
.end method

.method getHeaderSubTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 185
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 192
    :cond_1
    invoke-virtual {p0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method getHeaderTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 176
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 178
    invoke-virtual {v0}, Landroid/media/MediaMetadata;->getDescription()Landroid/media/MediaDescription;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaDescription;->getTitle()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 181
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/systemui/R$string;->controls_media_title:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method getMediaDevices()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation

    .line 330
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevices:Ljava/util/List;

    return-object p0
.end method

.method getNotificationIcon()Landroidx/core/graphics/drawable/IconCompat;
    .locals 5

    .line 229
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 233
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsForCurrentUser()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 234
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    .line 235
    invoke-virtual {v3}, Landroid/app/Notification;->hasMediaSession()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 237
    invoke-virtual {v3}, Landroid/app/Notification;->getLargeIcon()Landroid/graphics/drawable/Icon;

    move-result-object p0

    if-nez p0, :cond_2

    goto :goto_0

    .line 241
    :cond_2
    invoke-static {p0}, Landroidx/core/graphics/drawable/IconCompat;->createFromIcon(Landroid/graphics/drawable/Icon;)Landroidx/core/graphics/drawable/IconCompat;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v1
.end method

.method getSelectableMediaDevice()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation

    .line 350
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getSelectableMediaDevice()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getSelectedMediaDevice()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;"
        }
    .end annotation

    .line 354
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getSelectedMediaDevice()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method getSessionName()Ljava/lang/CharSequence;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getSessionName()Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method getSessionVolume()I
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getSessionVolume()I

    move-result p0

    return p0
.end method

.method getSessionVolumeMax()I
    .locals 0

    .line 370
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->getSessionVolumeMax()I

    move-result p0

    return p0
.end method

.method hasAdjustVolumeUserRestriction()Z
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    .line 407
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    const-string v2, "no_adjust_volume"

    .line 406
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 410
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 412
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 411
    invoke-virtual {p0, v2, v0}, Landroid/os/UserManager;->hasBaseUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method isActiveRemoteDevice(Lcom/android/settingslib/media/MediaDevice;)Z
    .locals 0

    .line 461
    invoke-virtual {p1}, Lcom/android/settingslib/media/MediaDevice;->getFeatures()Ljava/util/List;

    move-result-object p0

    const-string p1, "android.media.route.feature.REMOTE_PLAYBACK"

    .line 462
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.media.route.feature.REMOTE_AUDIO_PLAYBACK"

    .line 463
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.media.route.feature.REMOTE_VIDEO_PLAYBACK"

    .line 464
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "android.media.route.feature.REMOTE_GROUP_PLAYBACK"

    .line 465
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

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

.method isTransferring()Z
    .locals 2

    .line 416
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/media/MediaDevice;

    .line 417
    invoke-virtual {v0}, Lcom/android/settingslib/media/MediaDevice;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method isVolumeControlEnabled(Lcom/android/settingslib/media/MediaDevice;)Z
    .locals 0

    .line 469
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputController;->isActiveRemoteDevice(Lcom/android/settingslib/media/MediaDevice;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method isZeroMode()Z
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 426
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/media/MediaDevice;

    .line 428
    invoke-virtual {p0}, Lcom/android/settingslib/media/MediaDevice;->getDeviceType()I

    move-result p0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    if-ne p0, v1, :cond_1

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method launchBluetoothPairing()V
    .locals 3

    .line 439
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/media/dialog/MediaOutputController$Callback;->dismissDialog()V

    .line 440
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/media/dialog/MediaOutputController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/media/dialog/MediaOutputController;)V

    .line 447
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p0, v0, v1, v2}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    return-void
.end method

.method launchMediaOutputDialog()V
    .locals 4

    .line 451
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/media/dialog/MediaOutputController$Callback;->dismissDialog()V

    .line 452
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputDialog;

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mAboveStatusbar:Z

    iget-object v3, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-direct {v0, v1, v2, p0, v3}, Lcom/android/systemui/media/dialog/MediaOutputDialog;-><init>(Landroid/content/Context;ZLcom/android/systemui/media/dialog/MediaOutputController;Lcom/android/internal/logging/UiEventLogger;)V

    return-void
.end method

.method launchMediaOutputGroupDialog()V
    .locals 3

    .line 456
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/media/dialog/MediaOutputController$Callback;->dismissDialog()V

    .line 457
    new-instance v0, Lcom/android/systemui/media/dialog/MediaOutputGroupDialog;

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mAboveStatusbar:Z

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/media/dialog/MediaOutputGroupDialog;-><init>(Landroid/content/Context;ZLcom/android/systemui/media/dialog/MediaOutputController;)V

    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    invoke-interface {p0}, Lcom/android/systemui/media/dialog/MediaOutputController$Callback;->onRouteChanged()V

    return-void
.end method

.method public onDeviceListUpdate(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;)V"
        }
    .end annotation

    .line 152
    invoke-direct {p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputController;->buildMediaDevices(Ljava/util/List;)V

    .line 153
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    invoke-interface {p0}, Lcom/android/systemui/media/dialog/MediaOutputController$Callback;->onRouteChanged()V

    return-void
.end method

.method public onRequestFailed(I)V
    .locals 1

    .line 170
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/media/dialog/MediaOutputController$Callback;->onRouteChanged()V

    .line 171
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMetricLogger:Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevices:Ljava/util/List;

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->logOutputFailure(Ljava/util/List;I)V

    return-void
.end method

.method public onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V
    .locals 0

    .line 159
    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    invoke-interface {p2}, Lcom/android/systemui/media/dialog/MediaOutputController$Callback;->onRouteChanged()V

    .line 160
    iget-object p2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMetricLogger:Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevices:Ljava/util/List;

    invoke-virtual {p2, p1, p0}, Lcom/android/systemui/media/dialog/MediaOutputMetricLogger;->logOutputSuccess(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method releaseSession()V
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->releaseSession()Z

    return-void
.end method

.method removeDeviceFromPlayMedia(Lcom/android/settingslib/media/MediaDevice;)Z
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/media/LocalMediaManager;->removeDeviceFromPlayMedia(Lcom/android/settingslib/media/MediaDevice;)Z

    move-result p0

    return p0
.end method

.method resetGroupMediaDevices()V
    .locals 0

    .line 318
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mGroupMediaDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method start(Lcom/android/systemui/media/dialog/MediaOutputController$Callback;)V
    .locals 4

    .line 110
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 111
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    .line 113
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 114
    iput-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    .line 115
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v1, v0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 116
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 121
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    const-string v1, "MediaOutputController"

    if-nez v0, :cond_2

    .line 122
    sget-boolean v0, Lcom/android/systemui/media/dialog/MediaOutputController;->DEBUG:Z

    if-eqz v0, :cond_2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No media controller for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    if-nez v0, :cond_4

    .line 127
    sget-boolean p1, Lcom/android/systemui/media/dialog/MediaOutputController;->DEBUG:Z

    if-eqz p1, :cond_3

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No local media manager "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    .line 132
    :cond_4
    iput-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCallback:Lcom/android/systemui/media/dialog/MediaOutputController$Callback;

    .line 133
    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->unregisterCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    .line 134
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p1}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    .line 135
    iget-object p1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/media/LocalMediaManager;->registerCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    .line 136
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {p0}, Lcom/android/settingslib/media/LocalMediaManager;->startScan()V

    return-void
.end method

.method stop()V
    .locals 2

    .line 140
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaController:Landroid/media/session/MediaController;

    if-eqz v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mCb:Landroid/media/session/MediaController$Callback;

    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0, p0}, Lcom/android/settingslib/media/LocalMediaManager;->unregisterCallback(Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;)V

    .line 145
    iget-object v0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mLocalMediaManager:Lcom/android/settingslib/media/LocalMediaManager;

    invoke-virtual {v0}, Lcom/android/settingslib/media/LocalMediaManager;->stopScan()V

    .line 147
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/dialog/MediaOutputController;->mMediaDevices:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method
