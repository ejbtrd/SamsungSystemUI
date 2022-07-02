.class public Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;
.super Ljava/lang/Object;
.source "SubscreenNotificationInfoManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$DisplayLifecycleObserver;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayLifecycleObserver:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$DisplayLifecycleObserver;

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mGroupDataArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIsRemoveGroupSummary:Z

.field private mIsShownGroup:Z

.field private mIsSwipeRemoved:Z

.field private mLockscreenNotificationInfoArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationInfo;",
            ">;"
        }
    .end annotation
.end field

.field mNotificationController:Lcom/samsung/systemui/splugins/bixby2/controller/NotificationController;

.field private mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

.field private mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

.field private mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

.field private mRecyclerViewItemHolderArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mReplyWordList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method public static synthetic $r8$lambda$_7wKr7n456ky_VPMdEhtTIg42jg()V
    .locals 0

    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->lambda$deleteAllNotifications$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)V
    .locals 3

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    .line 47
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mRecyclerViewItemHolderArray:Ljava/util/ArrayList;

    .line 48
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    .line 59
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mUiHandler:Landroid/os/Handler;

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    .line 67
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    .line 68
    const-class p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 69
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 70
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 71
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 72
    const-class p1, Lcom/android/systemui/util/SettingsHelper;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/util/SettingsHelper;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mSettingsHelper:Lcom/android/systemui/util/SettingsHelper;

    .line 73
    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$DisplayLifecycleObserver;

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$DisplayLifecycleObserver;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$1;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mDisplayLifecycleObserver:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$DisplayLifecycleObserver;

    .line 74
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$DisplayLifecycleObserver;->onAttachedToWindow()V

    .line 76
    new-instance p1, Lcom/android/systemui/controller/NotificationControllerImpl;

    invoke-direct {p1}, Lcom/android/systemui/controller/NotificationControllerImpl;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationController:Lcom/samsung/systemui/splugins/bixby2/controller/NotificationController;

    .line 77
    check-cast p1, Lcom/android/systemui/controller/NotificationControllerImpl;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/android/systemui/controller/NotificationControllerImpl;->setStatusBar(Landroid/content/Context;)V

    .line 79
    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setReplyWordList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    return-object p0
.end method

