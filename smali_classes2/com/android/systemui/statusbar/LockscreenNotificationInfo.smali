.class public Lcom/android/systemui/statusbar/LockscreenNotificationInfo;
.super Ljava/lang/Object;
.source "LockscreenNotificationInfo.java"


# instance fields
.field private mColor:I

.field private mKey:Ljava/lang/String;

.field private mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

.field private mSbn:Landroid/service/notification/StatusBarNotification;

.field public mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mColor:I

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-object p0
.end method

.method public getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    return-object p0
.end method

.method public getStatusBarNotification()Landroid/service/notification/StatusBarNotification;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    return-object p0
.end method

.method public setInfoData(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 1

    .line 77
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getIcons()Lcom/android/systemui/statusbar/notification/icon/IconPack;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/icon/IconPack;->getStatusBarIcon()Lcom/android/systemui/statusbar/StatusBarIconView;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mStatusBarIcon:Lcom/android/systemui/statusbar/StatusBarIconView;

    .line 78
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mSbn:Landroid/service/notification/StatusBarNotification;

    .line 79
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mKey:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/LockscreenNotificationInfo;->mRow:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method
