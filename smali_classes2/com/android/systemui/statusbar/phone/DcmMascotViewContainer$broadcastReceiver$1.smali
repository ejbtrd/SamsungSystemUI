.class public final Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "DcmMascotViewContainer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;-><init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Ljava/util/concurrent/Executor;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/content/pm/PackageManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 76
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/content/Intent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "intent"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    const-string/jumbo v1, "onReceive "

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$log(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Ljava/lang/String;)V

    if-nez p1, :cond_0

    return-void

    .line 83
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v3, "com.android.internal.policy.impl.CARRIERMAIL_COUNT_UPDATE"

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_1

    :sswitch_1
    const-string p2, "jp.co.nttdocomo.carriermail.APP_LINK_RECEIVED_MESSAGE"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto/16 :goto_1

    .line 90
    :cond_1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-static {p2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$sendUnreadCountBroadcast(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)V

    .line 91
    invoke-static {v3, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 92
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$getRemoteViews$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)Landroid/widget/RemoteViews;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    goto/16 :goto_1

    :sswitch_2
    const-string p2, "android.intent.action.BOOT_COMPLETED"

    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_1

    .line 96
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$setBootCompleted$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Z)V

    .line 97
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$isWaitingForBootComplete$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 98
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$getRemoteViews$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)Landroid/widget/RemoteViews;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    .line 99
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-static {p0, v2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$setWaitingForBootComplete$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Z)V

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "com.nttdocomo.android.mascot.KEYGUARD_UPDATE"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto/16 :goto_1

    :cond_3
    const-string p1, "RemoteViews"

    .line 85
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/widget/RemoteViews;

    .line 86
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    const-string/jumbo v0, "mascotView: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$log(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Ljava/lang/String;)V

    .line 87
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->setMascotRemoteViews(Landroid/widget/RemoteViews;)V

    goto :goto_1

    :sswitch_4
    const-string v0, "com.nttdocomo.android.mascot.widget.LockScreenMascotWidget.ACTION_SCREEN_UNLOCK"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const-string p1, "eventType"

    .line 103
    invoke-virtual {p2, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 104
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "eventType "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$log(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;Ljava/lang/String;)V

    if-ltz p2, :cond_5

    .line 106
    invoke-static {}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$getMASCOT_ACTION$cp()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-ge p2, v0, :cond_5

    .line 107
    invoke-static {}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$getMASCOT_ACTION$cp()[Ljava/lang/String;

    move-result-object v0

    aget-object v0, v0, p2

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_6

    goto :goto_1

    :cond_6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer$broadcastReceiver$1;->this$0:Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;

    .line 108
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;->access$getStatusBar$p(Lcom/android/systemui/statusbar/phone/DcmMascotViewContainer;)Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    .line 109
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->userActivity()V

    .line 110
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.nttdocomo.android.mascot"

    const-string v3, "com.nttdocomo.android.mascot.application.MascotApplicationProxy"

    .line 111
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "android.intent.category.LAUNCHER"

    .line 112
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    invoke-virtual {v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 p1, 0x10200000

    .line 114
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 115
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 110
    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->startActivity(Landroid/content/Intent;Z)V

    :cond_7
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x51c44600 -> :sswitch_4
        -0x133a78b0 -> :sswitch_3
        0x2f94f923 -> :sswitch_2
        0x351fef70 -> :sswitch_1
        0x4f50c6c0 -> :sswitch_0
    .end sparse-switch
.end method
