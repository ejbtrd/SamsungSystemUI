.class public Lcom/android/systemui/statusbar/notification/row/SecGutInflater;
.super Ljava/lang/Object;
.source "SecGutInflater.java"


# direct methods
.method public static createNotificationMenuItem(Landroid/content/Context;II)Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;
    .locals 3

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 17
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 19
    invoke-virtual {v0, p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;

    .line 20
    new-instance v0, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;

    sget v1, Lcom/android/systemui/R$drawable;->quickpanel_ic_snooze:I

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/systemui/statusbar/notification/row/NotificationMenuRow$NotificationMenuItem;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/systemui/statusbar/notification/row/NotificationGuts$GutsContent;I)V

    return-object v0
.end method
