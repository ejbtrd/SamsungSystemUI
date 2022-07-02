.class public final synthetic Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

.field public final synthetic f$1:Landroid/app/NotificationChannel;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Landroid/app/NotificationChannel;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda2;->f$1:Landroid/app/NotificationChannel;

    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda2;->f$2:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda2;->f$1:Landroid/app/NotificationChannel;

    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo$$ExternalSyntheticLambda2;->f$2:I

    invoke-static {v0, v1, p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;->$r8$lambda$gZHveOqAvoS3gRmCik0oXOnV7j0(Lcom/android/systemui/statusbar/notification/row/SecNotificationInfo;Landroid/app/NotificationChannel;ILandroid/view/View;)V

    return-void
.end method
