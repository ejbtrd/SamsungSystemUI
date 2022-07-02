.class Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;
.super Ljava/lang/Object;
.source "SecNotificationConversationInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpdateChannelRunnable"
.end annotation


# instance fields
.field private final mAction:I

.field private final mAppPkg:Ljava/lang/String;

.field private final mAppUid:I

.field private mChannelToUpdate:Landroid/app/NotificationChannel;

.field private final mINotificationManager:Landroid/app/INotificationManager;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;


# direct methods
.method public static synthetic $r8$lambda$vcmaeH2PHh30Vn5vsrOJbGBZhu0(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->lambda$run$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;Landroid/app/INotificationManager;Ljava/lang/String;IILandroid/app/NotificationChannel;)V
    .locals 0

    .line 563
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 564
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    .line 565
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mAppPkg:Ljava/lang/String;

    .line 566
    iput p4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mAppUid:I

    .line 567
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 568
    iput p5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mAction:I

    return-void
.end method

.method private synthetic lambda$run$0()V
    .locals 1

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->access$1100(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/wmshell/BubblesManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;

    .line 587
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->access$1200(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/wmshell/BubblesManager;->onUserSetImportantConversation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 574
    :try_start_0
    iget v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mAction:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v0, :cond_7

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_1

    const/4 v2, 0x6

    if-eq v0, v2, :cond_0

    goto/16 :goto_0

    .line 614
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->setImportance(I)V

    goto/16 :goto_0

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    const/16 v5, -0x3e8

    if-eq v0, v5, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 604
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getImportance()I

    move-result v0

    if-lt v0, v2, :cond_3

    .line 605
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v3}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 607
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 608
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 609
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    goto/16 :goto_0

    .line 576
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 577
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 578
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v5}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 579
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->access$900(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)I

    move-result v0

    if-nez v0, :cond_5

    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mAppPkg:Ljava/lang/String;

    iget v7, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mAppUid:I

    invoke-interface {v0, v6, v7, v3}, Landroid/app/INotificationManager;->setBubblesAllowed(Ljava/lang/String;II)V

    .line 583
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->access$1000(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v6, "notification_bubbles"

    const/4 v7, -0x2

    invoke-static {v0, v6, v4, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v5, :cond_6

    .line 585
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->access$1100(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;)Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->this$0:Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;

    new-instance v4, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;)V

    invoke-virtual {v0, v4}, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo;->post(Ljava/lang/Runnable;)Z

    .line 591
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 592
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v4

    .line 591
    invoke-static {v4, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    goto :goto_0

    .line 595
    :cond_7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    .line 596
    invoke-virtual {v0}, Landroid/app/NotificationChannel;->getOriginalImportance()I

    move-result v5

    .line 595
    invoke-static {v5, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/app/NotificationChannel;->setImportance(I)V

    .line 597
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0}, Landroid/app/NotificationChannel;->isImportantConversation()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 598
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->setImportantConversation(Z)V

    .line 599
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-virtual {v0, v4}, Landroid/app/NotificationChannel;->setAllowBubbles(Z)V

    .line 618
    :cond_8
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mAppPkg:Ljava/lang/String;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mAppUid:I

    iget-object v5, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-interface {v0, v2, v4, v5}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    .line 622
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/SecNotificationConversationInfo$UpdateChannelRunnable;->mAction:I

    if-ne p0, v3, :cond_9

    const-string/jumbo p0, "priority"

    :goto_1
    move-object v5, p0

    goto :goto_2

    :cond_9
    if-ne p0, v1, :cond_a

    const-string/jumbo p0, "silent"

    goto :goto_1

    :cond_a
    const-string p0, "alert"

    goto :goto_1

    :goto_2
    const-string v0, "QPN001"

    const-string v1, "QPNE0014"

    const-string/jumbo v2, "type"

    const-string v3, "conversation"

    const-string/jumbo v4, "settings"

    .line 624
    invoke-static/range {v0 .. v5}, Lcom/android/systemui/util/SystemUIAnalytics;->sendEventCDLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    const-string v0, "ConversationGuts"

    const-string v1, "Unable to update notification channel"

    .line 630
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method
