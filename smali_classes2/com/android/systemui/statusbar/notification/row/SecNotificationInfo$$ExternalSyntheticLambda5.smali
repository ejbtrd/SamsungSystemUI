.class public final synthetic Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationInfo$OnAppSettingsClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

.field public final synthetic f$1:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

.field public final synthetic f$2:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

.field public final synthetic f$3:Landroid/service/notification/StatusBarNotification;

.field public final synthetic f$4:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda5;->f$1:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda5;->f$2:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda5;->f$3:Landroid/service/notification/StatusBarNotification;

    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda5;->f$4:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;Landroid/content/Intent;)V
    .locals 7

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda5;->f$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda5;->f$1:Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda5;->f$2:Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda5;->f$3:Landroid/service/notification/StatusBarNotification;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda5;->f$4:Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-object v5, p1

    move-object v6, p2

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->$r8$lambda$cI-UpDxnkFlIAWIqYoMLC6rBnfE(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Lcom/android/systemui/statusbar/notification/row/NotificationGuts;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;Landroid/view/View;Landroid/content/Intent;)V

    return-void
.end method
