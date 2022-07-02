.class public Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;
.super Ljava/lang/Object;
.source "SubscreenSubRoomNotification.java"

# interfaces
.implements Lcom/android/systemui/plugins/subscreen/SubRoom;


# static fields
.field private static mContext:Landroid/content/Context;

.field private static sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;


# instance fields
.field private mHasUnreadNoti:Z

.field private mIsInNotiRoom:Z

.field private mIsShownDetail:Z

.field private mIsShownGroup:Z

.field private mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

.field private mMainView:Landroid/view/View;

.field private mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

.field private mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

.field private mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

.field private mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

.field private mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

.field private mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

.field private mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

.field private mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

.field private mRecyclerViewFirstVisibleItemPosition:I

.field private mRecyclerViewItemSelectKey:Ljava/lang/String;

.field private mRecyclerViewLastVisibleItemPosition:I

.field private mRecyclerViewScroll:I

.field private mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

.field private mUnreadNotificationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    .line 55
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mHasUnreadNoti:Z

    .line 56
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    .line 65
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewScroll:I

    .line 363
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    .line 61
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->init()V

    return-void
.end method

.method static synthetic access$012(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;I)I
    .locals 1

    .line 32
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewScroll:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewScroll:I

    return v0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewFirstVisibleItemPosition:I

    return p1
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;I)I
    .locals 0

    .line 32
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewLastVisibleItemPosition:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->updateSwipeRemoved()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)Z
    .locals 0

    .line 32
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    return-object p0
.end method

.method private getBixbyNotificationVisible(Ljava/lang/String;)Z
    .locals 5

    .line 489
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewFirstVisibleItemPosition:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewLastVisibleItemPosition:I

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move v0, v2

    .line 492
    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getNotificaitonRecyclerView()Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-gt v0, v1, :cond_3

    .line 493
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getNotificaitonRecyclerView()Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 495
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getNotificaitonRecyclerView()Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 496
    instance-of v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    .line 497
    check-cast v1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v4

    .line 500
    :cond_1
    instance-of v3, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    if-eqz v3, :cond_2

    .line 501
    check-cast v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return v4

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return v2
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;
    .locals 1

    .line 328
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    if-nez v0, :cond_0

    .line 329
    sput-object p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    .line 330
    new-instance p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;-><init>()V

    sput-object p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    .line 332
    :cond_0
    sget-object p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    return-object p0
.end method

.method private getNotificationFilter()Lcom/android/systemui/statusbar/notification/NotificationFilter;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    if-nez v0, :cond_0

    .line 232
    const-class v0, Lcom/android/systemui/statusbar/notification/NotificationFilter;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/NotificationFilter;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    .line 234
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationFilter:Lcom/android/systemui/statusbar/notification/NotificationFilter;

    return-object p0
.end method

.method private init()V
    .locals 5

    .line 67
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->subscreen_notification_main:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mMainView:Landroid/view/View;

    .line 74
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->getInstance()Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 76
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->getInstance()Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 78
    invoke-static {}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->getInstance()Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 80
    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    sget-object v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 83
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    sget-object v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    .line 85
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    .line 89
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initRecyclerView()V

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    .line 93
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    return-void
.end method

