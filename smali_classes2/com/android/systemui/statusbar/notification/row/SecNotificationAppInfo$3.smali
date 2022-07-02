.class Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$3;
.super Ljava/lang/Object;
.source "SecNotificationAppInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->initInlineTurnOffButton()V
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

    .line 335
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$3;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 338
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$3;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->access$500(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 339
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$3;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->access$600(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 340
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo$3;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;->access$700(Lcom/android/systemui/statusbar/notification/row/SecNotificationAppInfo;Z)V

    return-void
.end method
