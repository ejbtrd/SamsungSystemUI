.class public Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;
.super Ljava/lang/Object;
.source "SubscreenNotificationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final BASE_GRAY_LEVEL:I

.field private mAppName:Ljava/lang/String;

.field private mAppPrimaryDefaultColor:I

.field private mBigText:Ljava/lang/String;

.field private mBigTitle:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mChildCount:I

.field private mContent:Ljava/lang/String;

.field private mContentIntent:Landroid/app/PendingIntent;

.field private mContentView:Landroid/widget/RemoteViews;

.field private mContext:Landroid/content/Context;

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mGroupSummary:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mInBox:[Ljava/lang/String;

.field private mIsGroupConversation:Z

.field private mIsMessagingStyle:Z

.field private mKey:Ljava/lang/String;

.field private mKnoxBadgeDrawable:Landroid/graphics/drawable/Drawable;

.field private mMessageingStyleInfoArray:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOngoing:Z

.field private mPkg:Ljava/lang/String;

.field private mRemoteinput:Z

.field private mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field private mShowWhen:Z

.field private mSubText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mWhen:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 82
    new-instance v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$1;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$1;-><init>()V

    sput-object v0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xcc

    .line 43
    iput v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->BASE_GRAY_LEVEL:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 50
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mInBox:[Ljava/lang/String;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    .line 75
    const-class p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 p1, 0xcc

    .line 43
    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->BASE_GRAY_LEVEL:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 50
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mInBox:[Ljava/lang/String;

    .line 71
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    return-void
.end method

.method private setBadgeDrawable()V
    .locals 4

    const/4 v0, 0x0

    .line 321
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKnoxBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 322
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 324
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 325
    instance-of v3, v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    if-eqz v3, :cond_0

    .line 326
    check-cast v2, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;

    .line 327
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/row/NotificationContentView;->getContractedChild()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    const v0, 0x1020466

    .line 329
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 330
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 331
    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKnoxBadgeDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private setGroupCount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 1

    .line 195
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mChildCount:I

    :cond_0
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getAppName()Ljava/lang/String;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    return-object p0
.end method

.method public getBigText()Ljava/lang/String;
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBigText:Ljava/lang/String;

    return-object p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getContent()Ljava/lang/String;
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    return-object p0
.end method

.method public getContentHiddenText(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)Ljava/lang/String;
    .locals 4

    .line 341
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->isGroupSummary()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isSummaryWithChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 342
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getChildrenContainer()Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/stack/NotificationChildrenContainer;->getNotificationChildCount()I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    .line 346
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$plurals;->plural_notification_count:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 347
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 348
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getContentIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContentIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public getContentView()Landroid/widget/RemoteViews;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContentView:Landroid/widget/RemoteViews;

    return-object p0
.end method

.method public getCustomViewText()Ljava/lang/String;
    .locals 1

    .line 352
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->subscreen_detail_adapter_custom_view:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDetailViewContentString()Ljava/lang/String;
    .locals 1

    .line 356
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getBigText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getBigText()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 359
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->getContent()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 119
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 107
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getKnoxBadgeImage()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 191
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKnoxBadgeDrawable:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method public getMessageingStyleInfoArray()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 0

    .line 111
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mPkg:Ljava/lang/String;

    return-object p0
.end method

.method public getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method public getSbn()Landroid/service/notification/StatusBarNotification;
    .locals 0

    .line 135
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    return-object p0
.end method

.method public getSubText()Ljava/lang/String;
    .locals 0

    .line 131
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSubText:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 95
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public getWhen()J
    .locals 2

    .line 183
    iget-wide v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mWhen:J

    return-wide v0
.end method

.method public getchildCount()I
    .locals 0

    .line 159
    iget p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mChildCount:I

    return p0
.end method

.method public isGroupConversation()Z
    .locals 0

    .line 155
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsGroupConversation:Z

    return p0
.end method

.method public isGroupSummary()Z
    .locals 0

    .line 143
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mGroupSummary:Z

    return p0
.end method

.method public isMessagingStyle()Z
    .locals 0

    .line 151
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    return p0
.end method

.method public isOngoing()Z
    .locals 0

    .line 139
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mOngoing:Z

    return p0
.end method

.method public isRemoteinput()Z
    .locals 0

    .line 147
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    return p0
.end method

.method public isShowWhen()Z
    .locals 0

    .line 187
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mShowWhen:Z

    return p0
.end method

.method public setItemsData(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 11

    .line 202
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 205
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    .line 206
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 207
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mPkg:Ljava/lang/String;

    .line 209
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mOngoing:Z

    .line 210
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 211
    iget-object v1, v0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    .line 213
    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mGroupSummary:Z

    if-eqz v2, :cond_1

    .line 215
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->setGroupCount(Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    :cond_1
    const/4 v2, 0x0

    .line 218
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    .line 219
    iget-object v3, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    if-eqz v3, :cond_3

    .line 220
    array-length v3, v3

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    .line 222
    iget-object v5, v0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    .line 224
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mRemoteinput:Z

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 231
    :cond_3
    :goto_1
    const-class v3, Landroid/app/Notification$MessagingStyle;

    invoke-virtual {v0}, Landroid/app/Notification;->getNotificationStyle()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsMessagingStyle:Z

    const-string v4, "android.title"

    const/4 v5, 0x0

    if-eqz v3, :cond_b

    const-string v3, "android.messages"

    .line 235
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 236
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 238
    invoke-static {v3}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$MessagingStyle$Message;

    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v6

    goto :goto_2

    :cond_4
    move-object v6, v5

    :goto_2
    const-string v7, "android.conversationTitle"

    .line 240
    invoke-virtual {v1, v7}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v7

    check-cast v7, Ljava/lang/CharSequence;

    const-string v8, "android.isGroupConversation"

    .line 241
    invoke-virtual {v1, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIsGroupConversation:Z

    if-eqz v8, :cond_5

    .line 243
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_3

    :cond_5
    if-eqz v6, :cond_6

    .line 245
    invoke-virtual {v6}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_3

    :cond_6
    if-eqz v7, :cond_7

    goto :goto_3

    .line 249
    :cond_7
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    .line 253
    :goto_3
    invoke-static {v3}, Landroid/app/Notification$MessagingStyle$Message;->getMessagesFromBundleArray([Landroid/os/Parcelable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/Notification$MessagingStyle$Message;

    .line 254
    new-instance v8, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;)V

    .line 255
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    if-eqz v9, :cond_8

    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getText()Ljava/lang/CharSequence;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v9

    goto :goto_5

    :cond_8
    const-string v9, ""

    :goto_5
    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->setContentText(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getMessgeUriImage()Landroid/graphics/Bitmap;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 258
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    if-eqz v9, :cond_9

    .line 259
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getDataUri()Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getMessgeUri()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 260
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->getEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getMessgeUriImage()Landroid/graphics/Bitmap;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->setUriImage(Landroid/graphics/Bitmap;)V

    .line 262
    :cond_9
    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v9

    if-eqz v9, :cond_a

    invoke-virtual {v6}, Landroid/app/Notification$MessagingStyle$Message;->getSenderPerson()Landroid/app/Person;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Person;->getName()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_6

    .line 263
    :cond_a
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 264
    :goto_6
    invoke-virtual {v8, v6}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo$MessagingStyleInfo;->setSenderText(Ljava/lang/String;)V

    .line 265
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mMessageingStyleInfoArray:Ljava/util/ArrayList;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 268
    :cond_b
    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v7

    :cond_c
    if-nez v7, :cond_d

    move-object p1, v5

    goto :goto_7

    .line 270
    :cond_d
    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_7
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mTitle:Ljava/lang/String;

    const-string p1, "android.text"

    .line 272
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_e

    move-object p1, v5

    goto :goto_8

    .line 273
    :cond_e
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_8
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContent:Ljava/lang/String;

    const-string p1, "android.bigText"

    .line 275
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_f

    move-object p1, v5

    goto :goto_9

    .line 276
    :cond_f
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_9
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBigText:Ljava/lang/String;

    const-string p1, "android.title.big"

    .line 278
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_10

    move-object p1, v5

    goto :goto_a

    .line 279
    :cond_10
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_a
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBigTitle:Ljava/lang/String;

    const-string p1, "android.subText"

    .line 281
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-nez p1, :cond_11

    move-object p1, v5

    goto :goto_b

    .line 282
    :cond_11
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_b
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSubText:Ljava/lang/String;

    const-string p1, "android.picture"

    .line 284
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mBitmap:Landroid/graphics/Bitmap;

    .line 293
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    :try_start_0
    const-string v3, "android.substName"

    .line 295
    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 296
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const v6, 0x402080

    invoke-virtual {p1, v4, v6}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 298
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContext:Landroid/content/Context;

    sget v7, Lcom/android/systemui/R$color;->subscreen_notification_primary_default:I

    invoke-virtual {v6, v7}, Landroid/content/Context;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppPrimaryDefaultColor:I

    .line 299
    invoke-virtual {v4, p1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_12

    .line 301
    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_c

    :cond_12
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_c
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;

    const-string v3, "\n"

    const-string v4, " "

    .line 302
    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mAppName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_d

    :catch_0
    move-exception p1

    .line 304
    invoke-virtual {p1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :goto_d
    const-string p1, "android.textLines"

    .line 306
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getCharSequenceArray(Ljava/lang/String;)[Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_14

    .line 308
    :goto_e
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mInBox:[Ljava/lang/String;

    array-length v3, v3

    array-length v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-ge v2, v3, :cond_14

    .line 309
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mInBox:[Ljava/lang/String;

    aget-object v4, p1, v2

    if-nez v4, :cond_13

    move-object v4, v5

    goto :goto_f

    :cond_13
    aget-object v4, p1, v2

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_f
    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 312
    :cond_14
    iget-object p1, v0, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContentIntent:Landroid/app/PendingIntent;

    .line 313
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object p1, p1, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mContentView:Landroid/widget/RemoteViews;

    .line 314
    iget-wide v2, v0, Landroid/app/Notification;->when:J

    iput-wide v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mWhen:J

    const-string p1, "android.showWhen"

    .line 315
    invoke-virtual {v1, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->mShowWhen:Z

    .line 317
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfo;->setBadgeDrawable()V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
