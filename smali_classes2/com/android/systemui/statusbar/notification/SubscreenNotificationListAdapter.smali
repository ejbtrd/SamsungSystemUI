.class public Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;
.super Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;
.source "SubscreenNotificationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GropuViewHolder;,
        Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;,
        Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;,
        Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder;,
        Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NoNotificationViewHolder;,
        Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;


# instance fields
.field private final GROUP_CHILD_COUNT:I

.field private final TYPE_CUSTOM_VIEW:I

.field private final TYPE_FOOTTER:I

.field private final TYPE_GROUP_SUMMARY:I

.field private final TYPE_HIDE_CONTENT:I

.field private final TYPE_ITEM:I

.field private final TYPE_NO_NOTIFICATION:I

.field private mClearAllOngoingRunnable:Z

.field private mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

.field private mPosition:I


# direct methods
.method public static synthetic $r8$lambda$T0ncsKxCB1yuQyxp9xZRfQVooRc(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->lambda$updateFooterViewVisibility$0(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 44
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;-><init>()V

    const/4 v0, 0x0

    .line 29
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->TYPE_ITEM:I

    const/4 v0, 0x1

    .line 30
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->TYPE_FOOTTER:I

    const/4 v0, 0x2

    .line 31
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->TYPE_CUSTOM_VIEW:I

    const/4 v1, 0x3

    .line 32
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->TYPE_NO_NOTIFICATION:I

    const/4 v1, 0x4

    .line 33
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->TYPE_HIDE_CONTENT:I

    const/4 v1, 0x5

    .line 34
    iput v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->TYPE_GROUP_SUMMARY:I

    .line 36
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->GROUP_CHILD_COUNT:I

    return-void
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;
    .locals 0

    .line 27
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;)I
    .locals 0

    .line 27
    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mPosition:I

    return p0
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;
    .locals 1

    .line 48
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    .line 51
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;

    return-object v0
.end method

.method private synthetic lambda$updateFooterViewVisibility$0(I)V
    .locals 0

    .line 214
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->getClearAllLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 0

    .line 126
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public getItemViewType(I)I
    .locals 1

    .line 131
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v0, :cond_0

    .line 132
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mPosition:I

    .line 135
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, 0x3

    return p0

    .line 137
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    move-result v0

    if-ne p1, v0, :cond_2

    const/4 p0, 0x1

    return p0

    .line 139
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 140
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p0, 0x4

    return p0

    .line 142
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 143
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    if-eqz v0, :cond_4

    const/4 p0, 0x2

    return p0

    .line 145
    :cond_4
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArray()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->getStatusBarNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x5

    return p0

    :cond_5
    const/4 p0, 0x0

    return p0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 105
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder;

    if-eqz v0, :cond_0

    .line 106
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder;

    .line 107
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder;->onBind(Lcom/android/systemui/statusbar/LockscreenNotificationInfo;)V

    goto :goto_0

    .line 108
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    if-eqz v0, :cond_1

    .line 109
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    .line 110
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->onBind()V

    goto :goto_0

    .line 111
    :cond_1
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;

    if-eqz v0, :cond_2

    .line 112
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;->onBind(Lcom/android/systemui/statusbar/LockscreenNotificationInfo;)V

    goto :goto_0

    .line 114
    :cond_2
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;

    if-eqz v0, :cond_3

    .line 115
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;->onBind(Lcom/android/systemui/statusbar/LockscreenNotificationInfo;)V

    goto :goto_0

    .line 117
    :cond_3
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GropuViewHolder;

    if-eqz v0, :cond_4

    .line 118
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GropuViewHolder;

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArray()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GropuViewHolder;->onBind(Lcom/android/systemui/statusbar/LockscreenNotificationInfo;)V

    :cond_4
    :goto_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 121
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->animateAlphaRecyclerView(Ljava/lang/Runnable;JFF)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 7

    .line 58
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    const/4 v1, 0x5

    const/4 v2, 0x4

    const/4 v3, 0x2

    const/4 v4, 0x3

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v0, :cond_5

    if-nez p2, :cond_0

    .line 60
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->subscreen_notification_list_adapter_item:I

    invoke-virtual {p2, v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 61
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_0
    if-ne p2, v5, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->subscreen_notification_adapter_clear_all_footer:I

    invoke-virtual {p2, v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 64
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_1
    if-ne p2, v4, :cond_2

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->subscreen_notification_adapter_no_notification:I

    invoke-virtual {p2, v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NoNotificationViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NoNotificationViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    if-ne p2, v3, :cond_3

    .line 69
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->subscreen_notification_list_adapter_custom_view:I

    invoke-virtual {p2, v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_3
    if-ne p2, v2, :cond_4

    .line 72
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->subscreen_notification_list_adapter_hide_content:I

    invoke-virtual {p2, v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_4
    if-ne p2, v1, :cond_b

    .line 75
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->subscreen_notification_list_adapter_group_summary_layout:I

    invoke-virtual {p2, v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 76
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GropuViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GropuViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto/16 :goto_0

    .line 78
    :cond_5
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v0, :cond_b

    if-nez p2, :cond_6

    .line 80
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->clear_cover_subscreen_notification_list_adapter_item:I

    invoke-virtual {p2, v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 81
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NotificationListItemViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_6
    if-ne p2, v5, :cond_7

    .line 83
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->clear_cover_subscreen_notification_adapter_clear_all_footer:I

    invoke-virtual {p2, v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 84
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_7
    if-ne p2, v4, :cond_8

    .line 86
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->clear_cover_subscreen_notification_adapter_no_notification:I

    invoke-virtual {p2, v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 87
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NoNotificationViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$NoNotificationViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_8
    if-ne p2, v3, :cond_9

    .line 89
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->clear_cover_subscreen_notification_list_adapter_custom_view:I

    invoke-virtual {p2, v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 90
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$CustomViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_9
    if-ne p2, v2, :cond_a

    .line 92
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->clear_cover_subscreen_notification_list_adapter_hide_content:I

    invoke-virtual {p2, v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 93
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$HideContenNotificationViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_a
    if-ne p2, v1, :cond_b

    .line 95
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->clear_cover_subscreen_notification_list_adapter_group_summary_layout:I

    invoke-virtual {p2, v0, p1, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 96
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GropuViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$GropuViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_b
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public pageMove()V
    .locals 0

    .line 165
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->pageMove()V

    return-void
.end method

.method public setClearAllOngoingRunnable(Z)V
    .locals 0

    .line 157
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mClearAllOngoingRunnable:Z

    return-void
.end method

.method public updataDataChanged()V
    .locals 0

    .line 154
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public updateFooterViewVisibility()V
    .locals 8

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    if-eqz v0, :cond_2

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getNotificationInfoArraySize()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 211
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->checkRemoveNotification()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->getClearAllLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    const/4 v0, 0x0

    .line 218
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->getClearAllLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    .line 213
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;->mFooterViewHolder:Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$FooterViewHolder;->getClearAllLayout()Landroid/widget/FrameLayout;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationListAdapter;I)V

    const-wide/16 v4, 0x12c

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Ljava/lang/Runnable;JFF)V

    :cond_2
    :goto_1
    return-void
.end method
