.class public Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;
.super Ljava/lang/Object;
.source "KnoxNotificationFilter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$Companion;
    }
.end annotation


# static fields
.field private static final CONTAINER_NO_SANITIZING:I

.field public static final Companion:Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final NO_SANITIZING:I

.field private static final OWNER:I

.field private static final SANITIZING_AND_COLLAPSE:I


# instance fields
.field private final KNOX_DEBUG:Z

.field private final KNOX_TAG:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final mNotificationRowBinder$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final notificationRowBinderLazy:Ldagger/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->Companion:Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$Companion;

    const/4 v1, 0x1

    .line 48
    sput v1, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->OWNER:I

    const/4 v1, 0x2

    .line 49
    sput v1, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->CONTAINER_NO_SANITIZING:I

    .line 50
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$Companion;->getOWNER()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$Companion;->getCONTAINER_NO_SANITIZING()I

    move-result v0

    or-int/2addr v0, v1

    sput v0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->NO_SANITIZING:I

    const/16 v0, 0x8

    .line 51
    sput v0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->SANITIZING_AND_COLLAPSE:I

    return-void
.end method

.method public constructor <init>(Ldagger/Lazy;Landroid/content/Context;Lcom/android/systemui/knox/KnoxStateMonitor;)V
    .locals 1
    .param p1    # Ldagger/Lazy;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/knox/KnoxStateMonitor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldagger/Lazy<",
            "Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;",
            ">;",
            "Landroid/content/Context;",
            "Lcom/android/systemui/knox/KnoxStateMonitor;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "notificationRowBinderLazy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "knoxStateMonitor"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->notificationRowBinderLazy:Ldagger/Lazy;

    const-string/jumbo p1, "ro.build.type"

    .line 35
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "eng"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->KNOX_DEBUG:Z

    const-string p1, "KnoxNotification"

    .line 36
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->KNOX_TAG:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->mContext:Landroid/content/Context;

    .line 38
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 39
    new-instance p1, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$mNotificationRowBinder$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$mNotificationRowBinder$2;-><init>(Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->mNotificationRowBinder$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getCONTAINER_NO_SANITIZING$cp()I
    .locals 1

    .line 28
    sget v0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->CONTAINER_NO_SANITIZING:I

    return v0
.end method

.method public static final synthetic access$getNO_SANITIZING$cp()I
    .locals 1

    .line 28
    sget v0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->NO_SANITIZING:I

    return v0
.end method

.method public static final synthetic access$getNotificationRowBinderLazy$p(Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;)Ldagger/Lazy;
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->notificationRowBinderLazy:Ldagger/Lazy;

    return-object p0
.end method

.method public static final synthetic access$getOWNER$cp()I
    .locals 1

    .line 28
    sget v0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->OWNER:I

    return v0
.end method

.method public static final synthetic access$getSANITIZING_AND_COLLAPSE$cp()I
    .locals 1

    .line 28
    sget v0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->SANITIZING_AND_COLLAPSE:I

    return v0
.end method

.method private final getMNotificationRowBinder()Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->mNotificationRowBinder$delegate:Lkotlin/Lazy;

    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;

    return-object p0
.end method


# virtual methods
.method public final filterOutForKnoxContainer(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 10
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 64
    const-class v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    :goto_0
    const/4 v3, 0x0

    if-nez v2, :cond_1

    return v3

    .line 65
    :cond_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    const-string v4, "entry.sbn"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    .line 67
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 69
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v6, v4}, Lcom/android/systemui/knox/KnoxStateMonitor;->isPersona(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 74
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    .line 75
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 77
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    .line 78
    invoke-interface {v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result v0

    .line 76
    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result p1

    .line 74
    invoke-interface {p0, v4, v5, p1}, Lcom/android/systemui/knox/KnoxStateMonitor;->filterOutForKnoxContainer(ILjava/lang/String;Z)Z

    move-result p0

    return p0

    .line 85
    :cond_2
    invoke-static {v4}, Lcom/samsung/android/knox/SemPersonaManager;->isKnoxId(I)Z

    move-result v0

    const/4 v6, 0x1

    if-eqz v0, :cond_3

    .line 86
    const-class v0, Lcom/android/systemui/util/SettingsHelper;

    .line 87
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/util/SettingsHelper;

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, "KnoxNotificationFilter"

    const-string p1, "emergency enabled! Skip showing Knox notifications"

    .line 88
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v6

    .line 94
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0, v4}, Lcom/android/systemui/knox/KnoxStateMonitor;->knoxContainerInSuperLockMode(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->mKnoxStateMonitor:Lcom/android/systemui/knox/KnoxStateMonitor;

    invoke-interface {v0, v4}, Lcom/android/systemui/knox/KnoxStateMonitor;->isPersona(I)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v5, :cond_4

    const-string v0, "com.android.settings"

    .line 96
    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto/16 :goto_3

    .line 99
    :cond_4
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->getMNotificationRowBinder()Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/notification/collection/inflation/NotificationRowBinder;->getNotificationClicker()Lcom/android/systemui/statusbar/notification/NotificationClicker;

    move-result-object v0

    const-string v5, "mNotificationRowBinder.getNotificationClicker()"

    invoke-static {v0, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    sget-object v5, Lcom/android/systemui/statusbar/notification/KnoxNotificationDependency;->INSTANCE:Lcom/android/systemui/statusbar/notification/KnoxNotificationDependency;

    invoke-virtual {v5, p1, v3}, Lcom/android/systemui/statusbar/notification/KnoxNotificationDependency;->isKnoxNotificationSanitizeNeeded(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 101
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKnoxNotificationData()Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;

    move-result-object v1

    .line 102
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKnoxNotificationData()Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->getSanitizing()I

    move-result v7

    sget-object v8, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->Companion:Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$Companion;

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$Companion;->getSANITIZING_AND_COLLAPSE()I

    move-result v9

    or-int/2addr v7, v9

    .line 101
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->setSanitizing(I)V

    .line 103
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKnoxNotificationData()Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;

    move-result-object v1

    .line 104
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKnoxNotificationData()Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->getSanitizing()I

    move-result v7

    invoke-virtual {v8}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$Companion;->getNO_SANITIZING()I

    move-result v8

    not-int v8, v8

    and-int/2addr v7, v8

    .line 103
    invoke-virtual {v1, v7}, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->setSanitizing(I)V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x7c

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 106
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/KnoxNotificationDependency;->getMSanitizingToCollapse()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 107
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v7

    if-nez v7, :cond_7

    if-nez v2, :cond_5

    .line 111
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/KnoxNotificationDependency;->getMSanitizingToCollapse()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 113
    :cond_5
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    return v6

    .line 125
    :cond_7
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v1, :cond_a

    .line 126
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKnoxNotificationData()Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->isSanitizedPendingIntent()Z

    move-result v1

    if-nez v1, :cond_a

    .line 127
    invoke-virtual {p0, p1, v4}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->sanitizePendingIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Landroid/app/PendingIntent;

    move-result-object p0

    .line 129
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iput-object p0, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 130
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationClicker;->register(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    goto :goto_2

    .line 133
    :cond_8
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKnoxNotificationData()Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->isSanitizedPendingIntent()Z

    move-result p0

    if-eqz p0, :cond_9

    .line 134
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iput-object v1, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    .line 135
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKnoxNotificationData()Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->setSanitizedPendingIntent(Z)V

    .line 136
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationClicker;->register(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/service/notification/StatusBarNotification;)V

    .line 138
    :cond_9
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKnoxNotificationData()Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;

    move-result-object p0

    .line 139
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKnoxNotificationData()Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->getSanitizing()I

    move-result v0

    sget-object v1, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->Companion:Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$Companion;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$Companion;->getNO_SANITIZING()I

    move-result v2

    or-int/2addr v0, v2

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->setSanitizing(I)V

    .line 140
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKnoxNotificationData()Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;

    move-result-object p0

    .line 141
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKnoxNotificationData()Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->getSanitizing()I

    move-result p1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$Companion;->getSANITIZING_AND_COLLAPSE()I

    move-result v0

    not-int v0, v0

    and-int/2addr p1, v0

    .line 140
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->setSanitizing(I)V

    :cond_a
    :goto_2
    return v3

    :cond_b
    :goto_3
    return v6
.end method

.method public final removePackageFromSanitized(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string/jumbo p0, "mapKey"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 197
    sget-object p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationDependency;->INSTANCE:Lcom/android/systemui/statusbar/notification/KnoxNotificationDependency;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/KnoxNotificationDependency;->getMSanitizingToCollapse()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final sanitizePendingIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)Landroid/app/PendingIntent;
    .locals 9
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "entry"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->KNOX_DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->KNOX_TAG:Ljava/lang/String;

    const-string v1, "----- Inside sanitizePendingIntent -----"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    move v3, v1

    goto :goto_2

    .line 160
    :cond_2
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 161
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, v4}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    move v3, v2

    goto :goto_2

    .line 162
    :cond_4
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->KNOX_DEBUG:Z

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->KNOX_TAG:Ljava/lang/String;

    const-string v4, "----- sanitizePendingIntent : innerIntent null or filterEquals -----"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->KNOX_DEBUG:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->KNOX_TAG:Ljava/lang/String;

    .line 168
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v6, "----- sanitizePendingIntent : isSanitizeRequired - "

    .line 167
    invoke-static {v6, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    if-eqz v3, :cond_8

    if-eqz v0, :cond_6

    .line 170
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_6
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 171
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 172
    :goto_3
    new-instance v5, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v5, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "android.intent.category.LAUNCHER"

    .line 173
    invoke-virtual {v5, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 175
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v5, v2, p2}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    const-string v6, "mContext.getPackageManager().queryIntentActivitiesAsUser(\n                    `in`, 0,\n                    userId)"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7

    .line 179
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v5, v0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 180
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    const/high16 v6, 0xc000000

    const/4 v7, 0x0

    .line 181
    new-instance v8, Landroid/os/UserHandle;

    invoke-direct {v8, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 180
    invoke-static/range {v3 .. v8}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p2

    goto :goto_4

    .line 183
    :cond_7
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    .line 184
    invoke-virtual {v4, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x10000000

    .line 185
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 186
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0xc000000

    const/4 v6, 0x0

    .line 187
    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p2}, Landroid/os/UserHandle;-><init>(I)V

    .line 186
    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object p2

    :goto_4
    move-object v0, p2

    .line 189
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKnoxNotificationData()Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->setSanitizedPendingIntent(Z)V

    .line 192
    :cond_8
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->KNOX_DEBUG:Z

    if-eqz p1, :cond_9

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->KNOX_TAG:Ljava/lang/String;

    const-string p1, "----- sanitizePendingIntent : sanitized - "

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-object v0
.end method

.method public final setEntrySanitize(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZLcom/android/systemui/statusbar/NotificationLockscreenUserManager;)V
    .locals 3
    .param p1    # Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p0, "ent"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "mLockscreenUserManager"

    invoke-static {p5, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKnoxNotificationData()Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->getSanitizing()I

    move-result p0

    sget-object v0, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter;->Companion:Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$Companion;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/KnoxNotificationFilter$Companion;->getSANITIZING_AND_COLLAPSE()I

    move-result v0

    and-int/2addr p0, v0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 203
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    if-nez p2, :cond_2

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    move p2, v0

    goto :goto_2

    :cond_2
    :goto_1
    move p2, v1

    :goto_2
    invoke-virtual {v2, p2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setNeedsRedaction(Z)V

    if-eqz p0, :cond_3

    .line 205
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIsSanitized(Z)V

    .line 206
    invoke-virtual {p1, v1, p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setSensitive(ZZ)V

    goto :goto_3

    .line 208
    :cond_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setIsSanitized(Z)V

    .line 209
    invoke-virtual {p1, p4, p3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->setSensitive(ZZ)V

    .line 211
    :goto_3
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKnoxNotificationData()Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;

    move-result-object p0

    .line 212
    invoke-interface {p5}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->getCurrentUserId()I

    move-result p1

    .line 211
    invoke-interface {p5, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isLockscreenPublicMode(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/KnoxNotificationData;->setHideUnlocked(Z)V

    return-void
.end method
