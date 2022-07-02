.class final Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;
.super Ljava/lang/Object;
.source "DcmMascotViewContainer.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->sendUnreadCountBroadcast()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const-string v0, "com.nttdocomo.android.screenlockservice"

    const-string v1, "exception "

    .line 163
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    const-string/jumbo v3, "sendUnreadCountBroadcast"

    invoke-static {v2, v3}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$log(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 165
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x4

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 166
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-static {v4}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$getBlockingQueue$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingDeque;->clear()V

    .line 167
    iget-object v4, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Landroid/content/Intent;

    invoke-static {}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$getDCM_SCREEN_LOCK_SERVICE_ACTION$cp()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 169
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-static {v5}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$getServiceConnection$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)Landroid/content/ServiceConnection;

    move-result-object v5

    .line 167
    invoke-virtual {v4, v0, v5, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2

    if-eqz v0, :cond_0

    .line 171
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$getBlockingQueue$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)Ljava/util/concurrent/BlockingDeque;

    move-result-object v0

    const-wide/16 v3, 0x5dc

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v3, v4, v5}, Ljava/util/concurrent/BlockingDeque;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;

    if-eqz v0, :cond_1

    .line 174
    invoke-interface {v0}, Lcom/nttdocomo/android/screenlockservice/IScreenLockService;->getUnreadCount()I

    move-result v0

    .line 175
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    const-string/jumbo v4, "unread count: "

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$log(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Ljava/lang/String;)V

    .line 176
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    const-string v5, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE_LOCAL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v5, "spcnt"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v4, "com.nttdocomo.android.screenlockservice.DCM_SCREEN"

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_1

    .line 180
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    const-string v2, "failed to bind service"

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$log(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    move v2, v3

    goto :goto_2

    :catch_2
    move-exception v0

    move v2, v3

    .line 187
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$log(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    move v2, v3

    .line 185
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$log(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Ljava/lang/String;)V

    goto :goto_2

    :catch_4
    move v2, v3

    .line 183
    :catch_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    const-string/jumbo v1, "no package exists: com.nttdocomo.android.screenlockservice"

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$log(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Ljava/lang/String;)V

    :cond_1
    :goto_2
    if-eqz v2, :cond_2

    .line 190
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$sendUnreadCountBroadcast$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$getServiceConnection$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)Landroid/content/ServiceConnection;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    :cond_2
    return-void
.end method
