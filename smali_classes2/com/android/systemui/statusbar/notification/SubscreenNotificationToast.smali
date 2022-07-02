.class public Lcom/android/systemui/statusbar/notification/SubscreenNotificationToast;
.super Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;
.source "SubscreenNotificationToast.java"


# instance fields
.field private mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

.field private mVetoClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance p1, Lcom/android/systemui/statusbar/notification/SubscreenNotificationToast$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationToast$1;-><init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationToast;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationToast;->mVetoClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method


# virtual methods
.method makeView(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Z)V
    .locals 0

    .line 33
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationToast;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 36
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/systemui/R$layout;->subscreen_toast:I

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    :cond_0
    return-void
.end method

.method performClick()V
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate;->mCallback:Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$Callback;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationToast;->mEntry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationTemplate$Callback;->onDetailClicked(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
