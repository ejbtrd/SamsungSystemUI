.class public Lcom/android/systemui/controller/NotificationControllerImpl;
.super Ljava/lang/Object;
.source "NotificationControllerImpl.java"

# interfaces
.implements Lcom/samsung/systemui/splugins/bixby2/controller/NotificationController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/controller/NotificationControllerImpl$ReadOutNotificationData;
    }
.end annotation


# instance fields
.field private mContentDescription:Ljava/lang/StringBuffer;

.field private mContext:Landroid/content/Context;

.field private mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

.field private mDisplayDescription:Ljava/lang/StringBuffer;

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

.field mItemCount:I

.field mRemoteInput:Landroid/app/RemoteInput;

.field mRemoteInputId:Ljava/lang/String;

.field mRemoteInputIntent:Landroid/app/PendingIntent;

.field mRemoteInputs:[Landroid/app/RemoteInput;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$bmbYb5_2tP7R-Lnd8x48B1DELUM()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/controller/NotificationControllerImpl;->lambda$deleteAllNotifications$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$lYJ5PAI2yZyXkg2vjtj9i0FLW5o(Lcom/android/systemui/controller/NotificationControllerImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/controller/NotificationControllerImpl;->lambda$deleteAppNotifications$1(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 66
    iput v0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mItemCount:I

    .line 70
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mUiHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 692
    iput-object v0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mRemoteInput:Landroid/app/RemoteInput;

    .line 693
    iput-object v0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 694
    iput-object v0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mRemoteInputIntent:Landroid/app/PendingIntent;

    const-string v0, "-1"

    .line 695
    iput-object v0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mRemoteInputId:Ljava/lang/String;

    return-void
.end method

.method private checkNotificatoins(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private checkOngoingNotification(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)Z"
        }
    .end annotation

    .line 196
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    .line 198
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 199
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private deleteAllNotifications(Ljava/util/List;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)I"
        }
    .end annotation

    .line 207
    invoke-direct {p0, p1}, Lcom/android/systemui/controller/NotificationControllerImpl;->checkOngoingNotification(Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 209
    iget-object p0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mUiHandler:Landroid/os/Handler;

    sget-object p1, Lcom/android/systemui/controller/NotificationControllerImpl$$ExternalSyntheticLambda1;->INSTANCE:Lcom/android/systemui/controller/NotificationControllerImpl$$ExternalSyntheticLambda1;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x4

    return p0
.end method

.method private deleteAppNotifications(Ljava/lang/String;Ljava/util/List;)I
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)I"
        }
    .end annotation

    .line 232
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    .line 235
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v3, v0, :cond_2

    .line 237
    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 238
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    .line 239
    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 241
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->canViewBeDismissed()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 243
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v4, v6

    move v5, v4

    goto :goto_1

    :cond_0
    move v4, v6

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 247
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_3

    .line 249
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 250
    iget-object v0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mUiHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/systemui/controller/NotificationControllerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, p2}, Lcom/android/systemui/controller/NotificationControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/controller/NotificationControllerImpl;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    if-nez v4, :cond_4

    const/4 v6, 0x3

    goto :goto_3

    :cond_4
    if-nez v5, :cond_5

    const/4 v6, 0x4

    :cond_5
    :goto_3
    return v6
.end method

