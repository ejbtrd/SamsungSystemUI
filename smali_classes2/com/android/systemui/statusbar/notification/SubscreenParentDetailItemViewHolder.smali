.class public Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SubscreenParentDetailItemViewHolder.java"


# instance fields
.field private final WAKELOCK_TIMEOUT_DELAY:I

.field protected mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

.field protected mAppName:Landroid/widget/TextView;

.field protected mBackButton:Landroid/widget/ImageView;

.field protected mBodyLayout:Landroid/widget/LinearLayout;

.field protected mClearButton:Landroid/widget/TextView;

.field protected mClock:Landroid/widget/TextView;

.field protected mContentLayout:Landroid/widget/LinearLayout;

.field protected mDetailLayout:Landroid/widget/LinearLayout;

.field protected final mHandler:Landroid/os/Handler;

.field protected mHeaderLayout:Landroid/widget/LinearLayout;

.field protected mIcon:Landroid/widget/ImageView;

.field protected mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

.field protected mInitFocusRunnable:Ljava/lang/Runnable;

.field protected mMainView:Landroid/view/View;

.field protected mOpenAppButton:Landroid/widget/TextView;

.field protected mReplyButton:Landroid/widget/TextView;

.field protected mReplylayout:Landroid/widget/LinearLayout;

.field protected mSecureIcon:Landroid/widget/ImageView;

.field mTimeoutRunnable:Ljava/lang/Runnable;

.field protected mTitle:Landroid/widget/TextView;

.field protected mWaitLayout:Landroid/widget/LinearLayout;


# direct methods
.method public static synthetic $r8$lambda$PcJ9h_ZksNWMKOJqD72er20j0hE(Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->lambda$hideDetailNotification$0()V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const/16 v0, 0xbb8

    .line 28
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->WAKELOCK_TIMEOUT_DELAY:I

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mHandler:Landroid/os/Handler;

    .line 115
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$4;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$4;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTimeoutRunnable:Ljava/lang/Runnable;

    .line 121
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$5;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$5;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInitFocusRunnable:Ljava/lang/Runnable;

    .line 52
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mMainView:Landroid/view/View;

    .line 53
    sget v0, Lcom/android/systemui/R$id;->back_key:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBackButton:Landroid/widget/ImageView;

    .line 55
    sget v0, Lcom/android/systemui/R$id;->clock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mClock:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/android/systemui/R$id;->subscreen_header_app_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAppName:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/android/systemui/R$id;->subscreen_header_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 58
    sget v0, Lcom/android/systemui/R$id;->content_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mContentLayout:Landroid/widget/LinearLayout;

    .line 59
    sget v0, Lcom/android/systemui/R$id;->name_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTitle:Landroid/widget/TextView;

    .line 60
    sget v0, Lcom/android/systemui/R$id;->clear_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mClearButton:Landroid/widget/TextView;

    .line 61
    sget v0, Lcom/android/systemui/R$id;->reply_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplyButton:Landroid/widget/TextView;

    .line 62
    sget v0, Lcom/android/systemui/R$id;->app_open_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mOpenAppButton:Landroid/widget/TextView;

    .line 63
    sget v0, Lcom/android/systemui/R$id;->detail_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mDetailLayout:Landroid/widget/LinearLayout;

    .line 64
    sget v0, Lcom/android/systemui/R$id;->body_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBodyLayout:Landroid/widget/LinearLayout;

    .line 65
    sget v0, Lcom/android/systemui/R$id;->wait_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mWaitLayout:Landroid/widget/LinearLayout;

    .line 66
    sget v0, Lcom/android/systemui/R$id;->secure_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSecureIcon:Landroid/widget/ImageView;

    .line 67
    sget v0, Lcom/android/systemui/R$id;->detail_header_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mHeaderLayout:Landroid/widget/LinearLayout;

    .line 68
    sget v0, Lcom/android/systemui/R$id;->reply_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mReplylayout:Landroid/widget/LinearLayout;

    .line 70
    sget-boolean p1, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-eqz p1, :cond_0

    .line 71
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mWaitLayout:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mBackButton:Landroid/widget/ImageView;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$2;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 87
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mClearButton:Landroid/widget/TextView;

    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$3;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$3;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->hideDetailNotification()V

    return-void
.end method

.method private hideDetailNotification()V
    .locals 8

    .line 110
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationAnimatorManager()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    .line 111
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getNotificaitonRecyclerView()Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V

    const-wide/16 v4, 0x12c

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v7, 0x0

    .line 110
    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Ljava/lang/Runnable;JFF)V

    return-void
.end method

.method private synthetic lambda$hideDetailNotification$0()V
    .locals 0

    .line 112
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->hideDetailNotification()V

    return-void
.end method


# virtual methods
.method protected cleanWaitLayout()V
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->showDetailLayout()V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->cleanAdapter()V

    .line 133
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->setHeaderVIewLayout(ILcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    return-void
.end method

.method public removeNotification()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->performRemoveNotification(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 102
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->hideDetailNotification()V

    return-void
.end method

.method public removeTimeoutRunnableCallback()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected showDetailLayout()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mDetailLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 140
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mWaitLayout:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected startWaitState(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;Landroid/content/Context;)V
    .locals 1

    .line 162
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->setSelectHolder(Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;)V

    .line 165
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;->isReplyClicked()Z

    move-result p3

    const/4 v0, 0x0

    if-nez p3, :cond_1

    .line 166
    iget-object p3, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p3

    iget-object p3, p3, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz p3, :cond_0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_0

    .line 168
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    :goto_0
    move-object v0, p0

    .line 170
    iget-object p0, p2, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getKey()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v0

    .line 172
    :goto_1
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    move-result-object p1

    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->requestCoverPopup(Landroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method protected updateClearButtonVisibility()V
    .locals 1

    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->isOngoing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 177
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mClearButton:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public updateKnoxIcon()V
    .locals 2

    .line 191
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mAdapter:Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailAdapter;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mSecureIcon:Landroid/widget/ImageView;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;->updateKnoxIcon(Landroid/widget/ImageView;Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    return-void
.end method

.method protected updateShowInAppButtonVisibility()V
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mInfo:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getContentIntent()Landroid/app/PendingIntent;

    move-result-object v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 182
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentDetailItemViewHolder;->mOpenAppButton:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
