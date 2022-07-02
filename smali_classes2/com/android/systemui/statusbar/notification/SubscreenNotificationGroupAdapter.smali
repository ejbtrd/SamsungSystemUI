.class public Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;
.super Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;
.source "SubscreenNotificationGroupAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$NotificationGroupItemViewHolder;,
        Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;,
        Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;,
        Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;


# instance fields
.field private final TYPE_FOOTTER:I

.field private final TYPE_HEADER:I

.field private final TYPE_HIDE_CONTENT:I

.field private final TYPE_ITEM:I

.field private mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;


# direct methods
.method public static synthetic $r8$lambda$d2kr1NUs6HNJy-j1fku5Gk1Tnaw(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->lambda$hideGroupNotification$0()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;-><init>()V

    const/4 v0, 0x0

    .line 28
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->TYPE_ITEM:I

    const/4 v0, 0x1

    .line 29
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->TYPE_FOOTTER:I

    const/4 v0, 0x2

    .line 30
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->TYPE_HEADER:I

    const/4 v0, 0x4

    .line 31
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->TYPE_HIDE_CONTENT:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    return-object p0
.end method

.method public static getInstance()Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;
    .locals 1

    .line 37
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    if-nez v0, :cond_0

    .line 38
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    .line 40
    :cond_0
    sget-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->sInstance:Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;

    return-object v0
.end method

.method private synthetic lambda$hideGroupNotification$0()V
    .locals 0

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->hideGroupNotification()V

    return-void
.end method


# virtual methods
.method public createGroupData(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V
    .locals 2

    .line 129
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    .line 130
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArraySize()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArray()Ljava/util/ArrayList;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setRecyclerViewItemSelectKey(Ljava/lang/String;)V

    .line 133
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->clearGroupDataArray()V

    .line 134
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->hideGroupNotification()V

    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArraySize()I

    move-result v0

    if-lez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->clearGroupDataArray()V

    .line 141
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 142
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->addGroupItems(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    return-void
.end method

.method public getItemCount()I
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArraySize()I

    move-result p0

    add-int/lit8 p0, p0, 0x2

    return p0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArraySize()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    const/4 p0, 0x2

    return p0

    .line 109
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArray()Ljava/util/ArrayList;

    move-result-object p0

    sub-int/2addr p1, v1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->needsRedaction()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x4

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public hideGroupNotification()V
    .locals 9

    .line 116
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setShownGroup(Z)V

    .line 117
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationAnimatorManager()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    move-result-object v2

    .line 118
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getNotificaitonRecyclerView()Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;)V

    const-wide/16 v5, 0x12c

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 117
    invoke-virtual/range {v2 .. v8}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Ljava/lang/Runnable;JFF)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 6

    .line 81
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$NotificationGroupItemViewHolder;

    const-string v1, "SubscreenNotificationGroupAdapter"

    if-eqz v0, :cond_0

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group postion Item: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$NotificationGroupItemViewHolder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArray()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    .line 84
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    .line 83
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$NotificationGroupItemViewHolder;->onBind(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    goto :goto_0

    .line 85
    :cond_0
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;

    if-eqz v0, :cond_1

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group postion header: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;->onBind()V

    goto :goto_0

    .line 88
    :cond_1
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;

    if-eqz v0, :cond_2

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group postion Footer: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;->onBind()V

    goto :goto_0

    .line 91
    :cond_2
    instance-of v0, p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;

    if-eqz v0, :cond_3

    .line 92
    check-cast p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;

    .line 93
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->getGroupDataArray()Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 p2, p2, -0x1

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;->onBind(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    :cond_3
    :goto_0
    const/4 v1, 0x0

    const-wide/16 v2, 0x12c

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    .line 95
    invoke-virtual/range {v0 .. v5}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->animateAlphaRecyclerView(Ljava/lang/Runnable;JFF)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 5

    .line 47
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    if-nez p2, :cond_0

    .line 49
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->subscreen_notification_group_adapter_item:I

    invoke-virtual {p2, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 50
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$NotificationGroupItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$NotificationGroupItemViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_0
    if-ne p2, v3, :cond_1

    .line 52
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->subscreen_notification_adapter_clear_all_footer:I

    invoke-virtual {p2, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 53
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_1
    if-ne p2, v2, :cond_2

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->subscreen_notification_adapter_header:I

    invoke-virtual {p2, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 56
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V

    goto/16 :goto_0

    :cond_2
    if-ne p2, v1, :cond_7

    .line 58
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->subscreen_notification_group_adapter_hide_content:I

    invoke-virtual {p2, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 59
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V

    goto :goto_0

    .line 61
    :cond_3
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v0, :cond_7

    if-nez p2, :cond_4

    .line 63
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->clear_cover_subscreen_notification_group_adapter_item:I

    invoke-virtual {p2, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 64
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$NotificationGroupItemViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$NotificationGroupItemViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_4
    if-ne p2, v3, :cond_5

    .line 66
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->clear_cover_subscreen_notification_adapter_clear_all_footer:I

    invoke-virtual {p2, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$FooterViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_5
    if-ne p2, v2, :cond_6

    .line 69
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->clear_cover_subscreen_notification_adapter_header:I

    invoke-virtual {p2, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 70
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HeaderViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_6
    if-ne p2, v1, :cond_7

    .line 72
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v0, Lcom/android/systemui/R$layout;->subscreen_notification_group_adapter_hide_content:I

    invoke-virtual {p2, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 73
    new-instance p2, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter$HideContenNotificationViewHolder;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;Landroid/view/View;)V

    goto :goto_0

    :cond_7
    const/4 p2, 0x0

    :goto_0
    return-object p2
.end method

.method public updateGroupData()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->mSummaryInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationGroupAdapter;->createGroupData(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    :cond_0
    return-void
.end method