.method private isRemoteInputNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 10

    .line 698
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 699
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x0

    .line 700
    iput-object v1, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 701
    iput-object v1, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mRemoteInput:Landroid/app/RemoteInput;

    .line 702
    iput-object v1, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mRemoteInputIntent:Landroid/app/PendingIntent;

    const-string v1, "-1"

    .line 703
    iput-object v1, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mRemoteInputId:Ljava/lang/String;

    .line 705
    iget-object v1, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 709
    :cond_0
    array-length v1, v1

    if-nez v1, :cond_1

    return v2

    :cond_1
    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    .line 715
    iget-object v4, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v4, v4, v3

    if-nez v4, :cond_2

    goto :goto_2

    .line 719
    :cond_2
    invoke-virtual {v4}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_2

    .line 723
    :cond_3
    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_5

    aget-object v8, v5, v7

    .line 724
    invoke-virtual {v8}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 725
    iget-object v9, v4, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v9, :cond_4

    .line 726
    iput-object v5, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mRemoteInputs:[Landroid/app/RemoteInput;

    .line 727
    iput-object v8, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mRemoteInput:Landroid/app/RemoteInput;

    .line 728
    iput-object v9, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mRemoteInputIntent:Landroid/app/PendingIntent;

    .line 729
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mRemoteInputId:Ljava/lang/String;

    const/4 p0, 0x1

    return p0

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method

.method private static synthetic lambda$deleteAllNotifications$0()V
    .locals 2

    .line 210
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "bixby"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotiifcations(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$deleteAppNotifications$1(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 6

    .line 251
    iget-object v0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    .line 256
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 257
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v4

    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v4

    iget-object p0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 258
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsCount()I

    move-result p0

    .line 260
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object p1

    const/4 v5, 0x1

    .line 255
    invoke-static {v3, v4, p0, v5, p1}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object p0

    const/4 p1, 0x3

    invoke-direct {v2, p1, v5, p0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(IILcom/android/internal/statusbar/NotificationVisibility;)V

    const/4 p0, 0x2

    .line 251
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;I)V

    return-void
.end method

.method private readAllNotification(Ljava/util/List;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)I"
        }
    .end annotation

    .line 303
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 304
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    .line 305
    new-instance v2, Lcom/android/systemui/controller/NotificationControllerImpl$ReadOutNotificationData;

    invoke-direct {v2}, Lcom/android/systemui/controller/NotificationControllerImpl$ReadOutNotificationData;-><init>()V

    .line 306
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, v2, Lcom/android/systemui/controller/NotificationControllerImpl$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    .line 307
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mDisplayDescription:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_3

    .line 310
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 311
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v6

    .line 314
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/controller/NotificationControllerImpl;->filterReadOutNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    if-eqz v6, :cond_2

    .line 319
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    .line 320
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v7

    .line 321
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 323
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v1, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 328
    :cond_3
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-nez v4, :cond_4

    const/4 p0, 0x2

    return p0

    :cond_4
    if-eqz v0, :cond_5

    .line 332
    iget-object v4, v2, Lcom/android/systemui/controller/NotificationControllerImpl$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    :goto_2
    if-ge v3, v0, :cond_8

    .line 334
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 335
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 336
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 337
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 338
    invoke-direct {p0, v4}, Lcom/android/systemui/controller/NotificationControllerImpl;->stringValidater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 339
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "{\"appName\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "\", \"notiCount\":\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "\"}"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 340
    iget-object v6, v2, Lcom/android/systemui/controller/NotificationControllerImpl$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    invoke-virtual {v1, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 343
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-eqz v4, :cond_6

    .line 344
    iget-object v4, v2, Lcom/android/systemui/controller/NotificationControllerImpl$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 346
    :cond_6
    iget-object v4, v2, Lcom/android/systemui/controller/NotificationControllerImpl$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_7
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 353
    :cond_8
    iget-object p1, v2, Lcom/android/systemui/controller/NotificationControllerImpl$ReadOutNotificationData;->contentDescription:Ljava/lang/StringBuffer;

    iput-object p1, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mDisplayDescription:Ljava/lang/StringBuffer;

    const/4 p0, 0x5

    return p0
.end method

.method private readAppNotification(Ljava/lang/String;Ljava/util/List;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)I"
        }
    .end annotation

    .line 360
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "all"

    const/4 v2, 0x6

    if-eqz p1, :cond_0

    .line 361
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x5

    goto :goto_0

    :cond_0
    move v3, v2

    .line 363
    :goto_0
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v4, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mContentDescription:Ljava/lang/StringBuffer;

    const/4 v4, 0x0

    .line 364
    iput v4, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mItemCount:I

    :goto_1
    if-ge v4, v0, :cond_5

    .line 367
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 368
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    .line 369
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v7

    if-eqz p1, :cond_4

    .line 372
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 373
    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 374
    :cond_1
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v8

    .line 375
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v7

    .line 378
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/systemui/controller/NotificationControllerImpl;->filterReadOutNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v9

    if-eqz v9, :cond_2

    goto :goto_3

    .line 382
    :cond_2
    iget v9, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mItemCount:I

    if-lez v9, :cond_3

    if-eqz v8, :cond_3

    if-eqz v7, :cond_3

    .line 385
    invoke-virtual {v8}, Landroid/view/View;->getId()I

    move-result v8

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    if-ne v8, v7, :cond_3

    iget-object v7, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    .line 386
    invoke-virtual {v7, v5}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isChildInGroup(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    .line 391
    :cond_3
    iget-object v7, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mContentDescription:Ljava/lang/StringBuffer;

    invoke-direct {p0, v5}, Lcom/android/systemui/controller/NotificationControllerImpl;->readOutNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    .line 394
    :goto_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readAppNameNotification:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "NotificationControllerImpl"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget v5, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mItemCount:I

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mItemCount:I

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 398
    :cond_5
    iget p0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mItemCount:I

    if-nez p0, :cond_6

    if-ne v3, v2, :cond_6

    const/4 v3, 0x3

    :cond_6
    return v3
.end method

.method private readAppNotificationWithID(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 588
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 589
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v3

    const-string v4, "all"

    if-eqz v1, :cond_0

    .line 591
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x7

    goto :goto_0

    :cond_0
    const/16 v5, 0x8

    .line 594
    :goto_0
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string/jumbo v7, "result"

    const/4 v8, 0x2

    if-nez v3, :cond_1

    .line 598
    invoke-virtual {v2, v7, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2

    :cond_1
    const-string v9, "["

    .line 602
    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_1
    if-ge v10, v3, :cond_d

    move-object/from16 v12, p2

    .line 604
    invoke-interface {v12, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 605
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v14

    .line 606
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v15

    .line 607
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    if-eqz v1, :cond_c

    .line 613
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_2

    .line 614
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 617
    :cond_2
    invoke-virtual {v13}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v9

    invoke-virtual {v0, v9}, Lcom/android/systemui/controller/NotificationControllerImpl;->filterReadOutNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto/16 :goto_8

    .line 621
    :cond_3
    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v9

    .line 623
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isCustomNotification()Z

    move-result v14

    const-string v17, "NULL"

    if-eqz v14, :cond_5

    .line 625
    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    .line 627
    invoke-virtual {v15}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getContractedContentView()Landroid/view/View;

    move-result-object v14

    invoke-direct {v0, v14, v8}, Lcom/android/systemui/controller/NotificationControllerImpl;->searchForTextView(Landroid/view/View;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v8

    if-nez v8, :cond_4

    move-object/from16 v8, v17

    goto :goto_2

    .line 628
    :cond_4
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    :goto_2
    move-object/from16 v14, v17

    goto :goto_6

    .line 632
    :cond_5
    const-class v14, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v8}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_8

    .line 633
    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v14, "android.messages"

    .line 635
    invoke-virtual {v8, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Landroid/os/Parcelable;

    .line 634
    invoke-static {v8}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v8

    .line 639
    invoke-static {v8}, Landroid/app/Notification$MessagingStyle;->findLatestIncomingMessage(Ljava/util/List;)Landroid/app/Notification$MessagingStyle$Message;

    move-result-object v8

    .line 641
    invoke-virtual {v8}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v14

    if-nez v14, :cond_6

    move-object/from16 v14, v17

    goto :goto_3

    .line 642
    :cond_6
    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 644
    :goto_3
    invoke-virtual {v8}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_7

    goto :goto_5

    .line 645
    :cond_7
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_5

    .line 649
    :cond_8
    iget-object v14, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v15, "android.title"

    invoke-virtual {v14, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v14

    if-nez v14, :cond_9

    move-object/from16 v14, v17

    goto :goto_4

    .line 651
    :cond_9
    invoke-interface {v14}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v14

    .line 653
    :goto_4
    iget-object v8, v8, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v15, "android.text"

    invoke-virtual {v8, v15}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    if-nez v8, :cond_a

    goto :goto_5

    .line 655
    :cond_a
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v17

    :goto_5
    move-object/from16 v8, v17

    .line 658
    :goto_6
    invoke-direct {v0, v14}, Lcom/android/systemui/controller/NotificationControllerImpl;->stringValidater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 659
    invoke-direct {v0, v8}, Lcom/android/systemui/controller/NotificationControllerImpl;->stringValidater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 660
    invoke-direct {v0, v13}, Lcom/android/systemui/controller/NotificationControllerImpl;->isRemoteInputNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v13

    if-eqz v13, :cond_b

    const-string v13, "TRUE"

    goto :goto_7

    :cond_b
    const-string v13, "FALSE"

    .line 661
    :goto_7
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "{\"notiID\":\""

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\", \""

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "notiTitle"

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "\":\""

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "notiText"

    invoke-virtual {v15, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "canReply"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\"},"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 666
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v11, v11, 0x1

    :cond_c
    :goto_8
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v0, p0

    const/4 v8, 0x2

    goto/16 :goto_1

    .line 672
    :cond_d
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_e

    sub-int/2addr v0, v3

    .line 674
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->setLength(I)V

    const-string v0, "]"

    .line 675
    invoke-virtual {v6, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v9, v11

    goto :goto_a

    .line 678
    :cond_e
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v5, 0x2

    goto :goto_9

    :cond_f
    const/4 v0, 0x3

    move v5, v0

    .line 680
    :goto_9
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v9, 0x0

    .line 683
    :goto_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " notiList:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " itemCount:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationControllerImpl"

    .line 683
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {v2, v7, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 687
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "notificationList"

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "itemCount"

    .line 688
    invoke-virtual {v2, v0, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v2
.end method

.method private readOutNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/StringBuffer;
    .locals 8

    .line 405
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 407
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 408
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v1

    .line 409
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    if-nez v1, :cond_0

    return-object v2

    .line 413
    :cond_0
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAppName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "NotificationControllerImpl"

    if-eqz v3, :cond_1

    .line 415
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notification from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_1
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getShowingLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v3

    .line 417
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 418
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    const/4 v5, 0x0

    if-nez v3, :cond_2

    return-object v2

    .line 423
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/android/systemui/R$id;->expanded:I

    if-ne v6, v7, :cond_4

    .line 424
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isExpanded()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 425
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getExpandedContentView()Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 427
    :cond_3
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getContractedContentView()Landroid/view/View;

    move-result-object v5

    goto :goto_0

    .line 429
    :cond_4
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v6

    sget v7, Lcom/android/systemui/R$id;->expandedPublic:I

    if-ne v6, v7, :cond_6

    .line 431
    iget-object v6, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isChildInGroup(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 432
    iget-object v6, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-virtual {v6, p1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->getGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 434
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object p1

    move-object v5, p1

    goto :goto_0

    .line 437
    :cond_5
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPublicContentView()Landroid/view/View;

    move-result-object v5

    .line 440
    :cond_6
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "showingLayout:"

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/View;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_10

    .line 444
    iget-object p1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz p1, :cond_7

    .line 445
    check-cast v5, Landroid/view/ViewGroup;

    .line 446
    new-instance p1, Ljava/lang/StringBuffer;

    invoke-direct {p1}, Ljava/lang/StringBuffer;-><init>()V

    .line 447
    invoke-direct {p0, v5, p1}, Lcom/android/systemui/controller/NotificationControllerImpl;->searchForTextView(Landroid/view/View;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    move-result-object v2

    goto/16 :goto_6

    .line 451
    :cond_7
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isLowPriority()Z

    move-result p0

    if-nez p0, :cond_d

    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result p0

    sget p1, Lcom/android/systemui/R$id;->expandedPublic:I

    if-ne p0, p1, :cond_8

    goto/16 :goto_5

    .line 471
    :cond_8
    iget-object p0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string p1, "android.messages"

    .line 473
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object p1

    .line 474
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    const/4 p0, 0x0

    .line 477
    invoke-static {p1}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object p1

    .line 476
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$MessagingStyle$Message;

    .line 478
    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getSender()Ljava/lang/CharSequence;

    move-result-object v1

    .line 479
    invoke-virtual {v0}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 480
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v5, "["

    if-nez v3, :cond_9

    .line 481
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string v1, "\n\n     "

    .line 482
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 484
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "] sender is null"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :goto_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 487
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 489
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] messageText is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_b
    const-string p1, "android.title"

    .line 494
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 495
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    const-string p1, " "

    .line 496
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, "android.bigText"

    .line 498
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 499
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const-string p1, "android.text"

    .line 500
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_4

    :cond_c
    const-string/jumbo p0, "this is bigTextView"

    .line 502
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    :goto_4
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuffer;

    goto :goto_6

    .line 452
    :cond_d
    :goto_5
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getVisibleNotificationHeader()Landroid/view/NotificationHeaderView;

    move-result-object p0

    if-eqz p0, :cond_f

    const p1, 0x1020317

    .line 454
    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_e

    .line 456
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_11

    .line 458
    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 459
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "headerText: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_e
    const-string p0, "HeaderTextView is null"

    .line 462
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_f
    const-string p0, "HeaderView is null"

    .line 465
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_10
    const-string p0, "contentView is null"

    .line 508
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    :goto_6
    return-object v2
.end method

.method private searchForTextView(Landroid/view/View;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;
    .locals 2

    .line 286
    instance-of v0, p1, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 287
    check-cast p1, Landroid/widget/TextView;

    .line 288
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    return-object p2

    .line 292
    :cond_0
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 293
    check-cast p1, Landroid/view/ViewGroup;

    const/4 v0, 0x0

    .line 294
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 295
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lcom/android/systemui/controller/NotificationControllerImpl;->searchForTextView(Landroid/view/View;Ljava/lang/StringBuffer;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method private stringValidater(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 175
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    if-lez p0, :cond_0

    const-string p0, "\""

    const-string v0, ""

    .line 177
    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\r\n"

    .line 178
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\r"

    .line 179
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "\n\r"

    .line 181
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method


# virtual methods
.method public deleteNotification(Ljava/lang/String;Landroid/content/Context;)I
    .locals 3

    const-string v0, "NotificationControllerImpl"

    const-string v1, "deleteNotification "

    .line 131
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    invoke-virtual {p0, p2}, Lcom/android/systemui/controller/NotificationControllerImpl;->setStatusBar(Landroid/content/Context;)V

    .line 134
    iget-object p2, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getVisibleNotifications()Ljava/util/List;

    move-result-object p2

    .line 135
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 138
    invoke-direct {p0, v2}, Lcom/android/systemui/controller/NotificationControllerImpl;->checkNotificatoins(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    const-string p1, "deleteAllNotification "

    .line 141
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0, p2}, Lcom/android/systemui/controller/NotificationControllerImpl;->deleteAllNotifications(Ljava/util/List;)I

    move-result p0

    goto :goto_0

    .line 145
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controller/NotificationControllerImpl;->deleteAppNotifications(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    .line 149
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " deleteNotification : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method filterReadOutNotification(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 2

    .line 515
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-ne p0, v1, :cond_0

    return v0

    .line 519
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public getContentDescription()Ljava/lang/StringBuffer;
    .locals 3

    .line 155
    iget-object v0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mContentDescription:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mContentDescription:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/controller/NotificationControllerImpl;->stringValidater(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 157
    iget-object v1, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mContentDescription:Ljava/lang/StringBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->setLength(I)V

    .line 158
    iget-object v1, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mContentDescription:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 160
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mContentDescription:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public getDisplayDescription()Ljava/lang/StringBuffer;
    .locals 0

    .line 165
    iget-object p0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mDisplayDescription:Ljava/lang/StringBuffer;

    return-object p0
.end method

.method public getItemCount()I
    .locals 0

    .line 170
    iget p0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mItemCount:I

    return p0
.end method

.method public openNotificationPanel()V
    .locals 2

    const/4 v0, 0x0

    .line 90
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    if-eqz p0, :cond_0

    .line 91
    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeManager;->getDesktopModeState()Lcom/samsung/android/desktopmode/SemDesktopModeState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/desktopmode/SemDesktopModeState;->getEnabled()I

    move-result p0

    const/4 v1, 0x4

    if-ne p0, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string/jumbo p0, "statusbar"

    .line 95
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 94
    invoke-static {p0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 98
    invoke-interface {p0, v0}, Lcom/android/internal/statusbar/IStatusBarService;->expandNotificationsPanelToType(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "NotificationControllerImpl"

    const-string v0, "error while expandNotificationsPanel"

    .line 101
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public readNotification(Ljava/lang/String;Landroid/content/Context;)I
    .locals 3

    const-string v0, "NotificationControllerImpl"

    const-string/jumbo v1, "readNotification "

    .line 107
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0, p2}, Lcom/android/systemui/controller/NotificationControllerImpl;->setStatusBar(Landroid/content/Context;)V

    .line 110
    iget-object p2, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getVisibleNotifications()Ljava/util/List;

    move-result-object p2

    .line 111
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    .line 113
    invoke-direct {p0, v2}, Lcom/android/systemui/controller/NotificationControllerImpl;->checkNotificatoins(I)Z

    move-result v2

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    const-string/jumbo p1, "readAllNotification "

    .line 116
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "all"

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controller/NotificationControllerImpl;->readAppNotification(Ljava/lang/String;Ljava/util/List;)I

    .line 118
    invoke-direct {p0, p2}, Lcom/android/systemui/controller/NotificationControllerImpl;->readAllNotification(Ljava/util/List;)I

    move-result p0

    goto :goto_0

    .line 121
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controller/NotificationControllerImpl;->readAppNotification(Ljava/lang/String;Ljava/util/List;)I

    move-result p0

    goto :goto_0

    :cond_1
    const/4 p0, 0x2

    .line 125
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method public readNotificationWithID(Ljava/lang/String;Landroid/content/Context;)Landroid/os/Bundle;
    .locals 3

    const-string v0, "NotificationControllerImpl"

    const-string/jumbo v1, "readNotificationWithID "

    .line 557
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-virtual {p0, p2}, Lcom/android/systemui/controller/NotificationControllerImpl;->setStatusBar(Landroid/content/Context;)V

    .line 560
    iget-object p2, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getVisibleNotifications()Ljava/util/List;

    move-result-object p2

    .line 562
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    if-nez p1, :cond_0

    const-string/jumbo p1, "readAllNotificationWithID "

    .line 566
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "all"

    .line 567
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controller/NotificationControllerImpl;->readAppNotificationWithID(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p1

    .line 568
    invoke-direct {p0, p2}, Lcom/android/systemui/controller/NotificationControllerImpl;->readAllNotification(Ljava/util/List;)I

    goto :goto_0

    .line 571
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "readAppNotificationWithID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/controller/NotificationControllerImpl;->readAppNotificationWithID(Ljava/lang/String;Ljava/util/List;)Landroid/os/Bundle;

    move-result-object p1

    .line 575
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "readNotification "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "result"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-object p1
.end method

.method public replyNotification(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I
    .locals 3

    .line 740
    invoke-virtual {p0, p3}, Lcom/android/systemui/controller/NotificationControllerImpl;->setStatusBar(Landroid/content/Context;)V

    .line 742
    iget-object p3, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p3, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationUnfiltered(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return p3

    .line 747
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/controller/NotificationControllerImpl;->isRemoteInputNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    return p3

    .line 752
    :cond_1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 753
    iget-object v1, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mRemoteInput:Landroid/app/RemoteInput;

    invoke-virtual {v1}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    .line 755
    iget-object v2, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mRemoteInputs:[Landroid/app/RemoteInput;

    invoke-static {v2, v1, v0}, Landroid/app/RemoteInput;->addResultsToIntent([Landroid/app/RemoteInput;Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 758
    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    const/4 p2, 0x0

    .line 759
    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputUri:Landroid/net/Uri;

    .line 760
    iput-object p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputMimeType:Ljava/lang/String;

    .line 761
    invoke-static {v1, p3}, Landroid/app/RemoteInput;->setResultsSource(Landroid/content/Intent;I)V

    .line 763
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mRemoteInputIntent:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0, p3, v1}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const-string p1, "NotificationControllerImpl"

    const-string p2, "Unable to send remote input result"

    .line 766
    invoke-static {p1, p2, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return p3
.end method

.method public setStatusBar(Landroid/content/Context;)V
    .locals 1

    .line 79
    iput-object p1, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mContext:Landroid/content/Context;

    .line 80
    const-class v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    iput-object v0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    .line 81
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object v0, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const-string v0, "desktopmode"

    .line 82
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    iput-object p1, p0, Lcom/android/systemui/controller/NotificationControllerImpl;->mDesktopModeManager:Lcom/samsung/android/desktopmode/SemDesktopModeManager;

    return-void
.end method
