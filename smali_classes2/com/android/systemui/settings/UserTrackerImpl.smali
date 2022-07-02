.class public final Lcom/android/systemui/settings/UserTrackerImpl;
.super Landroid/content/BroadcastReceiver;
.source "UserTrackerImpl.kt"

# interfaces
.implements Lcom/android/systemui/settings/UserTracker;
.implements Lcom/android/systemui/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/UserTrackerImpl$Companion;,
        Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nUserTrackerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 UserTrackerImpl.kt\ncom/android/systemui/settings/UserTrackerImpl\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,255:1\n199#1,4:262\n203#1,6:267\n209#1:274\n199#1,4:279\n203#1,6:284\n209#1:291\n221#2,2:256\n1517#2:258\n1588#2,3:259\n1819#2:266\n1820#2:273\n1517#2:275\n1588#2,3:276\n1819#2:283\n1820#2:290\n1819#2,2:292\n1517#2:294\n1588#2,3:295\n1819#2,2:298\n*E\n*S KotlinDebug\n*F\n+ 1 UserTrackerImpl.kt\ncom/android/systemui/settings/UserTrackerImpl\n*L\n167#1,4:262\n167#1,6:267\n167#1:274\n181#1,4:279\n181#1,6:284\n181#1:291\n89#1,2:256\n149#1:258\n149#1,3:259\n167#1:266\n167#1:273\n179#1:275\n179#1,3:276\n181#1:283\n181#1:290\n202#1,2:292\n215#1:294\n215#1,3:295\n222#1,2:298\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final Companion:Lcom/android/systemui/settings/UserTrackerImpl$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private final backgroundHandler:Landroid/os/Handler;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/systemui/settings/DataItem;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final context:Landroid/content/Context;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final dumpManager:Lcom/android/systemui/dump/DumpManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private initialized:Z

