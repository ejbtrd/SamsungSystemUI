.class public Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;
.super Ljava/lang/Object;
.source "FaceWidgetNotificationControllerWrapper.java"

# interfaces
.implements Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController$Callback;
.implements Lcom/android/systemui/facewidget/FaceWidgetNotificationController;


# static fields
.field private static final TAG:Ljava/lang/String; = "FaceWidgetNotificationControllerWrapper"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMediaDataListener:Lcom/android/systemui/media/MediaDataManager$Listener;

.field private mNotificationController:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;

.field private mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;


# direct methods
.method public static synthetic $r8$lambda$_LmpFvCSlRziemCQdNJIXUMW1qU(Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;Ljava/lang/Void;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->lambda$initPlugin$0(Ljava/lang/Void;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;

    return-object p0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;Lcom/android/systemui/media/MediaData;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;
    .locals 0

    .line 32
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getPluginFaceWidgetMediaData(Lcom/android/systemui/media/MediaData;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;

    move-result-object p0

    return-object p0
.end method

.method private cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return-object p0

    .line 168
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    .line 173
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method private cloneDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 141
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 150
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v0

    .line 155
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    if-nez p0, :cond_3

    return-object v0

    .line 160
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_4
    :goto_0
    return-object v0
.end method

.method private convertIntegerToInt(Ljava/lang/Integer;I)I
    .locals 0

    if-nez p1, :cond_0

    return p2

    .line 181
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method private getNotificationEntrySafety(I)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getActiveNotificationSize()I

    move-result v0

    if-le v0, p1, :cond_0

    .line 55
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsForCurrentUser()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private getPluginFaceWidgetMediaData(Lcom/android/systemui/media/MediaData;)Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;
    .locals 23

    move-object/from16 v0, p0

    .line 117
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 118
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getActions()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 119
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 120
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/media/MediaAction;

    .line 121
    new-instance v3, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaAction;->getIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->cloneDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaAction;->getAction()Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaAction;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v3, v4, v5, v2}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaAction;-><init>(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;Ljava/lang/CharSequence;)V

    invoke-interface {v11, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getDevice()Lcom/android/systemui/media/MediaDeviceData;

    move-result-object v2

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 128
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 129
    new-instance v3, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaDeviceData;->getEnabled()Z

    move-result v4

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaDeviceData;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-direct {v0, v6}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->cloneDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v2}, Lcom/android/systemui/media/MediaDeviceData;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v7, -0x1

    .line 130
    invoke-direct {v0, v1, v7}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->convertIntegerToInt(Ljava/lang/Integer;I)I

    move-result v1

    invoke-direct {v3, v4, v6, v2, v1}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;-><init>(ZLandroid/graphics/drawable/Drawable;Ljava/lang/String;I)V

    move-object/from16 v16, v3

    goto :goto_1

    :cond_1
    move-object/from16 v16, v1

    .line 133
    :goto_1
    new-instance v22, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;

    move-object/from16 v1, v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getUserId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v2, v5}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->convertIntegerToInt(Ljava/lang/Integer;I)I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getInitialized()Z

    move-result v3

    .line 134
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getBackgroundColor()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v4, v5}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->convertIntegerToInt(Ljava/lang/Integer;I)I

    move-result v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v0, v6, v5}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->convertIntegerToInt(Ljava/lang/Integer;I)I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getApp()Ljava/lang/String;

    move-result-object v6

    .line 135
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getAppIcon()Landroid/graphics/drawable/Icon;

    move-result-object v7

    invoke-direct {v0, v7}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->cloneDrawable(Landroid/graphics/drawable/Icon;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getArtist()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getSong()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getArtwork()Landroid/graphics/drawable/Icon;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getActionsToShowInCompact()Ljava/util/List;

    move-result-object v12

    .line 136
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getToken()Landroid/media/session/MediaSession$Token;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getClickIntent()Landroid/app/PendingIntent;

    move-result-object v15

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getActive()Z

    move-result v17

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getResumeAction()Ljava/lang/Runnable;

    move-result-object v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getResumption()Z

    move-result v19

    .line 137
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getNotificationKey()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/media/MediaData;->getHasCheckedForResume()Z

    move-result v21

    invoke-direct/range {v1 .. v21}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData;-><init>(IZIILjava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Landroid/media/session/MediaSession$Token;Landroid/app/PendingIntent;Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetMediaData$PluginFaceWidgetMediaDeviceData;ZLjava/lang/Runnable;ZLjava/lang/String;Z)V

    return-object v22
.end method

.method private getSbnSafety(I)Landroid/service/notification/StatusBarNotification;
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationEntrySafety(I)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private synthetic lambda$initPlugin$0(Ljava/lang/Void;)V
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const-string p1, "facewidget"

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotifications(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addFaceWidgetMusicNotification(Ljava/lang/String;)V
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;

    if-eqz p0, :cond_0

    .line 194
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;->addFaceWidgetMusicNotification(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getActiveNotificationSize()I
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsForCurrentUser()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 232
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsForCurrentUser()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAllNotifications()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/service/notification/StatusBarNotification;",
            ">;"
        }
    .end annotation

    .line 70
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-nez p0, :cond_0

    .line 71
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getAllNotifs()Ljava/util/Collection;

    move-result-object p0

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 78
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getEntryKey(I)Ljava/lang/String;
    .locals 0

    .line 257
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getNotificationEntrySafety(I)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 259
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMediaDataListener()Lcom/android/systemui/media/MediaDataManager$Listener;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mMediaDataListener:Lcom/android/systemui/media/MediaDataManager$Listener;

    if-nez v0, :cond_0

    .line 85
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$1;-><init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;)V

    iput-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mMediaDataListener:Lcom/android/systemui/media/MediaDataManager$Listener;

    .line 113
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mMediaDataListener:Lcom/android/systemui/media/MediaDataManager$Listener;

    return-object p0
.end method

.method public getNotificationPackageName(I)Ljava/lang/String;
    .locals 0

    .line 239
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getSbnSafety(I)Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 241
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getNotificationUid(I)I
    .locals 0

    .line 248
    invoke-direct {p0, p1}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->getSbnSafety(I)Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 250
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public initPlugin(Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;Landroid/content/Context;)V
    .locals 1

    .line 46
    iput-object p1, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;

    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-eqz v0, :cond_0

    .line 48
    new-instance v0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;)V

    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;->init(Ljava/util/function/Consumer;)V

    .line 50
    :cond_0
    iput-object p2, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public isFaceWidgetMusicNotification(Ljava/lang/String;)Z
    .locals 0

    .line 200
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;

    if-eqz p0, :cond_0

    .line 201
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;->isFaceWidgetMusicNotification(Ljava/lang/String;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isMusicFaceWidgetOn()Z
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;

    if-eqz p0, :cond_0

    .line 209
    invoke-interface {p0}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;->isMusicFaceWidgetOn()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeFaceWidgetMusicNotification(Ljava/lang/String;)V
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/android/systemui/facewidget/plugin/FaceWidgetNotificationControllerWrapper;->mNotificationController:Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;

    if-eqz p0, :cond_0

    .line 187
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/facewidget/PluginFaceWidgetNotificationController;->removeFaceWidgetMusicNotification(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
