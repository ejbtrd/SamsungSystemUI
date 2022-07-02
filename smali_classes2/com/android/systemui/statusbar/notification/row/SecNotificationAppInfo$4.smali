.class Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$4;
.super Ljava/lang/Object;
.source "SecNotificationAppInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->initBottomTurnOffButton(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)V
    .locals 0

    .line 369
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$4;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 372
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$4;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->access$802(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;Z)Z

    .line 373
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$4;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->access$102(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;Z)Z

    .line 374
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$4;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->access$300(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)Lcom/android/systemui/statusbar/notification/row/NotificationGuts;

    move-result-object p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$4;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->access$900(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)Landroid/widget/TextView;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/row/NotificationGuts;->closeControls(Landroid/view/View;Z)V

    return-void
.end method
