.class public Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;
.super Ljava/lang/Object;
.source "SuperStatusBarViewFactory.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

.field private mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

.field private final mNotificationShelfComponentBuilder:Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;

.field private mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

.field private mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

.field private mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;Lcom/android/systemui/statusbar/NotificationShelfManager;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mContext:Landroid/content/Context;

    .line 60
    iput-object p2, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    .line 61
    iput-object p3, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShelfComponentBuilder:Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;

    .line 63
    iput-object p4, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    return-void
.end method


# virtual methods
.method public getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
    .locals 3

    .line 73
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    if-eqz v0, :cond_0

    return-object v0

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 78
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->super_notification_shade:I

    const/4 v2, 0x0

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    if-eqz v0, :cond_1

    return-object v0

    .line 82
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "R.layout.super_notification_shade could not be properly inflated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNotificationShelfController(Landroid/view/ViewGroup;)Lcom/android/systemui/statusbar/NotificationShelfController;
    .locals 3

    .line 119
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    if-eqz v0, :cond_0

    return-object v0

    .line 125
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mShelfManager:Lcom/android/systemui/statusbar/NotificationShelfManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationShelfManager;->getShelfLayoutID()I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    .line 129
    invoke-virtual {v1, v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz p1, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShelfComponentBuilder:Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;

    .line 138
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;->notificationShelf(Lcom/android/systemui/statusbar/NotificationShelf;)Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;

    move-result-object p1

    .line 139
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent$Builder;->build()Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent;

    move-result-object p1

    .line 140
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationShelfComponent;->getNotificationShelfController()Lcom/android/systemui/statusbar/NotificationShelfController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    .line 141
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/NotificationShelfController;->init()V

    .line 143
    iget-object p0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShelfController:Lcom/android/systemui/statusbar/NotificationShelfController;

    return-object p0

    .line 133
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "R.layout.status_bar_notification_shelf could not be properly inflated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStatusBarWindowView()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .locals 3

    .line 94
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_0

    return-object v0

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mContext:Landroid/content/Context;

    .line 100
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->super_status_bar:I

    const/4 v2, 0x0

    .line 100
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_1

    return-object v0

    .line 103
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "R.layout.super_status_bar could not be properly inflated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
