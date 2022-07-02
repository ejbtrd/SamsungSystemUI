.class public Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
.super Ljava/lang/Object;
.source "NotificationRemoteInputManager.java"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/NotificationRemoteInputManager$BouncerChecker;,
        Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;,
        Lcom/android/systemui/statusbar/NotificationRemoteInputManager$ClickHandler;,
        Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;,
        Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputActiveExtender;,
        Lcom/android/systemui/statusbar/NotificationRemoteInputManager$SmartReplyHistoryExtender;,
        Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputHistoryExtender;,
        Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputExtender;
    }
.end annotation


# static fields
.field public static final ENABLE_REMOTE_INPUT:Z

.field public static FORCE_REMOTE_INPUT_HISTORY:Z


# instance fields
.field protected mActivityManager:Landroid/app/ActivityManager;

.field protected mBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field protected mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

.field private final mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

.field protected final mContext:Landroid/content/Context;

.field protected final mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private final mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field protected final mKeysKeptForRemoteInputHistory:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mLifetimeExtenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationLifetimeExtender;",
            ">;"
        }
    .end annotation
.end field

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private final mLogger:Lcom/android/systemui/statusbar/ActionClickLogger;

.field private final mMainHandler:Landroid/os/Handler;

.field protected mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

.field protected mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

.field private final mRemoteInputUriController:Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

.field private final mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

.field private final mStatusBarLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;"
        }
    .end annotation
.end field