.method private static synthetic lambda$deleteAllNotifications$0()V
    .locals 2

    .line 270
    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v1, "B2 Sub Screen"

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->clearNotiifcations(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public ClearAllGroupNotificaiton()V
    .locals 3

    const/4 v0, 0x0

    .line 292
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArraySize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 293
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 294
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->canViewBeDismissed(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 295
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->RemoveNotification(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->clearAllRecyclerViewItem()V

    .line 299
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 300
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsShownGroup:Z

    if-eqz v0, :cond_2

    .line 301
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->hideGroupNotification()V

    :cond_2
    return-void
.end method

.method public RemoveNotification(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 6

    .line 306
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    .line 307
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;

    .line 311
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 312
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRanking()Landroid/service/notification/NotificationListenerService$Ranking;

    move-result-object v3

    invoke-virtual {v3}, Landroid/service/notification/NotificationListenerService$Ranking;->getRank()I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 313
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getActiveNotificationsCount()I

    move-result v4

    .line 315
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object v0

    const/4 v5, 0x1

    .line 310
    invoke-static {v2, v3, v4, v5, v0}, Lcom/android/internal/statusbar/NotificationVisibility;->obtain(Ljava/lang/String;IIZLcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;)Lcom/android/internal/statusbar/NotificationVisibility;

    move-result-object v0

    const/4 v2, 0x3

    invoke-direct {v1, v2, v5, v0}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;-><init>(IILcom/android/internal/statusbar/NotificationVisibility;)V

    .line 317
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    const v0, 0xd9699

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->performRemoveNotification(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/collection/notifcollection/DismissedByUserStats;I)V

    return-void
.end method

.method public addGroupItems(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 4

    .line 189
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 193
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 194
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    .line 195
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v2

    .line 196
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public addRecyclerViewItemView(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;)V
    .locals 4

    .line 136
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getRecyclerViewItemHolderArraySize()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 138
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mRecyclerViewItemHolderArray:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    .line 139
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->getSubscreenNotificationInfo()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 140
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->getSubscreenNotificationInfo()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 141
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->removeRecyclerViewItemView(I)V

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 145
    :cond_1
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mRecyclerViewItemHolderArray:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public canViewBeDismissed(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 6

    .line 225
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 226
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 227
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 228
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    .line 231
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 232
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 233
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v5, v5, Landroid/app/Notification;->flags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_0

    move v5, v1

    goto :goto_1

    :cond_0
    move v5, v2

    .line 234
    :goto_1
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v5, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return v2

    .line 240
    :cond_3
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget p1, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p1, p1, 0x40

    if-eqz p1, :cond_4

    move p1, v1

    goto :goto_3

    :cond_4
    move p1, v2

    .line 241
    :goto_3
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->isClearable()Z

    move-result p0

    if-eqz p0, :cond_5

    if-nez p1, :cond_5

    goto :goto_4

    :cond_5
    move v1, v2

    :goto_4
    return v1
.end method

.method public checkRemoveGroupNotification()Z
    .locals 4

    .line 256
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArraySize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 259
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->canViewBeDismissed(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

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

.method public checkRemoveNotification()Z
    .locals 4

    .line 245
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 247
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArray()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 248
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->canViewBeDismissed(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

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

.method public clearAllRecyclerViewItem()V
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mRecyclerViewItemHolderArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public clearGroupDataArray()V
    .locals 0

    .line 185
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;
    .locals 1

    .line 208
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;-><init>(Landroid/content/Context;)V

    .line 209
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->setItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    return-object v0
.end method

.method public deleteAllNotifications()V
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->checkRemoveNotification()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mUiHandler:Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$$ExternalSyntheticLambda0;->INSTANCE:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager$$ExternalSyntheticLambda0;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 272
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->deleteNotificaitonInfo()V

    .line 273
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->pageMove()V

    :cond_0
    return-void
.end method

.method public deleteNotificaitonInfo()V
    .locals 6

    .line 278
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 279
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 281
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArray()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 282
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->canViewBeDismissed(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 283
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 287
    :cond_1
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_2

    .line 288
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArray()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public getGroupDataArray()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;",
            ">;"
        }
    .end annotation

    .line 177
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getGroupDataArraySize()I
    .locals 0

    .line 181
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getNotificationInfoArray()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationInfo;",
            ">;"
        }
    .end annotation

    .line 169
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getNotificationInfoArraySize()I
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getRecyclerViewItemHolderArray()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;",
            ">;"
        }
    .end annotation

    .line 157
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mRecyclerViewItemHolderArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getRecyclerViewItemHolderArraySize()I
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mRecyclerViewItemHolderArray:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getRecyclerViewItemSelectPosition(Ljava/lang/String;)I
    .locals 4

    .line 366
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsShownGroup:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_5

    .line 369
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsShownGroup:Z

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 370
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v3

    .line 371
    :goto_2
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 372
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsShownGroup:Z

    if-eqz p0, :cond_3

    add-int/lit8 v2, v2, 0x1

    :cond_3
    return v2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return v1
.end method

.method public getReplyWordList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    return-object p0
.end method

.method public isRemoveGroupSummary()Z
    .locals 0

    .line 362
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsRemoveGroupSummary:Z

    return p0
.end method

.method public isRemoveGroupSummaryType(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)Z
    .locals 0

    .line 380
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 381
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getAttachedChildren()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isShownGroup()Z
    .locals 0

    .line 344
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsShownGroup:Z

    return p0
.end method

.method public isSwipeRemoved()Z
    .locals 0

    .line 353
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsSwipeRemoved:Z

    return p0
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setReplyWordList()V

    return-void
.end method

.method public performRemoveNotification(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 3

    .line 322
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->RemoveNotification(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 324
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsShownGroup:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    .line 325
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 326
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 327
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 332
    :cond_1
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mGroupDataArray:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_2

    .line 333
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->hideGroupNotification()V

    :cond_2
    return-void
.end method

.method public removeNotificationInfoItem(I)V
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    .line 203
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public removeRecyclerViewItemView(I)V
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mRecyclerViewItemHolderArray:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public replyNotification(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationController:Lcom/samsung/systemui/splugins/bixby2/controller/NotificationController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-interface {v0, p1, p2, p0}, Lcom/samsung/systemui/splugins/bixby2/controller/NotificationController;->replyNotification(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public setAdapterHolderPostionInGroup(I)V
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->setItemPostion(I)V

    return-void
.end method

.method public setNotificationInfoArray(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/LockscreenNotificationInfo;",
            ">;)V"
        }
    .end annotation

    .line 165
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mLockscreenNotificationInfoArray:Ljava/util/ArrayList;

    return-void
.end method

.method public setRemoveGroupSummary(Z)V
    .locals 2

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRemoveGroupSummnary : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenNotificationInfoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsRemoveGroupSummary:Z

    return-void
.end method

.method public setReplyWordList()V
    .locals 18

    move-object/from16 v0, p0

    .line 84
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 85
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 87
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$string;->subscreen_reply_word_1:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 88
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$string;->subscreen_reply_word_2:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 89
    iget-object v3, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$string;->subscreen_reply_word_3:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 90
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/systemui/R$string;->subscreen_reply_word_4:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 91
    iget-object v5, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/systemui/R$string;->subscreen_reply_word_5:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 92
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v7, Lcom/android/systemui/R$string;->subscreen_reply_word_6:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 93
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    sget v8, Lcom/android/systemui/R$string;->subscreen_reply_word_7:I

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 94
    iget-object v8, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    sget v9, Lcom/android/systemui/R$string;->subscreen_reply_word_8:I

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 95
    iget-object v9, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v10, Lcom/android/systemui/R$string;->subscreen_reply_word_9:I

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 96
    iget-object v10, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    sget v11, Lcom/android/systemui/R$string;->subscreen_reply_word_10:I

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 97
    iget-object v11, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    sget v12, Lcom/android/systemui/R$string;->subscreen_reply_word_11:I

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 98
    iget-object v12, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    sget v13, Lcom/android/systemui/R$string;->subscreen_reply_word_12:I

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 99
    iget-object v13, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    sget v14, Lcom/android/systemui/R$string;->subscreen_reply_word_13:I

    invoke-virtual {v13, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 100
    iget-object v14, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    sget v15, Lcom/android/systemui/R$string;->subscreen_reply_word_14:I

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 101
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v16, v14

    sget v14, Lcom/android/systemui/R$string;->subscreen_reply_word_15:I

    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 102
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    move-object/from16 v17, v14

    sget v14, Lcom/android/systemui/R$string;->subscreen_reply_word_16:I

    invoke-virtual {v15, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 104
    iget-object v15, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v15, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 105
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 106
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 107
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 109
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 110
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 112
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 116
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    move-object/from16 v2, v16

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 118
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    move-object/from16 v2, v17

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 119
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mReplyWordList:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setShownGroup(Z)V
    .locals 2

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setShownGroup : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenNotificationInfoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsShownGroup:Z

    return-void
.end method

.method public setSwipeRemoved(Z)V
    .locals 2

    .line 348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isSwiped : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenNotificationInfoManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->mIsSwipeRemoved:Z

    return-void
.end method

.method public updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 0

    .line 389
    invoke-virtual {p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKnoxBadgeImage()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-nez p0, :cond_0

    const/16 p0, 0x8

    .line 391
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 393
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 394
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    return-void
.end method
