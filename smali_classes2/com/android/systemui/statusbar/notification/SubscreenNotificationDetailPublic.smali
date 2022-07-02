.class public Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailPublic;
.super Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;
.source "SubscreenNotificationDetailPublic.java"


# instance fields
.field private mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mVetoClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;-><init>(Landroid/content/Context;)V

    .line 26
    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailPublic$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailPublic$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailPublic;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailPublic;->mVetoClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method makeView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 11

    .line 40
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_10

    .line 41
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailPublic;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 44
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    .line 46
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->subscreen_notification_detail_popup_top:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 48
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->subscreen_notification_detail_popup_full:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 50
    :cond_1
    sget-boolean v1, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v1, :cond_3

    if-eqz p2, :cond_2

    .line 52
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->clear_cover_subscreen_notification_detail_popup_top:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 54
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->clear_cover_subscreen_notification_detail_popup_full:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    goto :goto_0

    .line 57
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$layout;->subscreen_notification_detail:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 61
    :goto_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v2

    iget-object v2, v2, Landroid/app/Notification;->publicVersion:Landroid/app/Notification;

    iget-object v2, v2, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.title"

    .line 62
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    const-string v4, "android.text"

    .line 63
    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 66
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 67
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Landroid/service/notification/StatusBarNotification;->getPackageContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v5

    goto :goto_1

    :cond_4
    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    .line 68
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getStatusBarIcon()Lcom/android/internal/statusbar/StatusBarIcon;

    move-result-object v7

    .line 68
    invoke-static {v6, v5, v7}, Lcom/android/systemui/statusbar/StatusBarIconView;->getIcon(Landroid/content/Context;Landroid/content/Context;Lcom/android/internal/statusbar/StatusBarIcon;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 70
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v6

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->color:I

    invoke-virtual {p0, v5, v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->adjustIconDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 73
    const-class v6, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "android.conversationIcon"

    .line 74
    invoke-virtual {v2, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Landroid/graphics/drawable/Icon;

    const-string v8, "android.largeIcon"

    .line 75
    invoke-virtual {v2, v8}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Icon;

    const/4 v8, 0x0

    .line 77
    iget-object v9, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    .line 79
    :try_start_0
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    .line 80
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const/16 v10, 0x80

    invoke-virtual {v9, p1, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    if-nez v0, :cond_5

    .line 81
    sget-boolean v0, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz v0, :cond_6

    .line 82
    :cond_5
    invoke-virtual {p1, v9}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 89
    :cond_6
    :goto_2
    sget p1, Lcom/android/systemui/R$id;->subscreen_notification_sub_text:I

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 90
    sget v0, Lcom/android/systemui/R$id;->subscreen_notification_main_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 91
    sget v9, Lcom/android/systemui/R$id;->subscreen_notification_header_icon:I

    invoke-virtual {v1, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    .line 93
    invoke-virtual {p0, v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->removeSpannableColor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->removeSpannableColor(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    sget-boolean p1, Lcom/android/systemui/QpRune;->NOTI_SUBSCREEN_NOTIFICATION_SECOND:Z

    if-nez p1, :cond_8

    sget-boolean p1, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz p1, :cond_7

    goto :goto_3

    .line 127
    :cond_7
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_6

    :cond_8
    :goto_3
    const/4 p1, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_b

    if-eqz v6, :cond_b

    if-nez v7, :cond_9

    if-eqz v2, :cond_b

    :cond_9
    if-eqz v7, :cond_a

    .line 100
    invoke-virtual {v9, v7}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_4

    .line 102
    :cond_a
    invoke-virtual {v9, v2}, Landroid/widget/ImageView;->setImageIcon(Landroid/graphics/drawable/Icon;)V

    goto :goto_4

    :cond_b
    if-eqz v8, :cond_c

    .line 106
    invoke-virtual {v9, v8}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    .line 109
    :cond_c
    invoke-virtual {v9, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    move p1, v3

    :goto_4
    const/16 v2, 0x8

    if-nez p2, :cond_e

    .line 114
    sget v4, Lcom/android/systemui/R$id;->subscreen_notification_sub_icon:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    if-eqz p1, :cond_d

    .line 116
    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 117
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_5

    .line 119
    :cond_d
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_e
    :goto_5
    if-eqz p2, :cond_f

    .line 123
    sget-boolean p1, Lcom/android/systemui/QpRune;->NOTI_CLEAR_COVER_NOTIFICATION:Z

    if-eqz p1, :cond_f

    .line 124
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :cond_f
    :goto_6
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mMarqueeText:Landroid/widget/TextView;

    :cond_10
    return-void
.end method

.method performClick()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mCallback:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$Callback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationDetailPublic;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$Callback;->onDetailClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