.field private final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static synthetic $r8$lambda$-7LnJXntZHs9yYq4QY-sKOkepaU(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/CharSequence;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->lambda$setUpWithCallback$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static synthetic $r8$lambda$1lQmmkLCdMRArSmHYEkci5iTE6c(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->lambda$releaseNotificationIfKeptForRemoteInputHistory$3(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$6N6ys8fVnrCiZL25nIsKGt7mALE(Landroid/os/Parcelable;)Landroid/app/RemoteInputHistoryItem;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->lambda$rebuildNotificationWithRemoteInputInserted$4(Landroid/os/Parcelable;)Landroid/app/RemoteInputHistoryItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$HZQUztBFacAKHfEi-NhnLsurOy8(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->lambda$activateRemoteInput$1(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;)V

    return-void
.end method

.method public static synthetic $r8$lambda$RlamdW66f6MNymANv5d773hPbO4(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;Landroid/view/View;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->lambda$activateRemoteInput$2(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;Landroid/view/View;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TMtOknh26wMUY3oVYL5xXRd1xx4(I)[Landroid/app/RemoteInputHistoryItem;
    .locals 0

    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->lambda$rebuildNotificationWithRemoteInputInserted$5(I)[Landroid/app/RemoteInputHistoryItem;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "debug.enable_remote_input"

    const/4 v1, 0x1

    .line 94
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->ENABLE_REMOTE_INPUT:Z

    const-string v0, "debug.force_remoteinput_history"

    const/4 v1, 0x0

    .line 96
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/SmartReplyController;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Ldagger/Lazy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Landroid/os/Handler;Lcom/android/systemui/statusbar/policy/RemoteInputUriController;Lcom/android/systemui/statusbar/NotificationClickNotifier;Lcom/android/systemui/statusbar/ActionClickLogger;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;",
            "Lcom/android/systemui/statusbar/SmartReplyController;",
            "Lcom/android/systemui/statusbar/notification/NotificationEntryManager;",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/phone/StatusBar;",
            ">;",
            "Lcom/android/systemui/plugins/statusbar/StatusBarStateController;",
            "Landroid/os/Handler;",
            "Lcom/android/systemui/statusbar/policy/RemoteInputUriController;",
            "Lcom/android/systemui/statusbar/NotificationClickNotifier;",
            "Lcom/android/systemui/statusbar/ActionClickLogger;",
            ")V"
        }
    .end annotation

    .line 318
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeysKeptForRemoteInputHistory:Landroid/util/ArraySet;

    .line 119
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;

    .line 144
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLifetimeExtenders:Ljava/util/ArrayList;

    .line 146
    new-instance v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$1;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    .line 319
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mContext:Landroid/content/Context;

    .line 320
    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 321
    iput-object p3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    .line 322
    iput-object p4, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    .line 323
    iput-object p5, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mStatusBarLazy:Ldagger/Lazy;

    .line 324
    iput-object p7, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mMainHandler:Landroid/os/Handler;

    .line 325
    iput-object p10, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLogger:Lcom/android/systemui/statusbar/ActionClickLogger;

    const-string/jumbo p2, "statusbar"

    .line 327
    invoke-static {p2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p2

    .line 326
    invoke-static {p2}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object p2

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const-string/jumbo p2, "user"

    .line 328
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mUserManager:Landroid/os/UserManager;

    const-string p2, "activity"

    .line 329
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mActivityManager:Landroid/app/ActivityManager;

    .line 330
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->addLifetimeExtenders()V

    .line 331
    const-class p2, Landroid/app/KeyguardManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 332
    iput-object p6, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 333
    iput-object p8, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputUriController:Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

    .line 334
    iput-object p9, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    .line 336
    new-instance p1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$2;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->addNotificationEntryListener(Lcom/android/systemui/statusbar/notification/NotificationEntryListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Ldagger/Lazy;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mStatusBarLazy:Ldagger/Lazy;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/ActionClickLogger;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLogger:Lcom/android/systemui/statusbar/ActionClickLogger;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/NotificationClickNotifier;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mClickNotifier:Lcom/android/systemui/statusbar/NotificationClickNotifier;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->releaseNotificationIfKeptForRemoteInputHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Lcom/android/systemui/statusbar/SmartReplyController;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Landroid/os/Handler;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private findRemoteInputView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 597
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;->VIEW_TAG:Ljava/lang/Object;

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/RemoteInputView;

    return-object p0
.end method

.method private synthetic lambda$activateRemoteInput$1(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;)V
    .locals 0

    .line 486
    invoke-virtual/range {p0 .. p7}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;)Z

    return-void
.end method

.method private synthetic lambda$activateRemoteInput$2(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;Landroid/view/View;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 0

    .line 528
    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;->canSendRemoteInputWithoutBouncer()Z

    move-result p1

    if-nez p1, :cond_0

    .line 529
    invoke-direct {p0, p2, p3, p4}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->showBouncerForRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$rebuildNotificationWithRemoteInputInserted$4(Landroid/os/Parcelable;)Landroid/app/RemoteInputHistoryItem;
    .locals 0

    .line 711
    check-cast p0, Landroid/app/RemoteInputHistoryItem;

    return-object p0
.end method

.method private static synthetic lambda$rebuildNotificationWithRemoteInputInserted$5(I)[Landroid/app/RemoteInputHistoryItem;
    .locals 0

    .line 712
    new-array p0, p0, [Landroid/app/RemoteInputHistoryItem;

    return-object p0
.end method

.method private synthetic lambda$releaseNotificationIfKeptForRemoteInputHistory$3(Ljava/lang/String;)V
    .locals 1

    .line 666
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->isNotificationKeptForRemoteInputHistory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 667
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;->onSafeToRemove(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$setUpWithCallback$0(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/CharSequence;)V
    .locals 6

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 403
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->rebuildNotificationWithRemoteInputInserted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/CharSequence;ZLjava/lang/String;Landroid/net/Uri;)Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 405
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->updateNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    return-void
.end method

.method private releaseNotificationIfKeptForRemoteInputHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 663
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 664
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->isNotificationKeptForRemoteInputHistory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 665
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Ljava/lang/String;)V

    const-wide/16 p0, 0xc8

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method

.method private showBouncerForRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z
    .locals 5

    .line 551
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->shouldAllowLockscreenRemoteInput()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 555
    :cond_0
    invoke-virtual {p2}, Landroid/app/PendingIntent;->getCreatorUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 557
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mUserManager:Landroid/os/UserManager;

    .line 558
    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 559
    invoke-virtual {v0, p2}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 563
    iget-object v3, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3, p2}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 564
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 565
    invoke-virtual {v4, v3}, Landroid/app/KeyguardManager;->isDeviceLocked(I)Z

    move-result v3

    if-eqz v3, :cond_2

    move v3, v2

    goto :goto_1

    :cond_2
    move v3, v1

    .line 570
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {v4, p2}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result v4

    if-nez v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 571
    invoke-interface {v4}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    move-result v4

    if-ne v4, v2, :cond_3

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    .line 587
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    invoke-interface {p0, p2, p3, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;)V

    return v2

    :cond_4
    return v1

    :cond_5
    :goto_2
    if-eqz v0, :cond_6

    if-nez v3, :cond_6

    .line 578
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    invoke-interface {p0, p2, p3, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->onLockedWorkRemoteInput(ILcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;)V

    goto :goto_3

    .line 582
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    invoke-interface {p0, p3, p1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->onLockedRemoteInput(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;)V

    :goto_3
    return v2
.end method


# virtual methods
.method public activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)Z
    .locals 8

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 422
    invoke-virtual/range {v0 .. v7}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;)Z

    move-result p0

    return p0
.end method

.method public activateRemoteInput(Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;)Z
    .locals 15

    move-object v1, p0

    move-object/from16 v9, p1

    move-object/from16 v5, p4

    move-object/from16 v7, p6

    .line 444
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 448
    instance-of v3, v0, Landroid/view/View;

    if-eqz v3, :cond_0

    .line 449
    move-object v3, v0

    check-cast v3, Landroid/view/View;

    .line 450
    invoke-virtual {v3}, Landroid/view/View;->isRootNamespace()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 451
    invoke-direct {p0, v3}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->findRemoteInputView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    .line 452
    sget v4, Lcom/android/systemui/R$id;->row_tag_for_content_view:I

    invoke-virtual {v3, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object v10, v3

    goto :goto_1

    .line 456
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v2

    move-object v10, v0

    :goto_1
    const/4 v3, 0x0

    if-nez v10, :cond_2

    return v3

    :cond_2
    const/4 v11, 0x1

    .line 463
    invoke-virtual {v10, v11}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setUserExpanded(Z)V

    if-eqz p7, :cond_3

    move v12, v11

    goto :goto_2

    :cond_3
    move v12, v3

    :goto_2
    if-nez v12, :cond_4

    .line 466
    invoke-direct {p0, v9, v5, v10}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->showBouncerForRemoteInput(Landroid/view/View;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Z

    move-result v4

    if-eqz v4, :cond_4

    return v11

    :cond_4
    if-eqz v0, :cond_5

    .line 470
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v4

    if-nez v4, :cond_5

    goto :goto_3

    :cond_5
    move-object v2, v0

    :goto_3
    if-nez v2, :cond_6

    .line 476
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->findRemoteInputView(Landroid/view/View;)Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v2

    if-nez v2, :cond_6

    return v3

    :cond_6
    move-object v6, v2

    .line 481
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedRemoteInput()Lcom/android/systemui/statusbar/policy/RemoteInputView;

    move-result-object v0

    if-ne v6, v0, :cond_7

    .line 482
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getPrivateLayout()Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getExpandedChild()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_7

    .line 485
    iget-object v13, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    new-instance v14, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda2;

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Landroid/view/View;[Landroid/app/RemoteInput;Landroid/app/RemoteInput;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;Ljava/lang/String;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;)V

    invoke-interface {v13, v10, v9, v12, v14}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;->onMakeExpandedVisibleForRemoteInput(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;ZLjava/lang/Runnable;)V

    return v11

    .line 492
    :cond_7
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_8

    return v3

    .line 496
    :cond_8
    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_APPLOCK:Z

    if-eqz v0, :cond_9

    .line 497
    iget-object v0, v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual/range {p4 .. p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/ActivityManager;->isAppLockedPackage(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 498
    invoke-virtual/range {p4 .. p4}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->startAppLockCheckService(Ljava/lang/String;)V

    .line 501
    :cond_9
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 502
    instance-of v2, v9, Landroid/widget/TextView;

    if-eqz v2, :cond_a

    .line 504
    move-object v2, v9

    check-cast v2, Landroid/widget/TextView;

    .line 505
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    if-eqz v4, :cond_a

    .line 506
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    float-to-int v3, v3

    .line 507
    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v4

    invoke-virtual {v2}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v2

    add-int/2addr v4, v2

    add-int/2addr v3, v4

    .line 508
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 511
    :cond_a
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getLeft()I

    move-result v2

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v2, v0

    .line 512
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTop()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v0, v3

    .line 513
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v3

    .line 514
    invoke-virtual {v6}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v4

    add-int v8, v2, v0

    sub-int/2addr v4, v0

    add-int v13, v2, v4

    .line 516
    invoke-static {v8, v13}, Ljava/lang/Math;->max(II)I

    move-result v8

    sub-int/2addr v3, v2

    add-int v13, v3, v0

    add-int/2addr v3, v4

    .line 517
    invoke-static {v13, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 515
    invoke-static {v8, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 519
    invoke-virtual {v6, v2, v0, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRevealParameters(III)V

    .line 520
    invoke-virtual {v6, v5}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setPendingIntent(Landroid/app/PendingIntent;)V

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 521
    invoke-virtual {v6, v0, v2, v3}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setRemoteInput([Landroid/app/RemoteInput;Landroid/app/RemoteInput;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;)V

    .line 522
    invoke-virtual {v6}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->focusAnimated()V

    if-eqz v7, :cond_b

    .line 524
    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setEditTextContent(Ljava/lang/CharSequence;)V

    :cond_b
    if-eqz v12, :cond_c

    .line 528
    new-instance v7, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;

    move-object v0, v7

    move-object v1, p0

    move-object/from16 v2, p7

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object v5, v10

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;Lcom/android/systemui/statusbar/NotificationRemoteInputManager$AuthBypassPredicate;Landroid/view/View;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/policy/RemoteInputView;->setBouncerChecker(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$BouncerChecker;)V

    :cond_c
    return v11
.end method

.method protected addLifetimeExtenders()V
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLifetimeExtenders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputHistoryExtender;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputHistoryExtender;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 606
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLifetimeExtenders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$SmartReplyHistoryExtender;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$SmartReplyHistoryExtender;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 607
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLifetimeExtenders:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputActiveExtender;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputActiveExtender;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public bindRow(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    .line 749
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setRemoteInputController(Lcom/android/systemui/statusbar/RemoteInputController;)V

    return-void
.end method

.method public checkRemoteInputOutside(Landroid/view/MotionEvent;)V
    .locals 2

    .line 681
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 682
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpl-float p1, p1, v1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 683
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 684
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/RemoteInputController;->closeRemoteInputs()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    const-string p1, "NotificationRemoteInputManager state:"

    .line 741
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p1, "  mKeysKeptForRemoteInputHistory: "

    .line 742
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 743
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeysKeptForRemoteInputHistory:Landroid/util/ArraySet;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string p1, "  mEntriesKeptForRemoteInputActive: "

    .line 744
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 745
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method public getController()Lcom/android/systemui/statusbar/RemoteInputController;
    .locals 0

    .line 616
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    return-object p0
.end method

.method public getEntriesKeptForRemoteInputActive()Ljava/util/Set;
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation

    .line 763
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;

    return-object p0
.end method

.method public getLifetimeExtenders()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/NotificationLifetimeExtender;",
            ">;"
        }
    .end annotation

    .line 611
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mLifetimeExtenders:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getRemoteViewsOnClickHandler()Landroid/widget/RemoteViews$InteractionHandler;
    .locals 0

    .line 758
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mInteractionHandler:Landroid/widget/RemoteViews$InteractionHandler;

    return-object p0
.end method

.method public isNotificationKeptForRemoteInputHistory(Ljava/lang/String;)Z
    .locals 0

    .line 642
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeysKeptForRemoteInputHistory:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onPanelCollapsed()V
    .locals 4

    const/4 v0, 0x0

    .line 631
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 633
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/statusbar/RemoteInputController;->removeRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)V

    .line 634
    iget-object v2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    if-eqz v2, :cond_0

    .line 635
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;->onSafeToRemove(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 638
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method onPerformRemoveNotification(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/String;)V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 621
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeysKeptForRemoteInputHistory:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 622
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mKeysKeptForRemoteInputHistory:Landroid/util/ArraySet;

    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 624
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/RemoteInputController;->isRemoteInputActive(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 625
    iput-boolean p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mRemoteEditImeVisible:Z

    .line 626
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/RemoteInputController;->removeRemoteInput(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method rebuildNotificationForCanceledSmartReplies(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Landroid/service/notification/StatusBarNotification;
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 691
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->rebuildNotificationWithRemoteInputInserted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/CharSequence;ZLjava/lang/String;Landroid/net/Uri;)Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    return-object p0
.end method

.method rebuildNotificationWithRemoteInputInserted(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/CharSequence;ZLjava/lang/String;Landroid/net/Uri;)Landroid/service/notification/StatusBarNotification;
    .locals 17
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v0, p2

    move-object/from16 v1, p5

    .line 698
    invoke-virtual/range {p1 .. p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    move-object/from16 v3, p0

    .line 700
    iget-object v3, v3, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mContext:Landroid/content/Context;

    .line 701
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/app/Notification$Builder;->recoverBuilder(Landroid/content/Context;Landroid/app/Notification;)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v0, :cond_1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    :goto_0
    move/from16 v0, p3

    goto :goto_4

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    .line 704
    new-instance v5, Landroid/app/RemoteInputHistoryItem;

    move-object/from16 v6, p4

    invoke-direct {v5, v6, v1, v0}, Landroid/app/RemoteInputHistoryItem;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 705
    :cond_2
    new-instance v5, Landroid/app/RemoteInputHistoryItem;

    invoke-direct {v5, v0}, Landroid/app/RemoteInputHistoryItem;-><init>(Ljava/lang/CharSequence;)V

    .line 706
    :goto_2
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v1, "android.remoteInputHistoryItems"

    .line 707
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 710
    invoke-static {v5}, Ljava/util/stream/Stream;->of(Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 711
    invoke-static {v0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v5, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda4;->INSTANCE:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda4;

    invoke-interface {v0, v5}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 709
    invoke-static {v1, v0}, Ljava/util/stream/Stream;->concat(Ljava/util/stream/Stream;Ljava/util/stream/Stream;)Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda5;->INSTANCE:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda5;

    .line 712
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/app/RemoteInputHistoryItem;

    goto :goto_3

    :cond_3
    new-array v0, v4, [Landroid/app/RemoteInputHistoryItem;

    const/4 v1, 0x0

    aput-object v5, v0, v1

    .line 714
    :goto_3
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setRemoteInputHistory([Landroid/app/RemoteInputHistoryItem;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 716
    :goto_4
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setShowRemoteInputSpinner(Z)Landroid/app/Notification$Builder;

    .line 717
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setHideSmartReplies(Z)Landroid/app/Notification$Builder;

    .line 719
    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v12

    .line 722
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object v0, v12, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    .line 723
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    iput-object v0, v12, Landroid/app/Notification;->bigContentView:Landroid/widget/RemoteViews;

    .line 724
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    iput-object v0, v12, Landroid/app/Notification;->headsUpContentView:Landroid/widget/RemoteViews;

    .line 726
    new-instance v0, Landroid/service/notification/StatusBarNotification;

    .line 727
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 728
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v7

    .line 729
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v8

    .line 730
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v9

    .line 731
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v10

    .line 732
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v11

    .line 734
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v13

    .line 735
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v14

    .line 736
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v15

    move-object v5, v0

    invoke-direct/range {v5 .. v16}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    return-object v0
.end method

.method public setUpWithCallback(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;Lcom/android/systemui/statusbar/RemoteInputController$Delegate;)V
    .locals 1

    .line 362
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mCallback:Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;

    .line 363
    new-instance p1, Lcom/android/systemui/statusbar/RemoteInputController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputUriController:Lcom/android/systemui/statusbar/policy/RemoteInputUriController;

    invoke-direct {p1, p2, v0}, Lcom/android/systemui/statusbar/RemoteInputController;-><init>(Lcom/android/systemui/statusbar/RemoteInputController$Delegate;Lcom/android/systemui/statusbar/policy/RemoteInputUriController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    .line 364
    new-instance p2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/RemoteInputController;->addCallback(Lcom/android/systemui/statusbar/RemoteInputController$Callback;)V

    .line 401
    iget-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    new-instance p2, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/SmartReplyController;->setCallback(Lcom/android/systemui/statusbar/SmartReplyController$Callback;)V

    return-void
.end method

.method public shouldKeepForRemoteInputHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    .line 646
    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 649
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mRemoteInputController:Lcom/android/systemui/statusbar/RemoteInputController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/RemoteInputController;->isSpinning(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 650
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->hasJustSentRemoteInput()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public shouldKeepForSmartReplyHistory(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 674
    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 677
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mSmartReplyController:Lcom/android/systemui/statusbar/SmartReplyController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/SmartReplyController;->isSendingSmartReply(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public startAppLockCheckService(Ljava/lang/String;)V
    .locals 4

    .line 536
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.intent.action.CHECK_APPLOCK_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.samsung.android.applock"

    .line 537
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 538
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 539
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x80000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const-string v2, "LOCKED_PACKAGE_WINDOW_ATTRIBUTES"

    .line 540
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "LAUNCH_FROM_RESUME"

    const/4 v2, 0x1

    .line 541
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "LOCKED_APP_CAN_SHOW_WHEN_LOCKED"

    .line 542
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "LOCKED_PACKAGE_NAME"

    .line 543
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "startFromNotification"

    .line 544
    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p1, "LOCKED_PACKAGE_DISPLAYID"

    const/4 v1, 0x0

    .line 545
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 546
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method
