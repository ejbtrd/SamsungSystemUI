.class public Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;
.super Landroid/service/notification/NotificationListenerService;
.source "SmartPopupViewService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z


# instance fields
.field private final mEnabledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field private mSmartPopupViewPackageListObserver:Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;

.field private mZenMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 60
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->DEBUG:Z

    sput-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    const/4 v0, 0x0

    .line 67
    iput v0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->mZenMode:I

    const/4 v0, 0x0

    .line 69
    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 58
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;Ljava/lang/String;)Z
    .locals 0

    .line 58
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->isPackageEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;)Landroid/content/Context;
    .locals 0

    .line 58
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;)Landroid/content/Context;
    .locals 0

    .line 58
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;)I
    .locals 0

    .line 58
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->mZenMode:I

    return p0
.end method

.method static synthetic access$502(Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;I)I
    .locals 0

    .line 58
    iput p1, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->mZenMode:I

    return p1
.end method

.method private isPackageEnabled(Ljava/lang/String;)Z
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->mEnabledList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isSmartPopupViewTarget(Ljava/lang/String;Landroid/app/Notification;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "FreeformContainer"

    if-eqz p1, :cond_c

    if-eqz p2, :cond_c

    if-nez p3, :cond_0

    goto/16 :goto_1

    .line 152
    :cond_0
    invoke-direct {p0, p1}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->isPackageEnabled(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 153
    sget-boolean p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz p0, :cond_1

    .line 154
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[SmartPopupViewService] isSmartPopupViewTarget: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not enabled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v0

    .line 160
    :cond_2
    iget-object p0, p2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_a

    .line 161
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    .line 169
    :cond_3
    iget-object p0, p2, Landroid/app/Notification;->category:Ljava/lang/String;

    if-eqz p0, :cond_6

    const-string/jumbo p1, "progress"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    iget-object p0, p2, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string/jumbo p1, "service"

    .line 170
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 171
    :cond_4
    sget-boolean p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz p0, :cond_5

    .line 172
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "[SmartPopupViewService] isSmartPopupViewTarget: notification category is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Landroid/app/Notification;->category:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v0

    .line 178
    :cond_6
    invoke-virtual {p2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p0

    if-eqz p0, :cond_7

    const-string p0, "[SmartPopupViewService] isSmartPopupViewTarget: group summary notification is not target"

    .line 179
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 184
    :cond_7
    invoke-virtual {p2}, Landroid/app/Notification;->isForegroundService()Z

    move-result p0

    if-eqz p0, :cond_8

    const-string p0, "[SmartPopupViewService] isSmartPopupViewTarget: forgroundservice notification is not target"

    .line 185
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 190
    :cond_8
    invoke-virtual {p2}, Landroid/app/Notification;->isBubbleNotification()Z

    move-result p0

    if-eqz p0, :cond_9

    const-string p0, "[SmartPopupViewService] isSmartPopupViewTarget: Freeform notification is not target"

    .line 191
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_9
    const/4 p0, 0x1

    return p0

    .line 162
    :cond_a
    :goto_0
    sget-boolean p1, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz p1, :cond_b

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[SmartPopupViewService] isSmartPopupViewTarget: pendingIntent is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v0

    :cond_c
    :goto_1
    const-string p0, "[SmartPopupViewService] isSmartPopupViewTarget: there is empty parameter"

    .line 148
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private isSuppressedVisibleEffects(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z
    .locals 1

    .line 130
    new-instance v0, Landroid/service/notification/NotificationListenerService$Ranking;

    invoke-direct {v0}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 131
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v0}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 133
    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->mZenMode:I

    if-eqz p0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService$Ranking;->getSuppressedVisualEffects()I

    move-result p0

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private registerPackageRemoveReceiver()V
    .locals 2

    .line 199
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$1;-><init>(Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    .line 223
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    .line 224
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 225
    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/service/notification/NotificationListenerService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2

    .line 75
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FreeformContainer"

    const-string v1, "[SmartPopupViewService] onBind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    const-class v1, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;

    invoke-direct {v0, p0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/4 v1, -0x2

    .line 78
    :try_start_0
    invoke-virtual {p0, p0, v0, v1}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 80
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 82
    :goto_0
    new-instance v0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;

    invoke-direct {v0, p0}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;-><init>(Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;)V

    iput-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->mSmartPopupViewPackageListObserver:Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;

    .line 83
    invoke-direct {p0}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->registerPackageRemoveReceiver()V

    .line 84
    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(I)V

    .line 85
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    move-result-object p0

    return-object p0
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 6

    .line 104
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 105
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    .line 106
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 108
    sget-boolean v3, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->DEBUG:Z

    const-string v4, "FreeformContainer"

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[SmartPopupViewService] onNotificationPosted: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->isSuppressedVisibleEffects(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 110
    invoke-static {}, Lcom/android/systemui/util/LogUtil;->isDebugLevelMid()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 111
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "[SmartPopupViewService] SuppressedVisibleEffects now. mZenMode="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->mZenMode:I

    .line 113
    invoke-static {p0}, Landroid/provider/Settings$Global;->zenModeToString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 111
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 117
    :cond_2
    invoke-direct {p0, v0, v1, v2}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->isSmartPopupViewTarget(Ljava/lang/String;Landroid/app/Notification;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 118
    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->shouldHideInformation()Z

    move-result p1

    if-eqz p1, :cond_3

    return-void

    .line 122
    :cond_3
    new-instance p1, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2, v0, v1, v2}, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewItem;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/app/Notification;Ljava/lang/String;)V

    .line 125
    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 p2, 0x17

    invoke-virtual {p0, p2, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 139
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[SmartPopupViewService] onNotificationRemoved: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FreeformContainer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_0
    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    move-result-object p0

    iget-object p0, p0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 v0, 0x18

    .line 142
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 141
    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2

    .line 90
    sget-boolean v0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "FreeformContainer"

    const-string v1, "[SmartPopupViewService] onUnbind()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->mSmartPopupViewPackageListObserver:Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService$SmartPopupViewPackageListObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 92
    iget-object v0, p0, Lcom/samsung/android/systemui/freeformcontainer/SmartPopupViewService;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 93
    invoke-static {p0}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;

    move-result-object v0

    iget-object v0, v0, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager;->mH:Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Lcom/samsung/android/systemui/freeformcontainer/FreeformContainerManager$H;->sendMessage(I)V

    .line 95
    :try_start_0
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 97
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 99
    :goto_0
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onUnbind(Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method