.field private final mutex:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userContext$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userHandle$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userId$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userManager:Landroid/os/UserManager;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final userProfiles$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/settings/UserTrackerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/settings/UserTrackerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/settings/UserTrackerImpl;->Companion:Lcom/android/systemui/settings/UserTrackerImpl$Companion;

    const/4 v0, 0x4

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    .line 74
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "userId"

    const-string v4, "getUserId()I"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 77
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "userHandle"

    const-string v4, "getUserHandle()Landroid/os/UserHandle;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 80
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "userContext"

    const-string v4, "getUserContext()Landroid/content/Context;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 98
    new-instance v1, Lkotlin/jvm/internal/MutablePropertyReference1Impl;

    const-class v2, Lcom/android/systemui/settings/UserTrackerImpl;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/reflect/KClass;

    move-result-object v2

    const-string/jumbo v3, "userProfiles"

    const-string v4, "getUserProfiles()Ljava/util/List;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/MutablePropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->mutableProperty1(Lkotlin/jvm/internal/MutablePropertyReference1;)Lkotlin/reflect/KMutableProperty1;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/os/UserManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Lcom/android/systemui/dump/DumpManager;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/os/Handler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "userManager"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dumpManager"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backgroundHandler"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->context:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userManager:Landroid/os/UserManager;

    .line 61
    iput-object p3, p0, Lcom/android/systemui/settings/UserTrackerImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 62
    iput-object p4, p0, Lcom/android/systemui/settings/UserTrackerImpl;->backgroundHandler:Landroid/os/Handler;

    .line 72
    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    .line 74
    new-instance p2, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userId$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 77
    new-instance p2, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    invoke-virtual {p1}, Landroid/content/Context;->getUser()Landroid/os/UserHandle;

    move-result-object p3

    const-string p4, "context.user"

    invoke-static {p3, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userHandle$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 80
    new-instance p2, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    invoke-direct {p2, p1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userContext$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 98
    new-instance p1, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    invoke-static {}, Lkotlin/collections/CollectionsKt;->emptyList()Ljava/util/List;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userProfiles$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    .line 102
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    return-void
.end method

.method public static final synthetic access$getCallbacks$p(Lcom/android/systemui/settings/UserTrackerImpl;)Ljava/util/List;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    return-object p0
.end method

.method public static final synthetic access$getMutex$p(Lcom/android/systemui/settings/UserTrackerImpl;)Ljava/lang/Object;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    return-object p0
.end method

.method private final handleProfilesChanged()V
    .locals 6

    .line 175
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string/jumbo v2, "profiles"

    .line 179
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1517
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v0, v3}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1589
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 179
    new-instance v5, Landroid/content/pm/UserInfo;

    invoke-direct {v5, v4}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    invoke-interface {v2, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/systemui/settings/UserTrackerImpl;->setUserProfiles(Ljava/util/List;)V

    .line 180
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 178
    monitor-exit v1

    .line 199
    invoke-static {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->access$getCallbacks$p(Lcom/android/systemui/settings/UserTrackerImpl;)Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 200
    :try_start_1
    invoke-static {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->access$getCallbacks$p(Lcom/android/systemui/settings/UserTrackerImpl;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    monitor-exit v1

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/DataItem;

    .line 203
    invoke-virtual {v1}, Lcom/android/systemui/settings/DataItem;->getCallback()Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 204
    invoke-virtual {v1}, Lcom/android/systemui/settings/DataItem;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;

    invoke-direct {v3, v1, v0}, Lcom/android/systemui/settings/UserTrackerImpl$handleProfilesChanged$$inlined$notifySubscribers$1;-><init>(Lcom/android/systemui/settings/DataItem;Ljava/util/List;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    .line 199
    monitor-exit v1

    throw p0

    :catchall_1
    move-exception p0

    .line 178
    monitor-exit v1

    throw p0
.end method

.method private final handleSwitchUser(I)V
    .locals 5

    .line 156
    invoke-static {}, Lcom/android/systemui/util/Assert;->isNotMainThread()V

    const/16 v0, -0x2710

    if-ne p1, v0, :cond_0

    const-string p0, "UserTrackerImpl"

    const-string p1, "handleSwitchUser - Couldn\'t get new id from intent"

    .line 158
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 162
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    if-ne p1, v0, :cond_1

    return-void

    :cond_1
    const-string v0, "UserTrackerImpl"

    const-string v1, "Switching to user "

    .line 163
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/UserTrackerImpl;->setUserIdInternal(I)Lkotlin/Pair;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v0}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 199
    invoke-static {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->access$getCallbacks$p(Lcom/android/systemui/settings/UserTrackerImpl;)Ljava/util/List;

    move-result-object v2

    monitor-enter v2

    .line 200
    :try_start_0
    invoke-static {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->access$getCallbacks$p(Lcom/android/systemui/settings/UserTrackerImpl;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 199
    monitor-exit v2

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/settings/DataItem;

    .line 203
    invoke-virtual {v2}, Lcom/android/systemui/settings/DataItem;->getCallback()Ljava/lang/ref/WeakReference;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 204
    invoke-virtual {v2}, Lcom/android/systemui/settings/DataItem;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/settings/UserTrackerImpl$handleSwitchUser$$inlined$notifySubscribers$1;

    invoke-direct {v4, v2, p1, v1, v0}, Lcom/android/systemui/settings/UserTrackerImpl$handleSwitchUser$$inlined$notifySubscribers$1;-><init>(Lcom/android/systemui/settings/DataItem;ILandroid/content/Context;Ljava/util/List;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 199
    monitor-exit v2

    throw p0
.end method

.method private setUserContext(Landroid/content/Context;)V
    .locals 3

    .line 80
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userContext$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    sget-object v1, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->setValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private setUserHandle(Landroid/os/UserHandle;)V
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userHandle$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    sget-object v1, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->setValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private setUserId(I)V
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userId$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    sget-object v1, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->setValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method

.method private final setUserIdInternal(I)Lkotlin/Pair;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lkotlin/Pair<",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;>;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 142
    new-instance v1, Landroid/os/UserHandle;

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 143
    iget-object v2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->context:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    move-result-object v2

    .line 145
    iget-object v3, p0, Lcom/android/systemui/settings/UserTrackerImpl;->mutex:Ljava/lang/Object;

    monitor-enter v3

    .line 146
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/UserTrackerImpl;->setUserId(I)V

    .line 147
    invoke-direct {p0, v1}, Lcom/android/systemui/settings/UserTrackerImpl;->setUserHandle(Landroid/os/UserHandle;)V

    const-string p1, "ctx"

    .line 148
    invoke-static {v2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v2}, Lcom/android/systemui/settings/UserTrackerImpl;->setUserContext(Landroid/content/Context;)V

    const-string/jumbo p1, "profiles"

    .line 149
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1517
    new-instance p1, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1589
    check-cast v4, Landroid/content/pm/UserInfo;

    .line 149
    new-instance v5, Landroid/content/pm/UserInfo;

    invoke-direct {v5, v4}, Landroid/content/pm/UserInfo;-><init>(Landroid/content/pm/UserInfo;)V

    invoke-interface {p1, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/UserTrackerImpl;->setUserProfiles(Ljava/util/List;)V

    .line 150
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    monitor-exit v3

    .line 151
    invoke-static {v2, v0}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 145
    monitor-exit v3

    throw p0
.end method

.method private setUserProfiles(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/UserInfo;",
            ">;)V"
        }
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userProfiles$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    sget-object v1, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1, p1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->setValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V
    .locals 3
    .param p1    # Lcom/android/systemui/settings/UserTracker$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/concurrent/Executor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "executor"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/settings/DataItem;

    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {v1, v2, p2}, Lcom/android/systemui/settings/DataItem;-><init>(Ljava/lang/ref/WeakReference;Ljava/util/concurrent/Executor;)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/io/FileDescriptor;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/PrintWriter;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # [Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "fd"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p1, "pw"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "args"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "Initialized: "

    .line 212
    iget-boolean p3, p0, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 213
    iget-boolean p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    if-eqz p1, :cond_1

    const-string/jumbo p1, "userId: "

    .line 214
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object p1

    .line 1517
    new-instance p3, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-static {p1, v0}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v0

    invoke-direct {p3, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1588
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1589
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 215
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "userProfiles: "

    .line 216
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 218
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    monitor-enter p1

    .line 219
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    invoke-static {p0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    monitor-exit p1

    const-string p1, "Callbacks:"

    .line 221
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1819
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/DataItem;

    .line 223
    invoke-virtual {p1}, Lcom/android/systemui/settings/DataItem;->getCallback()Ljava/lang/ref/WeakReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/settings/UserTracker$Callback;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p3, "  "

    .line 224
    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void

    :catchall_0
    move-exception p0

    .line 218
    monitor-exit p1

    throw p0
.end method

.method public final getInitialized()Z
    .locals 0

    .line 69
    iget-boolean p0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    return p0
.end method

.method public getUserContext()Landroid/content/Context;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userContext$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    sget-object v1, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->getValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    return-object p0
.end method

.method public getUserHandle()Landroid/os/UserHandle;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userHandle$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    sget-object v1, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->getValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserHandle;

    return-object p0
.end method

.method public getUserId()I
    .locals 3

    .line 74
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userId$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    sget-object v1, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->getValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public getUserInfo()Landroid/content/pm/UserInfo;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    move-result v0

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    move-result-object p0

    .line 221
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 89
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, v0, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_0

    return-object v1

    .line 222
    :cond_2
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string v0, "Collection contains no element matching the predicate."

    invoke-direct {p0, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getUserProfiles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 98
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->userProfiles$delegate:Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;

    sget-object v1, Lcom/android/systemui/settings/UserTrackerImpl;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/settings/UserTrackerImpl$SynchronizedDelegate;->getValue(Lcom/android/systemui/settings/UserTrackerImpl;Lkotlin/reflect/KProperty;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final initialize(I)V
    .locals 3

    .line 105
    iget-boolean v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->initialized:Z

    .line 109
    invoke-direct {p0, p1}, Lcom/android/systemui/settings/UserTrackerImpl;->setUserIdInternal(I)Lkotlin/Pair;

    .line 111
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 114
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 119
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->context:Landroid/content/Context;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/systemui/settings/UserTrackerImpl;->backgroundHandler:Landroid/os/Handler;

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 121
    iget-object p1, p0, Lcom/android/systemui/settings/UserTrackerImpl;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    const-string v0, "UserTrackerImpl"

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 p1, -0x2710

    const-string v0, "android.intent.extra.user_handle"

    .line 127
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/settings/UserTrackerImpl;->handleSwitchUser(I)V

    goto :goto_0

    :sswitch_1
    const-string p2, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string p1, "UserTrackerImpl"

    const-string p2, "ACTION_MANAGED_PROFILE_ADDED called"

    .line 134
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->handleProfilesChanged()V

    goto :goto_0

    :sswitch_2
    const-string p2, "android.intent.action.MANAGED_PROFILE_AVAILABLE"

    .line 125
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :sswitch_3
    const-string p2, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 130
    :cond_2
    invoke-direct {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->handleProfilesChanged()V

    :cond_3
    :goto_0
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x49d08e2b -> :sswitch_3
        -0x33813a72 -> :sswitch_2
        -0x16fbb1bb -> :sswitch_1
        0x392cb822 -> :sswitch_0
    .end sparse-switch
.end method

.method public removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V
    .locals 2
    .param p1    # Lcom/android/systemui/settings/UserTracker$Callback;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 193
    iget-object v0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    monitor-enter v0

    .line 194
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/settings/UserTrackerImpl;->callbacks:Ljava/util/List;

    new-instance v1, Lcom/android/systemui/settings/UserTrackerImpl$removeCallback$1$1;

    invoke-direct {v1, p1}, Lcom/android/systemui/settings/UserTrackerImpl$removeCallback$1$1;-><init>(Lcom/android/systemui/settings/UserTracker$Callback;)V

    invoke-interface {p0, v1}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
