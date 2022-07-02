.class public Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;
.super Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;
.source "SubscreenNotificationDetail.java"


# instance fields
.field private mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mVetoClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;-><init>(Landroid/content/Context;)V

    .line 33
    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;->mVetoClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method makeView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 11

    .line 47
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_12

    .line 48
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 51
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 53
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->subscreen_notification_detail_popup_top:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->subscreen_notification_detail_popup_full:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 57
    :cond_1
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->clear_cover_subscreen_notification_detail_popup_top:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 61
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->clear_cover_subscreen_notification_detail_popup_full:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->subscreen_notification_detail:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 67
    :goto_0
    const-class v1, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 68
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 v3, 0x0

    const-string v4, "android.title"

    const/4 v5, 0x0

    if-eqz v1, :cond_7

    const-string v6, "android.messages"

    .line 72
    invoke-virtual {v2, v6}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v6

    .line 73
    invoke-static {v6}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 75
    invoke-static {v6}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v6

    goto :goto_1

    :cond_4
    move-object v6, v3

    :goto_1
    const-string v7, "android.conversationTitle"

    .line 77
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    if-eqz v6, :cond_5

    .line 79
    invoke-virtual {v6}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_2

    :cond_5
    if-eqz v7, :cond_6

    goto :goto_2

    .line 83
    :cond_6
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_2

    .line 86
    :cond_7
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_2
    const-string v4, "android.text"

    .line 88
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 90
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    if-eqz v6, :cond_8

    .line 91
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v8}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v6

    goto :goto_3

    :cond_8
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    .line 92
    :goto_3
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    .line 93
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v9

    .line 92
    invoke-static {v8, v6, v9}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    .line 94
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v8

    invoke-virtual {v8}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v8

    iget v8, v8, Landroid/app/Notification;->color:I

    invoke-virtual {p0, v6, v8}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->adjustIconDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    const-string v8, "android.conversationIcon"

    .line 97
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v8

    check-cast v8, Landroid/graphics/drawable/Icon;

    const-string v9, "android.largeIcon"

    .line 98
    invoke-virtual {v2, v9}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    .line 100
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 102
    :try_start_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v10, 0x80

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 104
    invoke-virtual {p1, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 110
    :goto_4
    sget p1, Lcom/android/systemui/R$id;->subscreen_notification_sub_text:I

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 111
    sget v9, Lcom/android/systemui/R$id;->subscreen_notification_main_text:I

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 112
    sget v10, Lcom/android/systemui/R$id;->subscreen_notification_header_icon:I

    invoke-virtual {v0, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/ImageView;

    .line 114
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->removeSpannableColor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {p1, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->removeSpannableColor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 117
    sget-boolean v4, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-nez v4, :cond_a

    sget-boolean v4, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v4, :cond_9

    goto :goto_5

    .line 148
    :cond_9
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/high16 p2, -0x1000000

    .line 151
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 152
    invoke-virtual {v9, p2}, Landroid/widget/TextView;->setBackgroundColor(I)V

    goto :goto_8

    :cond_a
    :goto_5
    const/4 p1, 0x1

    if-nez p2, :cond_d

    if-eqz v1, :cond_d

    if-nez v8, :cond_b

    if-eqz v2, :cond_d

    :cond_b
    if-eqz v8, :cond_c

    .line 121
    invoke-virtual {v10, v8}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_6

    .line 123
    :cond_c
    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_6

    :cond_d
    if-eqz v3, :cond_e

    .line 127
    invoke-virtual {v10, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    .line 130
    :cond_e
    invoke-virtual {v10, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move p1, v5

    :goto_6
    const/16 v1, 0x8

    if-nez p2, :cond_10

    .line 135
    sget v2, Lcom/android/systemui/R$id;->subscreen_notification_sub_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_f

    .line 137
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 138
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_7

    .line 140
    :cond_f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_10
    :goto_7
    if-eqz p2, :cond_11

    .line 144
    sget-boolean p1, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz p1, :cond_11

    .line 145
    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 159
    :cond_11
    :goto_8
    iput-object v9, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mMarqueeText:Landroid/widget/TextView;

    :cond_12
    return-void
.end method

.method performClick()V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mCallback:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$Callback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetail;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$Callback;->onDetailClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
