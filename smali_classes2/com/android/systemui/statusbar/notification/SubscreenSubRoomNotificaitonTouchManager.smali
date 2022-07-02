.class public Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;
.super Ljava/lang/Object;
.source "SubscreenSubRoomNotificaitonTouchManager.java"


# instance fields
.field private final SWIPE_DEFAULT_THRESHOLD:F

.field private final SWIPE_DEFAULT_VELOCITY:F

.field private final SWIPE_ONGOING_THRESHOLD:F

.field private final SWIPE_ONGOING_VELOCITY:F

.field private mContext:Landroid/content/Context;

.field private mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

.field private mItemTouchDownX:F

.field private mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

.field private mItemViewSwipeEnabled:Z

.field private mLayoutDirection:I

.field private mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

.field private mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

.field private mSimpleItemTouchCallBack:Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

.field private mSwipeEscapeVelocity:F

.field private mSwipeNotificationType:I

.field private mSwipeThreshold:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;)V
    .locals 3

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x40a00000    # 5.0f

    .line 25
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->SWIPE_DEFAULT_VELOCITY:F

    const v1, 0x3e99999a    # 0.3f

    .line 26
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->SWIPE_DEFAULT_THRESHOLD:F

    const/high16 v2, 0x447a0000    # 1000.0f

    .line 27
    iput v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->SWIPE_ONGOING_VELOCITY:F

    const/high16 v2, 0x3f800000    # 1.0f

    .line 28
    iput v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->SWIPE_ONGOING_THRESHOLD:F

    .line 29
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeThreshold:F

    .line 30
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeEscapeVelocity:F

    const/4 v0, 0x1

    .line 31
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemViewSwipeEnabled:Z

    const/4 v0, 0x0

    .line 32
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 45
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;

    const/4 v1, 0x0

    const/16 v2, 0x8

    invoke-direct {v0, p0, v1, v2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;II)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSimpleItemTouchCallBack:Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    .line 126
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    .line 40
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mContext:Landroid/content/Context;

    .line 42
    const-class p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)Z
    .locals 0

    .line 20
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemViewSwipeEnabled:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;Z)Z
    .locals 0

    .line 20
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemViewSwipeEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->removeItem(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeEscapeVelocity:F

    return p0
.end method

.method static synthetic access$302(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;F)F
    .locals 0

    .line 20
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeEscapeVelocity:F

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeThreshold:F

    return p0
.end method

.method static synthetic access$402(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;F)F
    .locals 0

    .line 20
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeThreshold:F

    return p1
.end method

.method static synthetic access$500(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)F
    .locals 0

    .line 20
    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemTouchDownX:F

    return p0
.end method

.method static synthetic access$502(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;F)F
    .locals 0

    .line 20
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemTouchDownX:F

    return p1
.end method

.method static synthetic access$600(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mLayoutDirection:I

    return p0
.end method

.method private removeItem(Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;)V
    .locals 4

    .line 96
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->isShownGroup()Z

    move-result v0

    .line 97
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 100
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    iget-object v3, p1, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->isRemoveGroupSummaryType(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    .line 101
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeNotificationType:I

    goto :goto_0

    .line 102
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mGroupManager:Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/notification/collection/legacy/NotificationGroupManagerLegacy;->isGroupSuppressedNotification(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    const/4 v1, 0x2

    .line 103
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeNotificationType:I

    goto :goto_0

    .line 105
    :cond_1
    iput v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeNotificationType:I

    .line 107
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeItem mSwipeNotificationType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeNotificationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SubscreenSubRoomNotificaitonTouchManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->removeNotificationInfoItem(I)V

    .line 114
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentItemViewHolder;->getSubscreenNotificationInfo()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->performRemoveNotification(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 115
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->setSwipeRemoved(Z)V

    .line 118
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p0

    invoke-virtual {p2, p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    return-void
.end method


# virtual methods
.method public getOnItemTouchListener()Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;
    .locals 0

    .line 184
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mOnItemTouchListener:Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;

    return-object p0
.end method

.method public getSwipeNotificationType()I
    .locals 0

    .line 123
    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSwipeNotificationType:I

    return p0
.end method

.method public init()V
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mLayoutDirection:I

    const/4 v0, 0x1

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->setItemViewSwipeEnabled(Z)V

    .line 211
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->setItemSwipeDirection()V

    return-void
.end method

.method public setItemSwipeDirection()V
    .locals 2

    .line 196
    iget v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mLayoutDirection:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 197
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSimpleItemTouchCallBack:Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->setDefaultSwipeDirs(I)V

    goto :goto_0

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSimpleItemTouchCallBack:Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;->setDefaultSwipeDirs(I)V

    :goto_0
    return-void
.end method

.method public setItemViewSwipeEnabled(Z)V
    .locals 0

    .line 192
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemViewSwipeEnabled:Z

    return-void
.end method

.method public setRecyclerViewItemTouchHelper(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 204
    new-instance v0, Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mSimpleItemTouchCallBack:Landroidx/recyclerview/widget/ItemTouchHelper$SimpleCallback;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/ItemTouchHelper;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$Callback;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonTouchManager;->mItemTouchHelper:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 205
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/ItemTouchHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
