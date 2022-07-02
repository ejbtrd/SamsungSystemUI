.class public Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SubscreenParentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field protected mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

.field protected mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

.field private mNotificationRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method protected animateAlphaRecyclerView(Ljava/lang/Runnable;JFF)V
    .locals 8

    .line 62
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getNotificaitonRecyclerView()Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 63
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;->getNotificaitonRecyclerView()Lcom/android/systemui/statusbar/notification/SubscreenRecyclerView;

    move-result-object v2

    move-object v3, p1

    move-wide v4, p2

    move v6, p4

    move v7, p5

    invoke-virtual/range {v1 .. v7}, Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;->alphaViewAnimated(Landroid/view/View;Ljava/lang/Runnable;JFF)V

    :cond_0
    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getNotificationAnimatorManager()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    return-object p0
.end method

.method public getNotificationInfoManager()Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    return-object p0
.end method

.method public getSubRoomNotification()Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setNotificationAnimatorManager(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationAnimatorManager:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotificaitonAnimatorManager;

    return-void
.end method

.method public setNotificationInfoManager(Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationInfoManager:Lcom/android/systemui/statusbar/notification/SubscreenNotificationInfoManager;

    return-void
.end method

.method public setRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mNotificationRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method public setSubRoomNotification(Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenParentAdapter;->mSubRoomNotification:Lcom/android/systemui/statusbar/notification/SubscreenSubRoomNotification;

    return-void
.end method