.method private initAdapter(Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->setNotificationInfoManager(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;)V

    .line 100
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->setNotificationAnimatorManager(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;)V

    .line 101
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->setSubRoomNotification(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V

    .line 102
    sget-object p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method private initRecyclerView()V
    .locals 5

    .line 106
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mMainView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->notification_list_recyclerview:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    .line 107
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    sget-object v2, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mContext:Landroid/content/Context;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 108
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 109
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->getOnItemTouchListener()Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    new-instance v1, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->setRecyclerViewItemTouchHelper(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method private updateSwipeRemoved()V
    .locals 4

    .line 392
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->getSwipeNotificationType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    move v2, v1

    goto :goto_0

    .line 402
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->isRemoveGroupSummary()Z

    move-result v0

    xor-int/2addr v2, v0

    goto :goto_0

    .line 399
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->isRemoveGroupSummary()Z

    move-result v2

    :cond_2
    :goto_0
    if-eqz v2, :cond_3

    .line 407
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setSwipeRemoved(Z)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getBixbyNotificationInfo()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    .line 511
    new-instance v1, Lcom/google/gson/JsonObject;

    invoke-direct {v1}, Lcom/google/gson/JsonObject;-><init>()V

    .line 512
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->isInNotiRoom()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "isShowNotiScreen"

    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 514
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->isShownDetail()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "detail"

    goto :goto_0

    .line 515
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->isShownGroup()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->isShownDetail()Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "group"

    goto :goto_0

    :cond_1
    const-string v2, "list"

    :goto_0
    const-string v3, "currentPageLevel"

    .line 516
    invoke-virtual {v1, v3, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    move-result v2

    .line 522
    new-instance v3, Lcom/google/gson/JsonArray;

    invoke-direct {v3}, Lcom/google/gson/JsonArray;-><init>()V

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_1
    if-ge v5, v2, :cond_6

    .line 525
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArray()Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 526
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getSubscreenNotificationInfoManager(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v7

    .line 528
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getBixbyNotificationVisible(Ljava/lang/String;)Z

    move-result v8

    .line 530
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->isRemoteinput()Z

    move-result v9

    const-string/jumbo v10, "notiVisible"

    const-string/jumbo v11, "notiAppname"

    const-string/jumbo v12, "notiTitle"

    const-string/jumbo v13, "notiID"

    if-eqz v9, :cond_2

    .line 531
    new-instance v9, Lcom/google/gson/JsonObject;

    invoke-direct {v9}, Lcom/google/gson/JsonObject;-><init>()V

    .line 532
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v13, v14}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v12, v14}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getAppName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v9, v11, v14}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 535
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    invoke-virtual {v9, v10, v14}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 536
    invoke-virtual {v3, v9}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    add-int/lit8 v6, v6, 0x1

    .line 541
    :cond_2
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->isGroupSummary()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 542
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    move-result-object v7

    .line 543
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result v9

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v9, :cond_5

    .line 546
    new-instance v15, Lcom/google/gson/JsonObject;

    invoke-direct {v15}, Lcom/google/gson/JsonObject;-><init>()V

    .line 547
    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getAttachedChildren()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 548
    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getSubscreenNotificationInfoManager(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v4

    .line 550
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->isRemoteinput()Z

    move-result v16

    if-eqz v16, :cond_4

    .line 551
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->isShownGroup()Z

    move-result v16

    if-nez v16, :cond_3

    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->isShownDetail()Z

    move-result v16

    if-nez v16, :cond_3

    move/from16 v16, v2

    move v2, v8

    goto :goto_3

    :cond_3
    move/from16 v16, v2

    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getBixbyNotificationVisible(Ljava/lang/String;)Z

    move-result v2

    .line 552
    :goto_3
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v13, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v12, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 554
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v11, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v15, v10, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 556
    invoke-virtual {v3, v15}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_4
    move/from16 v16, v2

    :goto_4
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    goto :goto_2

    :cond_5
    move/from16 v16, v2

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v16

    goto/16 :goto_1

    .line 562
    :cond_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v2, "notiCount"

    invoke-virtual {v1, v2, v0}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 564
    new-instance v0, Lcom/google/gson/JsonObject;

    invoke-direct {v0}, Lcom/google/gson/JsonObject;-><init>()V

    .line 566
    new-instance v2, Lcom/google/gson/JsonArray;

    invoke-direct {v2}, Lcom/google/gson/JsonArray;-><init>()V

    .line 569
    new-instance v4, Lcom/google/gson/JsonObject;

    invoke-direct {v4}, Lcom/google/gson/JsonObject;-><init>()V

    const-string/jumbo v5, "type"

    const-string/jumbo v6, "viv.systemApp.CoverReplicableNotiList"

    .line 570
    invoke-virtual {v4, v5, v6}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 573
    new-instance v5, Lcom/google/gson/JsonArray;

    invoke-direct {v5}, Lcom/google/gson/JsonArray;-><init>()V

    .line 575
    new-instance v6, Lcom/google/gson/JsonObject;

    invoke-direct {v6}, Lcom/google/gson/JsonObject;-><init>()V

    const-string v7, "coverScreenInfo"

    .line 576
    invoke-virtual {v6, v7, v1}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "coverNotificationList"

    .line 577
    invoke-virtual {v6, v1, v3}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 578
    invoke-virtual {v5, v6}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const-string/jumbo v1, "values"

    .line 579
    invoke-virtual {v4, v1, v5}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    .line 580
    invoke-virtual {v2, v4}, Lcom/google/gson/JsonArray;->add(Lcom/google/gson/JsonElement;)V

    const-string v1, "concepts"

    .line 583
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->add(Ljava/lang/String;Lcom/google/gson/JsonElement;)V

    const-string v1, "capsuleId"

    const-string/jumbo v2, "viv.systemApp"

    .line 586
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "appId"

    const-string v2, "com.sec.android.app.system"

    .line 589
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/String;)V

    const v1, 0x47869db3

    .line 592
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "appVersionCode"

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/JsonObject;->addProperty(Ljava/lang/String;Ljava/lang/Number;)V

    .line 594
    invoke-virtual {v0}, Lcom/google/gson/JsonElement;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLockscreenNotiCallback()Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;
    .locals 0

    .line 416
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mLockscreenNotiCallback:Lcom/android/systemui/statusbar/LockscreenNotificationManager$Callback;

    return-object p0
.end method

.method public getNotificaitonRecyclerView()Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;
    .locals 0

    .line 426
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    return-object p0
.end method

.method public getRecyclerViewScroll()I
    .locals 0

    .line 125
    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewScroll:I

    return p0
.end method

.method public getSubscreenNotificationInfoManager(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;
    .locals 0

    .line 324
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->createItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object p0

    return-object p0
.end method

.method public getView(Landroid/content/Context;)Landroid/view/View;
    .locals 0

    .line 337
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mMainView:Landroid/view/View;

    return-object p0
.end method

.method public hideDetailNotification()V
    .locals 2

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v0, :cond_1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideDetailNotification mIsShownGroup: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenSubRoomNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 183
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 184
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 187
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setHeaderVIewLayout(ILcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewItemSelectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getRecyclerViewItemSelectPosition(Ljava/lang/String;)I

    move-result v0

    .line 191
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 192
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->setItemViewSwipeEnabled(Z)V

    const/4 v0, 0x0

    .line 193
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    :cond_1
    return-void
.end method

.method public hideGroupNotification()V
    .locals 2

    .line 212
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-eqz v0, :cond_0

    const-string v0, "SubscreenSubRoomNotification"

    const-string v1, "hideGroupNotification"

    .line 213
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->clearAllRecyclerViewItem()V

    .line 215
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 216
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setShownGroup(Z)V

    .line 219
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewItemSelectKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getRecyclerViewItemSelectPosition(Ljava/lang/String;)I

    move-result v0

    .line 220
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    const/16 v0, 0x8

    const/4 v1, 0x0

    .line 222
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setHeaderVIewLayout(ILcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    :cond_0
    return-void
.end method

.method public initData()V
    .locals 3

    const-string v0, "SubscreenSubRoomNotification"

    const-string v1, "initData"

    .line 456
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 457
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    .line 458
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 459
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setShownGroup(Z)V

    .line 460
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setSwipeRemoved(Z)V

    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 462
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setHeaderVIewLayout(ILcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 463
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    .line 464
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->init()V

    .line 466
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 467
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationListAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v1, -0x1

    .line 469
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewFirstVisibleItemPosition:I

    .line 470
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewLastVisibleItemPosition:I

    .line 471
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewScroll:I

    .line 473
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->dismissReplyButtons(Z)V

    return-void
.end method

.method public isInNotiRoom()Z
    .locals 0

    .line 430
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    return p0
.end method

.method public isShownDetail()Z
    .locals 0

    .line 434
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    return p0
.end method

.method public isShownGroup()Z
    .locals 0

    .line 438
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    return p0
.end method

.method public notifyNotificationStateChanged(Z)V
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz v0, :cond_0

    .line 288
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "hasUnread"

    .line 289
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 290
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public notifyNotificationSubRoomRequest()V
    .locals 3

    .line 295
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz v0, :cond_0

    .line 296
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "focusRequired"

    const-string/jumbo v2, "notification"

    .line 297
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public onCloseFinished()V
    .locals 2

    const-string v0, "SubscreenSubRoomNotification"

    const-string/jumbo v1, "onCloseFinished"

    .line 450
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 451
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    .line 452
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->initData()V

    return-void
.end method

.method public onOpenStarted()V
    .locals 2

    const-string v0, "SubscreenSubRoomNotification"

    const-string/jumbo v1, "onOpenStarted"

    .line 443
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 444
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 445
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->updateNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V

    return-void
.end method

.method public pageMove()V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "focusRequired"

    const-string v2, "clock"

    .line 305
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 306
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->onStateChanged(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public removeListener()V
    .locals 1

    const/4 v0, 0x0

    .line 360
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    return-void
.end method

.method public request(Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1

    const-string v0, "STATE_UNREAD_NOTIFICATION"

    .line 342
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 344
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mHasUnreadNoti:Z

    const-string p2, "hasUnread"

    invoke-virtual {p1, p2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-object p1

    :cond_0
    const-string v0, "STATE_POPUP_DISMISSED"

    .line 346
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "SubscreenSubRoomNotification"

    const-string/jumbo v0, "request() STATE_POPUP_DISMISSED "

    .line 347
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    :cond_1
    return-object p2
.end method

.method public requestCoverPopup(Landroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    .line 485
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;->requestCoverPopup(Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public setHeaderVIewLayout(ILcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 0

    return-void
.end method

.method public setListener(Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mStateChangeListener:Lcom/android/systemui/plugins/subscreen/SubRoom$StateChangeListener;

    return-void
.end method

.method public setRecyclerViewItemSelectKey(Ljava/lang/String;)V
    .locals 0

    .line 477
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewItemSelectKey:Ljava/lang/String;

    return-void
.end method

.method public setRemoveGroupSummary(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setRemoveGroupSummary(Z)V

    return-void
.end method

.method public setShownGroup(Z)V
    .locals 0

    .line 227
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    return-void
.end method

.method public showDetailNotification(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 3

    .line 160
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    if-eqz v0, :cond_0

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showDetailNotification key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenSubRoomNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->dismissReplyButtons(Z)V

    .line 163
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->setSelectNotificationInfo(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 164
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 166
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationTouchManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->setItemViewSwipeEnabled(Z)V

    const/4 v0, 0x1

    .line 167
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    .line 168
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mRecyclerViewScroll:I

    .line 170
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setRecyclerViewItemSelectKey(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setHeaderVIewLayout(ILcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    :cond_0
    return-void
.end method

.method public showGroupNotification(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-eqz v0, :cond_0

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showGroupNotification key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SubscreenSubRoomNotification"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificaitonRecyclerView:Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 201
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->createGroupData(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 202
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationGroupAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    const/4 v0, 0x1

    .line 203
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownGroup:Z

    .line 204
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setShownGroup(Z)V

    const/4 v0, 0x0

    .line 207
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setHeaderVIewLayout(ILcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    :cond_0
    return-void
.end method

.method public updateNotificaitonInfo(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 420
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsShownDetail:Z

    if-eqz v0, :cond_0

    .line 421
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mNotificationDetailAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->updateSelectNotificationInfo(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    :cond_0
    return-void
.end method

.method public updateNotificationState(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
    .locals 6

    .line 238
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getNotificationFilter()Lcom/android/systemui/statusbar/notification/NotificationFilter;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 239
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getNotificationFilter()Lcom/android/systemui/statusbar/notification/NotificationFilter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/NotificationFilter;->shouldFilterOut(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const-string v3, "SubscreenSubRoomNotification"

    if-eqz v0, :cond_1

    const-string/jumbo p0, "updateNotificationState -  Filterout notification"

    .line 241
    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 245
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateNotificationState -  action = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " list size = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    .line 246
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x2

    if-eqz p2, :cond_4

    if-eq p2, v2, :cond_3

    if-eq p2, v0, :cond_2

    goto/16 :goto_1

    .line 270
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    goto/16 :goto_1

    :cond_3
    if-eqz p1, :cond_5

    .line 266
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_4
    if-eqz p1, :cond_5

    .line 251
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateNotificationState - mIsInNotiRoom = "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " isOngoing = "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " importance = "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " isGroupSummary = "

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 251
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-boolean p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mIsInNotiRoom:Z

    if-nez p2, :cond_5

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result p2

    if-nez p2, :cond_5

    .line 255
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getImportance()I

    move-result p2

    if-lt p2, v0, :cond_5

    .line 256
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p2

    if-nez p2, :cond_5

    .line 257
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    const-string/jumbo p2, "updateNotificationState - key is added"

    .line 258
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 273
    :cond_5
    :goto_1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mHasUnreadNoti:Z

    .line 274
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p2

    xor-int/2addr p2, v2

    iput-boolean p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mHasUnreadNoti:Z

    if-eq p1, p2, :cond_6

    .line 276
    invoke-virtual {p0, p2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->notifyNotificationStateChanged(Z)V

    .line 279
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateNotificationState - prevHasUnreadNoti = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " mHasUnreadNoti = "

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mHasUnreadNoti:Z

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    .line 280
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ge v1, p1, :cond_7

    .line 282
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "updateNotificationState - mUnreadNotificationList = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->mUnreadNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method
