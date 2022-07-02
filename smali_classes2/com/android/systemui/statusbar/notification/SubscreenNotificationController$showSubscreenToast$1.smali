.class final Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$showSubscreenToast$1;
.super Ljava/lang/Object;
.source "SubscreenNotificationController.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->showSubscreenToast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$showSubscreenToast$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 245
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$showSubscreenToast$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->getNotificationActivityStarter()Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$showSubscreenToast$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getCurrentEntry$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v2

    if-nez v2, :cond_1

    move-object v2, v1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$showSubscreenToast$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getCurrentEntry$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object v3

    if-nez v3, :cond_2

    move-object v3, v1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v3

    :goto_1
    invoke-interface {v0, v2, v3}, Lcom/android/systemui/statusbar/notification/NotificationActivityStarter;->onNotificationClicked(Landroid/service/notification/StatusBarNotification;Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;)V

    .line 246
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$showSubscreenToast$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getStatusBarLazy$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Ldagger/Lazy;

    move-result-object v0

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->makeExpandedInvisibleWrapper()V

    .line 247
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController$showSubscreenToast$1;->this$0:Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;->access$getCurrentEntry$p(Lcom/android/systemui/statusbar/notification/SubscreenNotificationController;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    :goto_3
    const-string p0, " NOTIFICATION CLICKED - "

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "S.S.N."

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
