.class public Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;
.super Ljava/lang/Object;
.source "HeadsUpController.java"


# instance fields
.field private mCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

.field private final mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field private final mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

.field private final mInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

.field private mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

.field private mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

.field private final mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;


# direct methods
.method public static synthetic $r8$lambda$7ouHWnD-HzkYcmP5vLZxf-Sc6j8(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->showAlertingView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method constructor <init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;Lcom/android/systemui/statusbar/policy/HeadsUpManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;Lcom/android/systemui/statusbar/NotificationListener;)V
    .locals 1

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$1;-><init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    .line 184
    new-instance v0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$2;-><init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    .line 70
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    .line 71
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 72
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    .line 73
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 74
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 75
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    .line 76
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->updateHunState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->stopAlerting(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->showAlertingView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method public static alertAgain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 180
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasInterrupted()Z

    move-result p0

    if-eqz p0, :cond_1

    iget p0, p1, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x8

    if-nez p0, :cond_0

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

.method private setNotificationShown(Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 147
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mNotificationListener:Lcom/android/systemui/statusbar/NotificationListener;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Landroid/service/notification/NotificationListenerService;->setNotificationsShown([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "HeadsUpBindController"

    const-string v0, "failed setNotificationsShown: "

    .line 149
    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private showAlertingView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->showNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 124
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->setNotificationShown(Landroid/service/notification/StatusBarNotification;)V

    :cond_0
    return-void
.end method

.method private stopAlerting(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 157
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 158
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mRemoteInputManager:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    .line 164
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->getController()Lcom/android/systemui/statusbar/RemoteInputController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mVisualStabilityManager:Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;

    .line 166
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/legacy/VisualStabilityManager;->isReorderingAllowed()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 167
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    :cond_3
    return-void
.end method

.method private updateHunState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 4

    .line 129
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->alertAgain(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Landroid/app/Notification;)Z

    move-result v0

    .line 131
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mInterruptStateProvider:Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;

    invoke-interface {v1, p1}, Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptStateProvider;->shouldHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v1

    .line 132
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->updateNotification(Ljava/lang/String;Z)V

    goto :goto_0

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->isEntryAutoHeadsUpped(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 138
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->removeNotification(Ljava/lang/String;Z)Z

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 141
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->bindHeadsUpView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/policy/HeadsUpManager;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mCollectionListener:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addCollectionListener(Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mOnHeadsUpChangedListener:Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;

    invoke-virtual {p2, v0}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->addListener(Lcom/android/systemui/statusbar/policy/OnHeadsUpChangedListener;)V

    .line 88
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-void
.end method

.method public turnToHeadsUp(Ljava/lang/String;)V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mNotificationEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getPendingOrActiveNotif(Ljava/lang/String;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "HeadsUpBindController"

    const-string/jumbo p1, "turn to headsup is failed. notification isn\'t arrived at systemui yet.."

    .line 199
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 203
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setIsHeadsUpByBriefExpanding(Z)V

    .line 205
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;->mHeadsUpViewBinder:Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;

    new-instance v1, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/interruption/HeadsUpController;)V

    invoke-virtual {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/interruption/HeadsUpViewBinder;->bindHeadsUpView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V

    return-void
.end method
