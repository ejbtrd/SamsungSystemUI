.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;
.super Landroid/content/BroadcastReceiver;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mReceivedBackgroundUserIntent:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V
    .locals 0

    .line 565
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 567
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->mReceivedBackgroundUserIntent:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    .line 579
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.intent.extra.user_handle"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, -0x2710

    if-eqz v0, :cond_d

    .line 580
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    .line 582
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/4 v5, 0x0

    iput-object v5, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mExitGuestDialog:Landroid/app/AlertDialog;

    :cond_0
    const/4 v0, -0x1

    .line 585
    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 586
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 587
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$800(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v5, v2

    :goto_0
    if-ge v5, v1, :cond_7

    .line 589
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$800(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    .line 590
    iget-object v7, v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    if-nez v7, :cond_1

    goto :goto_2

    .line 591
    :cond_1
    iget v7, v7, Landroid/content/pm/UserInfo;->id:I

    if-ne v7, p2, :cond_2

    move v7, v3

    goto :goto_1

    :cond_2
    move v7, v2

    .line 592
    :goto_1
    iget-boolean v8, v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isCurrent:Z

    if-eq v8, v7, :cond_3

    .line 593
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v8}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$800(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v6, v7}, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->copyWithIsCurrent(Z)Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_3
    if-eqz v7, :cond_4

    .line 595
    iget-boolean v7, v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isGuest:Z

    if-nez v7, :cond_4

    .line 596
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v8, v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->info:Landroid/content/pm/UserInfo;

    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v8}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1002(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    :cond_4
    if-eqz v0, :cond_5

    .line 598
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v7

    if-nez v7, :cond_6

    :cond_5
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/UserSwitcherController$UserRecord;->isRestricted:Z

    if-eqz v6, :cond_6

    .line 600
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v6}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$800(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v5, v5, -0x1

    :cond_6
    :goto_2
    add-int/2addr v5, v3

    goto :goto_0

    .line 606
    :cond_7
    invoke-static {}, Lcom/android/systemui/Operator;->isVerizonBrandedTablet()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 607
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1, p2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1100(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    .line 611
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$900(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    .line 614
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I

    move-result v1

    if-eq v1, v4, :cond_9

    .line 615
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Intent;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 616
    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1200(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 615
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->stopServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Z

    .line 617
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1, v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1202(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    :cond_9
    if-eqz v0, :cond_a

    .line 621
    iget v1, v0, Landroid/content/pm/UserInfo;->id:I

    if-eqz v1, :cond_a

    .line 622
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Landroid/content/Intent;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    .line 623
    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 622
    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 624
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1202(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)I

    .line 627
    :cond_a
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1400(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/policy/SecUserSwitcherControlHelper;->dismissUserSwitchingDialog(I)V

    .line 629
    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_MANAGE_TWO_PHONE:Z

    if-eqz p1, :cond_b

    .line 630
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->mReceivedBackgroundUserIntent:Z

    if-eqz p1, :cond_b

    .line 631
    const-class p1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;

    invoke-interface {p1, p2}, Lcom/android/systemui/statusbar/phone/TwoPhoneModeController;->showDoneToast(I)V

    .line 635
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$500(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 640
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1500(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)V

    :cond_c
    move v2, v3

    goto :goto_3

    .line 642
    :cond_d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_BACKGROUND"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e

    sget-boolean p1, Lcom/android/systemui/QpRune;->QUICK_MANAGE_TWO_PHONE:Z

    if-eqz p1, :cond_e

    .line 643
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "receive Intent.ACTION_USER_BACKGROUND: mReceivedBackgroundUserIntent will be true: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->mReceivedBackgroundUserIntent:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "UserSwitcherController"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->mReceivedBackgroundUserIntent:Z

    goto :goto_3

    .line 645
    :cond_e
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_f

    .line 646
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    goto :goto_3

    .line 648
    :cond_f
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 650
    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_10

    return-void

    .line 655
    :cond_10
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p1, v4}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$300(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    if-eqz v2, :cond_11

    .line 657
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$4;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1600(Lcom/android/systemui/statusbar/policy/UserSwitcherController;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_11
    return-void
.end method
