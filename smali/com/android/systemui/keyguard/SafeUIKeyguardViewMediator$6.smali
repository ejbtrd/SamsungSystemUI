.class Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;
.super Landroid/os/Handler;
.source "SafeUIKeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .locals 0

    .line 1843
    iput-object p1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1846
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string p1, "KeyguardViewMediator#handleMessage CANCEL_KEYGUARD_EXIT_ANIM"

    .line 1924
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1926
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$5000(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 1927
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_2

    .line 1936
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$5100(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    goto/16 :goto_2

    .line 1862
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$3700(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    goto/16 :goto_2

    .line 1880
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$4100(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    goto/16 :goto_2

    :pswitch_4
    const-string p1, "KeyguardViewMediator#handleMessage NOTIFY_SCREEN_TURNED_ON"

    .line 1874
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1876
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$4000(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 1877
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_2

    :pswitch_5
    const-string p1, "KeyguardViewMediator#handleMessage NOTIFY_STARTED_WAKING_UP"

    .line 1883
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1885
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$4200(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 1886
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_2

    :pswitch_6
    const-string p0, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_PENDING_TIMEOUT"

    .line 1930
    invoke-static {p0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    const-string p0, "KeyguardViewMediator"

    const-string p1, "Timeout while waiting for activity drawn!"

    .line 1932
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1933
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_2

    :pswitch_7
    const-string v0, "KeyguardViewMediator#handleMessage START_KEYGUARD_EXIT_ANIM"

    .line 1914
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1916
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;

    .line 1917
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-wide v1, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->startTime:J

    iget-wide v3, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->fadeoutDuration:J

    iget-object v5, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->mApps:[Landroid/view/RemoteAnimationTarget;

    iget-object v6, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->mWallpapers:[Landroid/view/RemoteAnimationTarget;

    iget-object v7, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->mNonApps:[Landroid/view/RemoteAnimationTarget;

    iget-object v8, p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$StartKeyguardExitAnimParams;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    invoke-static/range {v0 .. v8}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$4800(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;JJ[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V

    .line 1920
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$4900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Lcom/android/systemui/classifier/FalsingCollector;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/classifier/FalsingCollector;->onSuccessfulUnlock()V

    .line 1921
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto/16 :goto_2

    .line 1910
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;

    .line 1911
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;->getCallback()Lcom/android/internal/policy/IKeyguardDismissCallback;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$DismissMessage;->getMessage()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p0, v0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$4700(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1904
    :pswitch_9
    iget-object v0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    monitor-enter v0

    .line 1905
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {v1, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$200(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1906
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$1300(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$4600(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Z)V

    .line 1907
    monitor-exit v0

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :pswitch_a
    const-string v0, "KeyguardViewMediator#handleMessage SET_OCCLUDED"

    .line 1899
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1900
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget v0, p1, Landroid/os/Message;->arg1:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {p0, v0, v1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$4500(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;ZZ)V

    .line 1901
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :pswitch_b
    const-string p1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE_DRAWING"

    .line 1894
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1895
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$4400(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 1896
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :pswitch_c
    const-string p1, "KeyguardViewMediator#handleMessage KEYGUARD_DONE"

    .line 1889
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1890
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$4300(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 1891
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :pswitch_d
    const-string v0, "KeyguardViewMediator#handleMessage NOTIFY_SCREEN_TURNING_ON"

    .line 1868
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1870
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/policy/IKeyguardDrawnCallback;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$3900(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Lcom/android/internal/policy/IKeyguardDrawnCallback;)V

    .line 1871
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    .line 1865
    :pswitch_e
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$3800(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    goto :goto_2

    :pswitch_f
    const-string p1, "KeyguardViewMediator#handleMessage VERIFY_UNLOCK"

    .line 1857
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 1858
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$3600(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    .line 1859
    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    .line 1854
    :pswitch_10
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$3500(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    goto :goto_2

    .line 1851
    :pswitch_11
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    invoke-static {p0}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$3400(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;)V

    goto :goto_2

    .line 1848
    :pswitch_12
    iget-object p0, p0, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator$6;->this$0:Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    invoke-static {p0, p1}, Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;->access$3300(Lcom/android/systemui/keyguard/SafeUIKeyguardViewMediator;Landroid/os/Bundle;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
