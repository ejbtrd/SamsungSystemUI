.class Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;
.super Landroid/content/BroadcastReceiver;
.source "KeyguardSecUpdateMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/KeyguardSecUpdateMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)V
    .locals 0

    .line 297
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    .line 300
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "received broadcast "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyguardUpdateMonitor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "com.samsung.android.intent.action.RESPONSE_SERVICEBOX_REMOTEVIEWS"

    .line 304
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    const-string v0, "com.samsung.android.intent.action.RESPONSE_SERVICEBOX_INTERNAL_REMOTEVIEWS"

    .line 305
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    .line 308
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "android.intent.action.PACKAGE_DATA_CLEARED"

    const-string v4, "android.intent.action.PACKAGE_CHANGED"

    const-string v5, "android.intent.action.PACKAGE_REMOVED"

    const/4 v6, 0x0

    if-nez v2, :cond_7

    .line 309
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    .line 310
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v0, "com.samsung.intent.action.EMERGENCY_STATE_CHANGED"

    .line 343
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo p1, "reason"

    .line 344
    invoke-virtual {p2, p1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 345
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 p2, 0x51a

    .line 346
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 345
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    :cond_2
    const-string v0, "com.sec.android.intent.action.BLACK_MEMO"

    .line 350
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo p1, "state"

    .line 351
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "show"

    .line 352
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    .line 353
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e9

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "screen off memo state changed, state = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", running "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    .line 355
    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->access$000(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)Z

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " -> "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 354
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isScreenOn()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->access$000(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)Z

    move-result p1

    if-eqz p1, :cond_3

    if-nez p2, :cond_3

    .line 357
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x258

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 360
    :cond_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    invoke-static {p0, p2}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->access$100(Lcom/android/keyguard/KeyguardSecUpdateMonitor;Z)V

    goto/16 :goto_5

    :cond_4
    const-string v0, "com.samsung.keyguard.BIOMETRIC_LOCKOUT_RESET"

    .line 363
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 364
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    iget-object p2, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 365
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    iget-object p2, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 367
    :cond_5
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    iget-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-static {p0}, Lcom/android/keyguard/KeyguardSecUpdateMonitor;->access$200(Lcom/android/keyguard/KeyguardSecUpdateMonitor;)Ljava/lang/Runnable;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_5

    .line 371
    :cond_6
    sget-boolean v0, Lcom/android/systemui/LsRune;->LOCKUI_FACE_WIDGET_MEDIA_OUTPUT_REMOTE_VIEWS:Z

    if-eqz v0, :cond_10

    const-string/jumbo v0, "sec_qs_media_player_media_output_using_remote_views"

    .line 372
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_10

    .line 373
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x51b

    .line 374
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 373
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_5

    .line 311
    :cond_7
    :goto_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    if-nez v1, :cond_8

    return-void

    .line 316
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_1
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_a

    goto :goto_1

    :cond_a
    const/4 v1, 0x2

    goto :goto_1

    :sswitch_2
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_1

    :cond_b
    const/4 v1, 0x1

    goto :goto_1

    :sswitch_3
    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_c

    goto :goto_1

    :cond_c
    move v1, v6

    :goto_1
    const/16 p1, 0x517

    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x515

    goto :goto_2

    :pswitch_1
    move v0, p1

    goto :goto_2

    :pswitch_2
    const/16 v0, 0x519

    goto :goto_2

    :pswitch_3
    const/16 v0, 0x516

    .line 332
    :goto_2
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    .line 333
    iget-object v2, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    iget-object v2, v2, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    if-ne v0, p1, :cond_e

    .line 336
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 337
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "android.intent.extra.REPLACING"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput p1, v1, Landroid/os/Message;->arg1:I

    goto :goto_3

    .line 339
    :cond_d
    iput v6, v1, Landroid/os/Message;->arg1:I

    .line 342
    :cond_e
    :goto_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_5

    .line 306
    :cond_f
    :goto_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecUpdateMonitor$3;->this$0:Lcom/android/keyguard/KeyguardSecUpdateMonitor;

    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x518

    .line 307
    invoke-virtual {p0, p1, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 306
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_10
    :goto_5
    return-void

    :sswitch_data_0
    .sparse-switch
        0xa480416 -> :sswitch_3
        0xff13fb5 -> :sswitch_2
        0x1f50b9c2 -> :sswitch_1
        0x5c1076e2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
